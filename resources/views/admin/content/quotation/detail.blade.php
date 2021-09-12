<div class="container-fluid">
    <div class="row">
        <div class="col-md-1 text-center">
            Image
        </div>
        <div class="col-md-3 text-center">
            Product name
        </div>
        <div class="col-md-2 text-center">
            Dimension
        </div>
        <div class="col-md-1 text-center">
            Unit
        </div>
        <div class="col-md-1 text-center">
            Quan
        </div>
        <div class="col-md-2 text-center">
            Price
        </div>
        <div class="col-md-2 text-center">
            Line Total
        </div>
    </div>
    <?php $subTotal = 0;?>
    @foreach($result as $item)
    <?php 
        $subTotal += (double) $item['lineTotal'];
        if ($item['quantity'] == 0) {
            $item['quantity'] = 1;
        }
    ?>

    <div id="{{$item['product_id']}}" class="row items mb-3">
        <div class="col-md-1 px-1 text-center"> 
            <img class="w-50 img-rounded" src="{{$item['img']}}" />
        </div>
        <div class="col-md-3 px-1 justify-content-center align-self-center">
            <input data-id="{{$item['product_id']}}" type="text" class="name form-control list-ajax" value="{{$item['name']}}">
        </div>
        <div class="col-md-2 px-1 justify-content-center align-self-center">
            <input data-id="{{$item['product_id']}}" type="text" class="dimension form-control list-ajax" value="{{$item['dimension']}}">
        </div>
        <div class="col-md-1 px-1 justify-content-center align-self-center">
            <input data-id="{{$item['product_id']}}" type="text" class="unit form-control text-center list-ajax" value="{{$item['unit']}}">
        </div>
        <div class="col-md-1 px-1 justify-content-center align-self-center">
            <input data-id="{{$item['product_id']}}" type="number" class="quantity form-control text-right list-ajax" value="{{$item['quantity']}}">
        </div>
        <div class="col-md-2 px-1 justify-content-center align-self-center">
            <input data-id="{{$item['product_id']}}" type="text" class="price form-control text-right list-ajax" value="<?php echo number_format($item['price'],0,',','.')?>">
        </div>
        <div class="col-md-2 px-1 justify-content-center align-self-center">
            <input disabled data-id="{{$item['product_id']}}" type="text" class="lineTotal form-control float-left w-75 text-right list-ajax" value="<?php echo number_format($item['lineTotal'],0,',','.')?>">
            <span data-id="{{$item['product_id']}}" class="delete-line text-danger" style="line-height: 2.3rem; margin-left: 5px; cursor:pointer;"><i class="fas fa-trash fa-sm"></i></span>
        </div>
    </div>
    @endforeach
    <div class="row">
        <div class="col-md-10 text-right px-1">
            Sub Total:
        </div>
        <div class="col-md-2 px-1">
            <?php echo number_format($subTotal,0,',','.');?>
        </div>
    </div>
    <div class="row">
        <div class="col-md-10 text-right px-1">
            Tax {{$taxCode.'%'}}:
        </div>
        <div class="col-md-2 px-1">
            <?php 
                $value = $subTotal * $taxCode / 100;
                echo number_format($value,0,',','.');
            ?>
        </div>
    </div>
    <div class="row">
        <div class="col-md-10 text-right px-1">
            Total:
        </div>
        <div class="col-md-2 px-1">
            <?php 
                $total = $subTotal + $value;
                echo number_format($total,0,',','.');
            ?>
        </div>
    </div>
</div>