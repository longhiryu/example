<?php

namespace App\Http\Controllers;

use App\Models\Contact;
use App\Models\Partner;
use App\Models\Product;
use App\Models\Project;
use App\Models\Quotation;
use App\Models\QuotationDetail;
use App\Models\User;
use Config;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class QuotationController extends Controller
{
    public $list = 'danhsach'; // Name of Session list
    public $taxCode = 'tax'; // Name of Session list
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.content.quotation.list');
    }

    public function getQuotationByPartner($partner)
    {
        $data = Quotation::where('partner_id',$partner->id)->get();
        return $data;
    }

    public function getQuotationBtProject($project)
    {
        $data = Quotation::where('project_id',$project->id);
        return $data;
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {   
 
        // Kiểm tra phân quyền
        $this->authorize('create',Quotation::class);    

        return view('admin.content.quotation.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {   
        // Kiểm tra phân quyền
        $this->authorize('create',Quotation::class);    

        // Get data
        $quotation = $request->all();   
        
        unset($quotation['submit']);
        unset($quotation['_method']);
        unset($quotation['_token']);

        //get data from session
        $details = Session::get($this->list);
        $taxCode = Session::get($this->taxCode);

        // Tính toán Subtotal
        $quotation['subTotal'] = 0;
        foreach ($details as $value) {
            $quotation['subTotal'] += $value['lineTotal']; 
        }

        //Tính toán Total
        $quotation['total'] = $quotation['subTotal'] * $taxCode / 100 + $quotation['subTotal'];
        
        // Tạo mới 
        Quotation::create($quotation);
        $id = Quotation::all()->last()->id; // to update in quoatation detail 

        // add quotation id to details and create
        foreach ($details as &$value) {
            $value['quotation_id'] = (int)$id;
            QuotationDetail::create($value);
        }
        
        // Clear session
        $this->clearList(); 

        return $this->applyBack(null);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        // Kiểm tra phân quyền
        $quotation = Quotation::find($id);
        $this->authorize('view',$quotation);

        // get quotation data from DB
        $quotation = Quotation::find($id);
        //get detail of quotation
        $detail = QuotationDetail::select('*')->where('quotation_id',$id)->get();
        //get contact of quotation
        $contact = Contact::find($quotation->contact_id);
        //get partner of quotation
        $partner = Partner::find($quotation->partner_id);
        //get author
        $author = User::find($quotation->author);

        return view('admin.content.quotation.show',compact('quotation','detail','contact','partner','author'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $quotation = Quotation::find($id);
        $this->authorize('update',$quotation);

        $data = Quotation::find($id);
        $detail = QuotationDetail::select('*')->where('quotation_id',$id)->get()->toArray(); 
        Session::put($this->list,$detail);
        Session::put($this->taxCode,$data->tax);
        $contact = Contact::find($data->contact_id);
        $partner = Partner::find($data->partner_id);
        $project = Project::find($data->project_id);
        return view('admin.content.quotation.edit',compact('data','detail','contact','partner','project'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $quotation = Quotation::find($id);
        $this->authorize('update',$quotation);

        $quotation = $request->all();
        
        unset($quotation['submit']);
        unset($quotation['_method']);
        unset($quotation['_token']);
        unset($quotation['author']);    // Chặn update author

        //get data from session
        $details = Session::get($this->list);
        $taxCode = Session::get($this->taxCode);

        // Chặn update 
        $check = Quotation::find($id);
            // Kiểm tra locked
            if($check->locked == 0):
                // Tính toán  subTotal và Total
                $quotation['subTotal'] = 0;
                foreach ($details as $value) {
                    $quotation['subTotal'] += $value['lineTotal']; 
                }
                $quotation['total'] = $quotation['subTotal'] * $taxCode / 100 + $quotation['subTotal'];

                // Lock Quotation lại 
                $quotation['locked'] = 1;

                // Update
                Quotation::where('id',$id)->update($quotation);

                // Delete những line cũ thuộc Quotation 
                QuotationDetail::whereIn('quotation_id',[$id])->delete();

                // Add dữ liệu mới vào Quotation detail
                foreach ($details as &$value) {
                    $value['quotation_id'] = (int)$id;  // id của Quotation
                    QuotationDetail::create($value);
                }
                
                // Clear session
                $this->clearList(); 
            endif;

        return $this->applyBack($id);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id,Quotation $quotation)
    {
        $this->authorize('delete',$quotation);
        //Quotation::destroy($id);
    }

    public function quotationApprove($id,$user_id)
    {
        Quotation::where('id',$id)->update(['approved' => $user_id]);
        return true;
    }

    public function removeApprove($id)
    {
        Quotation::where('id',$id)->update(['approved' => 0]);
        return true;
    }

    public function unlockQuotation($id)
    {
        Quotation::where('id',$id)->update(['locked' => 0]);
        return true;
    }

    public function addItem($id)
    {
        // Kiểm tra Session danh sách đã tồn tại hay chưa
        if (!Session::exists($this->list)) {
            $data = array();
        }else{
            $data = Session::get($this->list);
        }

        // kiểm tra đối tượng đã tồn tại trong mảng hay chưa
        $flag = true;   
        foreach ($data as $item) {
            if ($item['product_id'] == $id) {
                $flag = false;
            }
        }
        
        // Nếu id chưa tồn tại thì lấy dữ liệu và thêm vào mảng
        if ($flag === true) {   
            $product = Product::select('*')->where('id',$id)->get()->toArray();
            $product[0]['product_id']= $product[0]['id']; unset($product[0]['id']);
            $product[0]['quantity']= 1;
            $product[0]['lineTotal']= $product[0]['quantity'] * $product[0]['price'];
            array_push($data,$product[0]);
        }

        // Cập nhật danh sách
        Session::put($this->list,$data);
        Session::put($this->taxCode,10);

        return $this-> returnList();
    }

    public function updateItem($id,$name,$value)
    {
        $data = Session::get($this->list);

        foreach ($data as &$item) {
            if ($item['product_id'] == $id) {
                $item[$name] = $value;
                $item['lineTotal'] = (int)$item['quantity'] * (double)$item['price'];
            }
        }

        // Cập nhật danh sách
        Session::put($this->list,$data);

        return $this-> returnList();

    }

    public function deleteItem($id)
    {
        $data = Session::get($this->list);
        foreach ($data as $key => $value) {
            if($value['product_id'] == $id){
                unset($data[$key]);
            }
        }
        // Cập nhật danh sách
        Session::put($this->list,$data);

        return $this-> returnList();
    }

    public function updateList()
    {
        if (!Session::exists($this->list)) {
            return null;
        }else{
            return $this-> returnList();
        }
        
    }

    public function updateTax($tax)
    {
        Session::put($this->taxCode,$tax);
        return $this-> returnList();
    }

    public function clearList()
    {
        Session::forget($this->list,$this->taxCode);
    }

    public function returnList()
    {
        $taxCode = Session::get($this->taxCode);
        $result = Session::get($this->list);
        $view = view('admin.content.quotation.detail',compact('result','taxCode'));
        return $view;
    }

    public function applyBack($id = null)
    {
        if ($id != null) {
            return redirect()->back();
        }else{
            $id = Quotation::all()->last()->id;
            return redirect()->route('quotations.edit', $id);
        }
    }


    public function searchQuotation($text)
    {
        $result = Quotation::select('name','id')->where('name', 'LIKE', "%{$text}%")->get(); 
        return response()->json($result);
    }

}
