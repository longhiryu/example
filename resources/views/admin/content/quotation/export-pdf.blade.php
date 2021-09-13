<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Export PDF</title>
    <style>
        body, h2 {font-family: DejaVu Sans;}
        .wraper{width: 100%; margin: auto;}
        .header>.info{font-size: 0.6rem; margin: 10px 0 0 10px}
        .fullwidth{width: 100%;}
        .text-center{text-align: center}
        .text-right{text-align: right}
        .info,.logo{float: left;}
        .fly{float: right;}
        .clearfix{
            content: "";
            clear: both;
        }
        h3{font-weight: 400; font-size: 1.5rem}
        .partner{font-size: 0.7rem; width: 70%; float: left;}
        .version{font-size: 0.7rem; width: 30%; float: right; text-align: right}
        .styled-table {
            border-collapse: collapse;
            font-size: 0.7em;
            font-family: DejaVu Sans;
            width: 100%;
        }
        .styled-table thead tr {
            background-color: #f7941d;
            color: #ffffff;
            text-align: center;
        }
        .styled-table th,
        .styled-table td {
            padding: 5px 5px;
        }
        .styled-table tbody tr {
            border-bottom: 1px solid #dddddd;
        }

        .styled-table tbody tr:nth-of-type(even) {
            background-color: #f3f3f3;
        }

        .styled-table tbody tr:last-of-type {
            border-bottom: 2px solid #f7941d;
        }
        .styled-table tbody tr.active-row {
            font-weight: bold;
            color: #f7941d;
        }
        .note{
            width: 60%;
            float: left;
            font-size: 0.7em;
            font-family: DejaVu Sans;
        }
        .sale{
            width: 40%;
            float: right;
            font-size: 0.7em;
            font-family: DejaVu Sans;
            text-align: right;
        }
        .bold{
            font-weight: 700;
        }
        hr {
            border: 1px solid #f7941d;
        }
    </style>
</head>
<body>
    <div class="wraper">
        <div class="header fullwidth">
            <div class="logo">
                <img src="{{asset('quotation/logo.png')}}" width="80" height="80" />
            </div>
            <div class="info">
                <strong>CÔNG TY CỔ PHẦN TRE FURNITURE</strong><br />
                    14 Lê Quang Chiểu, Phường Hiệp Tân, Quận Tân Phú, Thành phố Hồ Chí Minh<br />
                    Website: www.tre-furniture.com – Email: info@tre-furniture.com<br />
                    Hotline: 090 442 3986
                                        
            </div>
            <div class="fly">
                <img src="{{asset('quotation/fly.png')}}" width="60" height="60" />
            </div>
        </div><!-- col-12-->

        <div class="clearfix"></div>

        <div class="fullwidth text-center title">
            <h2>BẢNG BÁO GIÁ</h2>
        </div>

        <div class="clearfix"></div>

        <div class="partner">
            Khách hàng: <strong>{{$contact->fullname}}</strong><br />
            Email: {{$contact->email}}<br />
            Mobile: {{$contact->tel}}<br />
            Đơn vị: {{$partner->shortName}}<br />
            Địa chỉ: {{$partner->address}}<br />
        </div>

        <div class="version">
            SKU: <strong>{{$quotation->sku}}</strong><br />
            Version: <strong>{{$quotation->version}}</strong><br />
            Ngày tạo: {{date("d/m/Y",strtotime($quotation->created_at))}}<br />
            Ngày cập nhật: {{date("d/m/Y",strtotime($quotation->updated_at))}}<br />
        </div>

        <div class="clearfix"></div>

        <table class="styled-table">
            <thead>
                <tr>
                    <th>STT</th>
                    <th>Hình ảnh</th>
                    <th>Mã SP</th>
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
                    <td class="text-center"><img src="{{$value->img}}" width="75" height="75" /></td>
                    <td>{{$value->sku}}</td>
                    <td style="width: 30%">
                        {{$value->name}}
                        <div class="clearfix"></div>
                        {{$value->dimension}}
                    </td>
                    <td class="text-center">{{$value->unit}}</td>
                    <td class="text-center">{{$value->quantity}}</td>
                    <td class="text-right">{{number_format($value->price,0,',','.')}}</td>
                    <td class="text-right">{{number_format($value->lineTotal,0,',','.')}}</td>
                </tr>
                @php
                    $n++;
                @endphp
                @endforeach
                <tr>
                    <td colspan="7" class="text-right bold">Thành tiền:</td>
                    <td class="text-right">{{number_format($quotation->subTotal,0,',','.')}}</td>
                </tr>
                <tr>
                    <td colspan="7" class="text-right bold">Thuế:</td>
                    <td class="text-right">
                        <?php echo number_format($quotation->subTotal * 10 / 100,0,',','.');?>
                    </td>
                </tr>
                <tr>
                    <td colspan="7" class="text-right bold">Tổng cộng:</td>
                    <td class="text-right">{{number_format($quotation->total,0,',','.')}}</td>
                </tr>
                <!-- and so on... -->
            </tbody>
            
        </table>

        <div class="note">
               {!! $quotation->note !!} 
        </div>

        <div class="sale">
            <p>
                Người báo giá: <strong>{{ Auth::user()->name }}</strong><br />
                Điện thoại: {{ Auth::user()->phone }}<br />
                Email: {{ Auth::user()->email }}<br /> 
            </p>
            
        </div>
    </div>
</body>

</html>