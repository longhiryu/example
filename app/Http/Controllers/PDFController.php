<?php
  
namespace App\Http\Controllers;


use App\Models\Quotation;
use App\Models\Contact;
use App\Models\Partner;
use App\Models\QuotationDetail;
use Illuminate\Http\Request;
use PDF;
  
class PDFController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function quotationPDF($id)    // $id of Quotation
    {
        // get quotation data from DB
        $quotation = Quotation::find($id);
        //get detail of quotation
        $detail = QuotationDetail::select('*')->where('quotation_id',$id)->get();
        //get contact of quotation
        $contact = Contact::find($quotation->contact_id);
        //get partner of quotation
        $partner = Partner::find($quotation->partner_id);
        // add to array
        $data = ['quotation' => $quotation,'detail' => $detail, 'contact' => $contact, 'partner' => $partner];
        
        $pdf = PDF::loadView('admin.content.quotation.export-pdf', $data)->setPaper('a4', 'portrait');
    
        return $pdf->download('itsolutionstuff.pdf');
    }
}