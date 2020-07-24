
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <!-- 页面meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>更新商品</title>
    <meta name="description" content="AdminLTE2定制版">
    <meta name="keywords" content="AdminLTE2定制版">

    <!-- Tell the browser to be responsive to screen width -->
    <meta
            content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no"
            name="viewport">

    <link rel="stylesheet" href="../css/file.css">
    <link rel="stylesheet"
          href="../plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet"
          href="../plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet"
          href="../plugins/ionicons/css/ionicons.min.css">
    <link rel="stylesheet"
          href="../plugins/iCheck/square/blue.css">
    <link rel="stylesheet"
          href="../plugins/morris/morris.css">
    <link rel="stylesheet"
          href="../plugins/jvectormap/jquery-jvectormap-1.2.2.css">
    <link rel="stylesheet"
          href="../plugins/datepicker/datepicker3.css">
    <link rel="stylesheet"
          href="../plugins/daterangepicker/daterangepicker.css">
    <link rel="stylesheet"
          href="../plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
    <link rel="stylesheet"
          href="../plugins/datatables/dataTables.bootstrap.css">
    <link rel="stylesheet"
          href="../plugins/treeTable/jquery.treetable(1).css">
    <link rel="stylesheet"
          href="../plugins/treeTable/jquery.treetable.theme.default.css">
    <link rel="stylesheet"
          href="../plugins/select2/select2.css">
    <link rel="stylesheet"
          href="../plugins/colorpicker/bootstrap-colorpicker.min.css">
    <link rel="stylesheet"
          href="../plugins/bootstrap-markdown/css/bootstrap-markdown.min.css">
    <link rel="stylesheet"
          href="../plugins/adminLTE/css/AdminLTE.css">
    <link rel="stylesheet"
          href="../plugins/adminLTE/css/skins/_all-skins.min.css">
    <link rel="stylesheet"
          href="../css/style.css">
    <link rel="stylesheet"
          href="../plugins/ionslider/ion.rangeSlider.css">
    <link rel="stylesheet"
          href="../plugins/ionslider/ion.rangeSlider.skinNice.css">
    <link rel="stylesheet"
          href="../plugins/bootstrap-slider/slider.css">
    <link rel="stylesheet"
          href="../plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.css">

    <style type="text/css">
        .content-wrapper, .right-side, .main-footer {
            -webkit-transition: -webkit-transform 0.3s ease-in-out, margin 0.3s ease-in-out;
            -moz-transition: -moz-transform 0.3s ease-in-out, margin 0.3s ease-in-out;
            -o-transition: -o-transform 0.3s ease-in-out, margin 0.3s ease-in-out;
            transition: transform 0.3s ease-in-out, margin 0.3s ease-in-out;
            margin-left: 0px;
            z-index: 820;
        }
        .data-type .title {
            text-align: center;
            background: white;
        }
        .form-control {
            display: block;
            width: 100%;
            height: 34px;
            padding: 6px 12px;
            font-size: 14px;
            line-height: 1.42857143;
            color: #555;
            background-color: #fff;
            background-image: none;
            border: 1px solid #ccc;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            box-shadow: inset 0 0px 0px rgba(0,0,0,.075);
            -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
        }
        .panel-default>.panel-heading {
            color: #333;
            background-color: white;
            border-color: white;
        }
        .data-type .title {
            line-height: 34px;
            border-right: 0px solid #d4d4d4;
        }
        .bg-maroon {
            background-color: blueviolet !important;
        }
        .btn {
            display: inline-block;
            padding: 6px 12px;
            margin-bottom: 4px;
            font-size: 12px;
            font-weight: 400;
            line-height: 1.42857143;
            text-align: center;
            white-space: nowrap;
            vertical-align: middle;
            -ms-touch-action: manipulation;
            touch-action: manipulation;
            cursor: pointer;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
            background-image: none;
            border: 1px solid transparent;
            border-radius: 9px;
        }
        .data-type .title, .data-type .data {
            padding: 3px 12px;
            border-top: 0px solid #d4d4d4;
            overflow: hidden;
            height: 42px;
        }
        .form-control[disabled], .form-control[readonly], fieldset[disabled] .form-control {
            background-color: white;
            opacity: 1;
        }
    </style>
</head>

<body class="hold-transition skin-purple sidebar-mini">

<div class="wrapper">


    <!-- 内容区域 -->
    <div class="content-wrapper">

        <!-- 内容头部 -->
        <section class="content-header">
            <h1>
                机型管理 <small>机型表单</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i
                        class="fa fa-dashboard"></i> 首页</a></li>
                <li><a
                        href="#">机型管理</a></li>
                <li class="active">机型表单</li>
            </ol>
        </section>
        <!-- 内容头部 /-->

        <form action="${pageContext.request.contextPath}/user/update.do"
              method="post">
            <!-- 正文区域 -->
            <section class="content"> <!--产品信息-->

                <div class="panel panel-default">
                    <div class="panel-heading">机型信息</div>
                    <div class="row data-type">
                        <div class="col-md-2 title">id</div>
                        <div class="col-md-4 data">
                            <input type="text" class="form-control" name="id"
                                   placeholder="id" value="${user.id}" readonly="readonly">
                        </div>

                        <div class="col-md-2 title">机型名称</div>
                        <div class="col-md-4 data">
                            <input type="text" class="form-control" name="mobileName"
                                   placeholder="机型名称" value="${user.username}">
                        </div>
                        <div class="col-md-2 title">价格</div>
                        <div class="col-md-4 data">
                            <input type="text" class="form-control" name="price"
                                   placeholder="价格" value="${user.password}">
                        </div>

                        <div class="col-md-2 title">处理器</div>
                        <div class="col-md-4 data">
                            <input type="text" class="form-control" name="CPU"
                                   placeholder="处理器" value="${user.password}">
                        </div>

                        <div class="col-md-2 title">屏幕</div>
                        <div class="col-md-4 data">
                            <input type="text" class="form-control" name="screen"
                                   placeholder="屏幕" value="${user.password}">
                        </div>

                        <div class="col-md-2 title">规格</div>
                        <div class="col-md-4 data">
                            <input type="text" class="form-control" name="spec"
                                   placeholder="规格" value="${user.password}">
                        </div>

                        <div class="col-md-2 title">商家</div>
                        <div class="col-md-4 data">
                            <input type="text" class="form-control" name="ownerId"
                                   placeholder="商家" value="${user.password}">
                        </div>
                        <div class="col-md-2 title">图片路径</div>
                        <div class="col-md-4 data">
                            <input type="text" class="form-control" name="ownerId"
                                   placeholder="图片路径" value="${user.password}">
                        </div>
                        <div class="file"><input type="file"></div>


                    </div>
                </div>
                <!--订单信息/--> <!--工具栏-->
                <div class="box-tools text-center">
                    <button type="submit" class="btn bg-maroon">保存</button>
                    <button type="button" class="btn bg-default"
                            onclick="history.back(-1);">返回</button>
                </div>
                <!--工具栏/--> </section>
            <!-- 正文区域 /-->
        </form>
    </div>
    <!-- 内容区域 /-->



</div>
</body>

</html>
