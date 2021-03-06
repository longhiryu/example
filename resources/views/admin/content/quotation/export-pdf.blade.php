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
        table {
            border-collapse: collapse;
            border-spacing: 0;
            font-size: 0.7em;
            font-family: DejaVu Sans;
            width: 100%;
        }
        table thead tr th{
            background-color: #f7941d;
            color: #ffffff;
            text-align: center;
            padding: 8px 8px;
        }

        table tbody tr:nth-of-type(even) {
            background-color: #f3f3f3;
        }

        table tbody tr td,
        table tbody tr th{
            padding: 5px 5px;
        }

        table, th, td {
            border: 1px solid black;
        }
        
        .note{
            width: 60%;
            float: right;
            font-size: 0.7em;
            font-family: DejaVu Sans;
        }
        .sale{
            width: 40%;
            float: left;
            font-size: 0.7em;
            font-family: DejaVu Sans;
            text-align: left;
        }
        .bold{
            font-weight: 700;
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
                <strong>C??NG TY C??? PH???N TRE FURNITURE</strong><br />
                    14 L?? Quang Chi???u, Ph?????ng Hi???p T??n, Qu???n T??n Ph??, Th??nh ph??? H??? Ch?? Minh<br />
                    Website: www.tre-furniture.com ??? Email: info@tre-furniture.com<br />
                    Hotline: 090 442 3986
                                        
            </div>
            <div class="fly">
                <img src="{{asset('quotation/fly.png')}}" width="60" height="60" />
            </div>
        </div><!-- col-12-->

        <div class="clearfix"></div>

        <div class="fullwidth text-center title">
            <h2>B???NG B??O GI??</h2>
            {{$quotation->name}}
        </div>

        <div class="clearfix"></div>

        <div class="partner">
            Kh??ch h??ng: <strong>{{$contact->fullname}}</strong><br />
            Email: {{$contact->email}}<br />
            Mobile: {{$contact->tel}}<br />
            ????n v???: {{$partner->shortName}}<br />
            ?????a ch???: {{$partner->address}}<br />
        </div>

        <div class="version">
            <br />
            SKU: <strong>{{$quotation->sku}}</strong><br />
            Version: <strong>{{$quotation->version}}</strong><br />
            Ng??y t???o: {{date("d/m/Y",strtotime($quotation->created_at))}}<br />
            Ng??y c???p nh???t: {{date("d/m/Y",strtotime($quotation->updated_at))}}<br />
        </div>

        <div class="clearfix"></div>

        <table class="styled-table" border="1">
            <thead>
                <tr>
                    <th>STT</th>
                    <th>H??nh ???nh</th>
                    <th>M?? t??? s???n ph???m</th>
                    <th>??VT</th>
                    <th>SL</th>
                    <th>????n gi??</th>
                    <th>Th??nh ti???n</th>
                </tr>
            </thead>
            <tbody>
                @php
                    $n = 1;
                @endphp
                @foreach($detail as $value)
                <tr>
                    <td class="text-center">{{$n}}</td>
                    <td class="text-center"><img src="{{asset($value->img)}}" width="100" /></td>
                    <td style="width: 40%">
                        {{$value->name}} - {{$value->sku}}
                        <div class="clearfix"></div>
                        K??ch th?????c: {{$value->dimension}}
                        <div class="clearfix"></div>
                        {!! $value->desc !!} 
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
                    <td colspan="6" class="text-right bold">Th??nh ti???n:</td>
                    <td class="text-right">{{number_format($quotation->subTotal,0,',','.')}}</td>
                </tr>
                <tr>
                    <td colspan="6" class="text-right bold">Thu???:</td>
                    <td class="text-right">
                        <?php echo number_format($quotation->subTotal * 10 / 100,0,',','.');?>
                    </td>
                </tr>
                <tr>
                    <td colspan="6" class="text-right bold">T???ng c???ng:</td>
                    <td class="text-right">{{number_format($quotation->total,0,',','.')}}</td>
                </tr>
                <!-- and so on... -->
            </tbody>
            
        </table>

        <div class="sale">
            <p>
                Ng?????i b??o gi??: <strong>{{ Auth::user()->name }}</strong><br />
                ??i???n tho???i: {{ Auth::user()->phone }}<br />
                Email: {{ Auth::user()->email }}<br /> 
            </p>
            
        </div>

        <div class="note">
               {!! $quotation->note !!} 
        </div>

        
    </div>
</body>

</html>