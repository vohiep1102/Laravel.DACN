
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Invoice</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.7 -->
    <link rel="stylesheet" href="{{ asset('admin/bower_components/bootstrap/dist/css/bootstrap.min.css') }}">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="{{  asset('admin/bower_components/font-awesome/css/font-awesome.min.css') }}">
    <!-- Ionicons -->
    <link rel="stylesheet" href="{{  asset('admin/bower_components/Ionicons/css/ionicons.min.css') }}">
    <!-- Theme style -->
    <link rel="stylesheet" href="{{  asset('admin/dist/css/AdminLTE.min.css') }}">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- Google Font -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body onload="window.print();">
<div class="wrapper">
    <!-- Main content -->
    <section class="invoice">
        <!-- title row -->
        <div class="row">
            <div class="col-xs-12">
                <h2 class="page-header">
                    <i class="fa fa-globe"></i> Shop quần áo
                    <small class="pull-right">Date: {{ date('Y-m-d') }}</small>
                </h2>
            </div>
            <!-- /.col -->
        </div>
        <!-- info row -->
        <div class="row invoice-info">
            <div class="col-sm-4 invoice-col">
                Địa chỉ
                <address>
                    <strong>Võ Hiệp Shop.</strong><br>
                    Thủ Dầu Một<br>
                    <br>
                    Phone: 0926811099 <br>
                    Email: vohiepshop@gmail.com
                </address>
            </div>
            <!-- /.col -->
            <div class="col-sm-4 invoice-col">
                Khách hàng
                <address>
                    <strong>{{ $transaction->tst_name }}</strong><br>
                    {{ $transaction->tst_address }}<br>
                    Phone: {{ $transaction->tst_phone }}<br>
                    Email: {{ $transaction->tst_email }}
                </address>
            </div>
            <!-- /.col -->
            <div class="col-sm-4 invoice-col">
                <b>Mã giao dịch {{ $transaction->tst_code }}</b><br>
                <br>
                <b>Ngày thanh toán:</b> {{ date('Y-m-d', strtotime($transaction->created_at)) }}<br>
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->

        <!-- Table row -->
        <div class="row">
            <div class="col-xs-12 table-responsive">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>STT</th>
                            <th>Tên sản phẩm</th>
                            <th>Giá</th>
                            <th>Số lượng</th>
                            <th>Tổng tiền</th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach($orders as $item)
                            <tr>
                                <td style="vertical-align: middle;">#{{ $item->id }}.</td>
                                <td style="vertical-align: middle;">
                                    <a href="">{{ $item->product->pro_name ?? "[N\A]" }}</a>
                                    <br>
                                    <span>
                                        @if($item->od_size)
                                            Size : {{ $item->od_size }}
                                        @endif
                                    </span>
                                        <br>
                                        <span>
                                        @if($item->od_color)
                                            Color : {{ $item->od_color }}
                                        @endif
                                    </span>
                                        <br>
                                        <span>
                                        @if($item->od_color)
                                            Giới tính : {{ $item->od_gender == 1 ? 'Nam' :  'Nữ' }}
                                        @endif
                                    </span>
                                </td>
                                <td style="vertical-align: middle;">{{ number_format($item->od_price,0,',','.') }} đ</td>
                                <td style="vertical-align: middle;">{{ $item->od_qty }}</td>
                                <td style="vertical-align: middle;">{{ number_format($item->od_price * $item->od_qty,0,',','.') }} đ</td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->

        <div class="row">
            <!-- accepted payments column -->
            <div class="col-xs-6">
                <p class="lead">Hình thức thanh toán:</p>
                @if ($transaction->payment)
                    <ul>
                        <li>Ngân hàng: {{ $transaction->payment->p_code_bank }}</li>
                        <li>Mã thanh toán: {{ $transaction->p_code_vnpay }}</li>
                        <li>Tổng tiền:  {{ number_format($transaction->payment->p_money ,0,',','.') }} VNĐ</li>
                        <li>Nội dung: {{ $transaction->payment->p_note }}</li>
                        <li>Thời gian: {{ date('Y-m-d H:i', strtotime($transaction->payment->p_time)) }}</li>
                    </ul>
                @else
                    <p class="text-muted well well-sm no-shadow" style="margin-top: 10px;">
                        Thanh toán khi nhận hàng
                    </p>
                @endif

            </div>
            <!-- /.col -->
            <div class="col-xs-6">
                <p class="lead">Giá trị hóa đơn</p>

                <div class="table-responsive">
                    <table class="table">
                        <tr>
                            <th style="width:50%">Tổng tiền:</th>
                            <td>{{ number_format($transaction->tst_total_money,0,',','.') }} đ</td>
                        </tr>

                    </table>
                </div>
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->
    </section>
    <!-- /.content -->
</div>
<!-- ./wrapper -->
</body>
</html>
