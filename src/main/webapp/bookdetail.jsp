<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title></title>
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
        <jsp:include page="top.jsp"></jsp:include>

        <header id="gtco-header" class="gtco-cover gtco-cover-sm" role="banner"
                style="background-image: url(images/img_4.jpg)">
            <div class="overlay"></div>
            <div class="gtco-container">
                <div class="row">
                    <div class="col-md-12 col-md-offset-0 text-left">
                        <div class="row row-mt-15em">

                            <div class="col-md-7 mt-text animate-box" data-animate-effect="fadeInUp">
                                <span class="intro-text-small"></span>
                                <h1>图书详情</h1>
                            </div>

                        </div>

                    </div>
                </div>
            </div>
        </header>


        <div class="gtco-section border-bottom">
            <div class="gtco-container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="col-md-6 animate-box">
                            <h3>Get In Touch</h3>
                            <form action="#">
                                <div class="row form-group">
                                    <div class="col-md-12" style="display: none">
                                        ID
                                        <input value="" id="bookid">
                                    </div>

                                </div>
                                <div class="row form-group">
                                    <div class="col-md-12">
                                        书名：
                                        <h1 id="name"></h1>
                                    </div>

                                </div>
                                <div class="row form-group">
                                    <div class="col-md-12">
                                        分类：
                                        <h1 id="type"></h1>
                                    </div>

                                </div>

                                <div class="row form-group">
                                    <div class="col-md-12">
                                        作者：
                                        <h1 id="author"></h1>
                                    </div>
                                </div>

                                <div class="row form-group">
                                    <div class="col-md-12">
                                        ISBN：
                                        <h1 id="ISBN"></h1>
                                    </div>
                                </div>

                                <div class="row form-group">
                                    <div class="col-md-12">
                                        译者：
                                        <h1 id="translator"></h1>
                                    </div>
                                </div>
                                <div class="row form-group">
                                    <div class="col-md-12">
                                        语种：
                                        <h1 id="language"></h1>
                                    </div>
                                </div>
                                <div class="row form-group">
                                    <div class="col-md-12">
                                        摘要：
                                        <h1 id="summary"></h1>
                                    </div>
                                </div>
                                <div class="row form-group">
                                    <div class="col-md-12">
                                        馆藏地：
                                        <h1 id="address"></h1>
                                    </div>
                                </div>
                                <div class="row form-group">
                                    <div class="col-md-12">
                                        价格：
                                        <h1 id="price"></h1>
                                    </div>
                                </div>
                                <div class="row form-group">
                                    <div class="col-md-12">
                                        总数量：
                                        <h1 id="count"></h1>
                                    </div>
                                </div>
                                <div class="row form-group">
                                    <div class="col-md-12">
                                        剩余数量：
                                        <h1 id="remainingcount"></h1>
                                    </div>
                                </div>
                                <div class="row form-group">
                                    <div class="col-md-12">
                                        创建时间：
                                        <h1 id="createtime"></h1>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <input type="button" id="borrowingbookbutton" value="借阅" class="btn btn-primary">
                                </div>

                            </form>
                        </div>
                        <div class="col-md-5 col-md-push-1 animate-box">

                            <div class="gtco-contact-info">
                                <h3>图片</h3>
                                <img id="bookimage" src="">
                            </div>


                        </div>
                    </div>
                </div>
            </div>
        </div>

        <footer id="gtco-footer" role="contentinfo">
            <div class="gtco-container">
                <div class="row row-p	b-md">

                    <div class="col-md-4">
                        <div class="gtco-widget">
                            <h3>About <span class="footer-logo">Splash<span>.<span></span></h3>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore eos molestias quod sint
                                ipsum possimus temporibus officia iste perspiciatis consectetur in fugiat repudiandae
                                cum. Totam cupiditate nostrum ut neque ab?</p>
                        </div>
                    </div>

                    <div class="col-md-4 col-md-push-1">
                        <div class="gtco-widget">
                            <h3>Links</h3>
                            <ul class="gtco-footer-links">
                                <li><a href="#">Knowledge Base</a></li>
                                <li><a href="#">Career</a></li>
                                <li><a href="#">Press</a></li>
                                <li><a href="#">Terms of services</a></li>
                                <li><a href="#">Privacy Policy</a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="gtco-widget">
                            <h3>Get In Touch</h3>
                            <ul class="gtco-quick-contact">
                                <li><a href="#"><i class="icon-phone"></i> +1 234 567 890</a></li>
                                <li><a href="#"><i class="icon-mail2"></i> info@</a></li>
                                <li><a href="#"><i class="icon-chat"></i> Live Chat</a></li>
                            </ul>
                        </div>
                    </div>

                </div>

                <div class="row copyright">
                    <div class="col-md-12">
                        <p class="pull-left">
                            <small class="block">Copyright &copy; 2016.Company name All rights reserved.<a
                                    target="_blank"
                                    href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></small>
                        </p>
                        <p class="pull-right">
                        <ul class="gtco-social-icons pull-right">
                            <li><a href="#"><i class="icon-twitter"></i></a></li>
                            <li><a href="#"><i class="icon-facebook"></i></a></li>
                            <li><a href="#"><i class="icon-linkedin"></i></a></li>
                            <li><a href="#"><i class="icon-dribbble"></i></a></li>
                        </ul>
                        </p>
                    </div>
                </div>

            </div>
        </footer>
    </div>

</div>

<div class="gototop js-top">
    <a href="#" class="js-gotop"><i class="icon-arrow-up"></i></a>
</div>

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
        showBookDetail();

        borrowingbook();
    })

    function showBookDetail() {

        $.ajax({

            url: "BookInfoController/showBookInfo",
            type: "post",
            data: {id: getQueryString()["id"]},
            dataType: "json",
            success: function (result) {
                $("#bookid").attr("value", result.id);
                $("#name").append(result.name);
                $("#author").append(result.author);
                $("#ISBN").append(result.isbn);
                $("#translator").append(result.translator);
                $("#language").append(result.language);
                $("#summary").append(result.summary);
                $("#type").append(result.type);
                $("#address").append(result.address);
                $("#price").append(result.price);
                $("#count").append(result.count);
                $("#remainingcount").append(result.remainingcount);
                $("#createtime").append(result.createtime);
                $("#bookimage").attr("src", imageAddress + result.image01);


            }


        });


    }


    function borrowingbook() {
        $("#borrowingbookbutton").click(function () {
            <c:if test="${sessionScope.user==null}">
            alert("请登录！")
            </c:if>
            <c:if test="${sessionScope.user!=null}">
            $.ajax({
                url: "BorrowinginfoController/createBorrowingInfo",
                type: "post",
                data: {userid:${sessionScope.user}, bookid: $("#bookid").val()},
                dataType: "json",
                success: function (result) {
                    if (result.successful) {
                        alert(result.msg);
                        location.reload();
                    } else {
                        alert(result.msg);
                    }

                }


            });
            </c:if>

        })

    }


</script>

</body>
</html>

