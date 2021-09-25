<style>
    table.quickview {
        border-collapse: collapse;
        border-spacing: 0;
        font-size: 0.9rem;
        margin: auto;
        width: 95%;
    }

    table.quickview thead tr th {
        background-color: #f7941d;
        color: #ffffff;
        text-align: center;
        padding: 8px 8px;
    }

    table.quickview tbody tr:nth-of-type(even) {
        background-color: #f3f3f3;
    }

    table.quickview tbody tr td,
    table.quickview tbody tr th {
        padding: 10px 10px;
    }

    table.quickview,
    table.quickview th,
    table.quickview td {
        border: 1px solid black;
    }

</style>


<div class="contailer-fluid">
    <div class="row">
        <div class="col-md-12 text-right">
            @can('manager')
                @if ($quotation->approved == 0)
                <button type="button" class="btn btn-primary btn-sm approve" data-url="{{route('quotations.approve',[$quotation->id,Auth::user()->id])}}">Approve</button>
                @else
                <button type="button" disabled class="btn btn-success btn-sm approve">Approved</button>
                @endif

                @if ($quotation->locked == 1)
                <button type="button" class="btn btn-danger btn-sm unlock" data-url="{{route('quotations.unlock',$quotation->id)}}">Unlock</button>
                @else
                <button type="button" disabled class="btn btn-success btn-sm unlock">Unlocked</button>
                @endif
            @endcan

            @if ($quotation->approved != 0)
            <a class="btn btn-info btn-sm" href="/admin/quotation-pdf/{{$quotation->id}}" role="button">Export PDF</a>
            @endif
        </div>
        <div class="col-md-8 mb-3 px-4">
            Khách hàng: <strong>{{$contact->fullname}}</strong><br />
            Email: {{$contact->email}}<br />
            Mobile: {{$contact->tel}}<br />
            Đơn vị: <strong>{{$partner->shortName}}</strong><br />
            Địa chỉ: {{$partner->address}}<br />
        </div>

        <div class="col-md-4 mb-3 px-4 text-right">
            <br />
            SKU: <strong>{{$quotation->sku}}</strong><br />
            Version: <strong>{{$quotation->version}}</strong><br />
            Ngày tạo: {{date("d/m/Y",strtotime($quotation->created_at))}}<br />
            Ngày cập nhật: {{date("d/m/Y",strtotime($quotation->updated_at))}}<br />
        </div>

        <table class="quickview" border="1">
            <thead>
                <tr>
                    <th>STT</th>
                    <th>Hình ảnh</th>
                    <th>Mô tả sản phẩm</th>
                    <th>ĐVT</th>
                    <th>SL</th>
                    <th>Đơn giá</th>
                    <th>Thành tiền</th>
                </tr>
            </thead>
            <tbody>
                @php
                $n = 1;
                @endphp
                @foreach($detail as $value)
                <tr>
                    <td class="text-center">{{$n}}</td>
                    <td class="text-center"><img src="{{asset($value->img)}}" width="80" /></td>
                    <td style="width: 40%">
                        <strong>{{$value->name}}</strong> - {{$value->sku}} (SKU)
                        <div class="clearfix"></div>
                        <strong>{{$value->dimension}}</strong>
                        <div class="clearfix"></div>
                        {!! $value->desc !!}
                    </td>
                    <td class="text-center">{{$value->unit}}</td>
                    <td class="text-center">{{$value->quantity}}</td>
                    <td class="text-right">
                        <strong>{{number_format($value->price,0,',','.')}}</strong>
                    </td>
                    <td class="text-right">{{number_format($value->lineTotal,0,',','.')}}</td>
                </tr>
                @php
                $n++;
                @endphp
                @endforeach
                <tr>
                    <td colspan="6" class="text-right ">Thành tiền:</td>
                    <td class="text-right font-weight-bold">{{number_format($quotation->subTotal,0,',','.')}}</td>
                </tr>
                <tr>
                    <td colspan="6" class="text-right">Thuế:</td>
                    <td class="text-right font-weight-bold">
                        <?php echo number_format($quotation->subTotal * 10 / 100,0,',','.');?>
                    </td>
                </tr>
                <tr>
                    <td colspan="6" class="text-right">Tổng cộng:</td>
                    <td class="text-right font-weight-bold">{{number_format($quotation->total,0,',','.')}}</td>
                </tr>
                <!-- and so on... -->
            </tbody>
        </table>

        <div class="col-md-4 pt-3 px-4">
            Người báo giá: <strong>{{$author->name}}</strong><br/>
            Điện thoại: <strong>{{$author->phone}}</strong><br/>
            Email: <strong>{{$author->email}}</strong><br/>
        </div>

        <div class="col-md-8 pt-3 px-4">
            {!!$quotation->note!!}
        </div>

    </div>
</div>
