<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: G
  Date: 2018/1/23
  Time: 10:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>

<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Home</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content=""/>
    <meta name="keywords" content=""/>
    <meta name="author" content=""/>
    <!-- Facebook and Twitter integration -->
    <meta property="og:title" content=""/>
    <meta property="og:image" content=""/>
    <meta property="og:url" content=""/>
    <meta property="og:site_name" content=""/>
    <meta property="og:description" content=""/>
    <meta name="twitter:title" content=""/>
    <meta name="twitter:image" content=""/>
    <meta name="twitter:url" content=""/>
    <meta name="twitter:card" content=""/>

    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,700" rel="stylesheet">

    <!-- Animate.css -->
    <link rel="stylesheet" href="css/animate.css">
    <!-- Icomoon Icon Fonts-->
    <link rel="stylesheet" href="css/icomoon.css">
    <!-- Themify Icons-->
    <link rel="stylesheet" href="css/themify-icons.css">
    <!-- Bootstrap  -->
    <link rel="stylesheet" href="css/bootstrap.css">

    <!-- Magnific Popup -->
    <link rel="stylesheet" href="css/magnific-popup.css">

    <!-- Owl Carousel  -->
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">

    <!-- Theme style  -->
    <link rel="stylesheet" href="css/style.css">

    <!-- Modernizr JS -->
    <script src="js/modernizr-2.6.2.min.js"></script>
    <!-- FOR IE9 below -->
    <!--[if lt IE 9]>
    <script src="js/respond.min.js"></script>

    <![endif]-->

</head>
<body>

<div class="gtco-loader"></div>

<div id="page">


    <div class="page-inner">
        <jsp:include page="top.jsp"/>
        <header id="gtco-header" class="gtco-cover" role="banner" style="background-image: url(images/bg01.jpg)">
            <div class="overlay"></div>
            <div class="gtco-container">
                <div class="row">
                    <div class="col-md-12 col-md-offset-0 text-left">
                        <div class="row row-mt-15em">
                            <div class="col-md-7 mt-text animate-box" data-animate-effect="fadeInUp">
                                <span class="intro-text-small">欢迎来到</span>
                                <h1>精彩短视频网站</h1>
                            </div>

                        </div>


                    </div>
                </div>
            </div>
        </header>


    </div>
    <div class="gtco-section border-bottom">

        <div class="gtco-container">

            <div class="row">

                命名格式 日期 如：18-10-18 维度 :1000</br>

            </div>


            <div class="row">
                <input type="text" id="dateid">
                <input type="text" id="dimid">
                <input type="button" value="提交" id="submitid">
            </div>
        </div>

               <div class="gtco-container">
            <!-- 为 ECharts 准备一个具备大小（宽高）的 DOM -->
            <div id="main" style="width: 100%;height:600px;">

            </div>
        </div>

    </div>
</div>

<div class="gototop js-top">
    <a href="#" class="js-gotop"><i class="icon-arrow-up"></i></a>
</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/echarts/4.1.0/echarts.min.js"></script>
<!-- jQuery -->
<script src="js/jquery.min.js"></script>
<!-- jQuery Easing -->
<script src="js/jquery.easing.1.3.js"></script>
<!-- Bootstrap -->
<script src="js/bootstrap.min.js"></script>
<!-- Waypoints -->
<script src="js/jquery.waypoints.min.js"></script>
<!-- Carousel -->
<script src="js/owl.carousel.min.js"></script>
<!-- countTo -->
<script src="js/jquery.countTo.js"></script>
<!-- Magnific Popup -->
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/magnific-popup-options.js"></script>
<!-- Main -->
<script src="js/main.js"></script>
<script src="js/util.js"></script>


<script type="text/javascript">


    $(function () {


        $("#submitid").click(function () {




            console.log($("#dateid").val())

            getData();

        })


    })


    function getData() {


        $.ajax({
            url: "DimUserActiveController/showUser",
            type: "post",
            data: {day: $("#dateid").val(), dim: $("#dimid").val()},
            dataType: "json",
            success: function (result) {


                showData(result);


            }
        })



    }


    function getjson() {


        $.ajax({
            url: "DimUserActiveController/showUser",
            type: "post",
            data: {day: $("#dateid").val(), dim: $("#dimid").val()},
            dataType: "json",
            success: function (result) {


                showData(result);


            }
        })



    }


    function showData(option) {


        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main'));

        /* option = {
             "title": {
                 text: "日活信息",
                 subtext: "来自GJF"
             },
             tooltip: {
                 trigger: "axis"
             },
             legend: {
                 data: ["北京", "郑州",]
             },
             toolbox: {
                 show: true,
                 feature: {
                     mark: {show: true},
                     dataView: {show: true, readOnly: false},
                     magicType: {show: true, type: ["line", "bar"]},
                     restore: {show: true},
                     saveAsImage: {show: true}
                 }
             },
             calculable: true,
             xAxis: [
                 {
                     type: "category",
                     boundaryGap: false,
                     data: ["18-10-18", "18-10-23"]
                 }
             ],
             yAxis: [
                 {
                     type: "value",
                     axisLabel: {
                         formatter: "{value} 人"
                     }
                 }
             ],
             series: [
                 {
                     name: "北京",
                     type: "line",
                     data: [1, 2],
                 },
                 {
                     name: "郑州",
                     type: "line",
                     data: [1, 4],

                 }
             ]
         };
     */
        /*
            option = {
                "calculable": true,
                "legend": {"data": ["18-10-23"]},
                "series": [{"data": [1, 1, 3, 2], "name": "18-10-23", "type": "line"}],
                "title": {"subtext": "来自GJF", "text": "日活信息显示"},
                "toolbox": {
                    "feature": {
                        "dataView": {"readOnly": false, "show": true},
                        "magicType": {"show": true, "type": ["line", "bar"]},
                        "mark": {"show": true},
                        "restore": {"show": true},
                        "saveAsImage": {"show": true}
                    }, "show": true
                },
                "tooltip": {"trigger": "axis"},
                "xAxis": [{
                    "boundaryGap": false,
                    "data": ["115.55.38.65", "123.151.77.81", "125.46.17.59", "61.148.243.147"],
                    "type": "category"
                }],
                "yAxis": [{"axisLabel": {"formatter": "{value} 人"}, "type": "value"}]
            };*/

        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);

    }
</script>


</body>
</html>

