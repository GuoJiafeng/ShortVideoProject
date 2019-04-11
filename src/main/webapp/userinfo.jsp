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
                                <h1>个人信息</h1>
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
                            <h1>个人信息</h1>
                            <form action="#">

                                <div class="row form-group">
                                    <div class="col-md-12">

                                        <h4>标识</h4>
                                        <input type="text" id="flag" class="form-control" disabled>
                                    </div>

                                </div>


                                <div class="row form-group">
                                    <div class="col-md-12">

                                        <h4>学号/工号</h4>
                                        <input type="text" id="stydynumber" class="form-control" disabled>
                                    </div>

                                </div>

                                <div class="row form-group">
                                    <div class="col-md-12">

                                        <h4>姓名</h4>
                                        <input type="text" id="name" class="form-control" disabled>
                                    </div>
                                </div>

                                <div class="row form-group">
                                    <div class="col-md-12">
                                        <h4>用户状态</h4>
                                        <input type="text" id="status" class="form-control" disabled>
                                    </div>
                                </div>

                                <div class="row form-group">
                                    <div class="col-md-12">
                                        <h4>身份证号</h4>
                                        <input type="text" id="idnumber" class="form-control" disabled>
                                    </div>
                                </div>
                                <h1>修改密码</h1>

                                <div class="row form-group">
                                    <div class="col-md-12">
                                        <h4>密码</h4>
                                        <input type="password" id="password" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <input type="button" id="updatePasswordButton" value="提交" class="btn btn-primary">
                                </div>

                            </form>
                        </div>
                        <div class="col-md-5 col-md-push-1 animate-box">

                            <div class="gtco-contact-info">
                                <h3>其他信息</h3>
                                <ul>
                                    <li>已经借阅图书量：<span id="alreadyborrowcount"></span></li>
                                    <li>加入时间：<span id="jointime"></span></li>
                                    <li>离开时间：<span id="leavetime"></span></li>

                                </ul>
                            </div>


                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="gtco-section border-bottom">
            <div class="gtco-container">
                <div class="row">
                    <div class="col-md-12" id="bookbrrowinginfiDIV"><h1>借阅信息</h1>


                    </div>
                </div>
            </div>
        </div>
        <%-- <div class="gtco-section border-bottom">
             <div class="gtco-container">
                 <div class="row">
                     <div class="col-md-12">
                         <div class="col-md-6 animate-box">
                             <h1>惩罚信息</h1>
                             <form action="#">
                                 <div class="row form-group">
                                     <div class="col-md-12">

                                         <h4>学号/工号</h4>
                                         <input type="text" id="name" class="form-control" placeholder="Your firstname">
                                     </div>

                                 </div>

                                 <div class="row form-group">
                                     <div class="col-md-12">

                                         <h4>姓名</h4>
                                         <input type="text" id="email" class="form-control"
                                                placeholder="Your email address">
                                     </div>
                                 </div>

                                 <div class="row form-group">
                                     <div class="col-md-12">
                                         <h4>用户状态</h4>
                                         <input type="text" id="subject" class="form-control"
                                                placeholder="Your subject of this message">
                                     </div>
                                 </div>

                                 <div class="row form-group">
                                     <div class="col-md-12">
                                         <h4>身份证号</h4>
                                         <textarea name="message" id="message" cols="30" rows="10" class="form-control"
                                                   placeholder="Write us something"></textarea>
                                     </div>
                                 </div>
                                 <div class="form-group">
                                     <input type="submit" value="Send Message" class="btn btn-primary">
                                 </div>

                             </form>
                         </div>
                         <div class="col-md-5 col-md-push-1 animate-box">

                             <div class="gtco-contact-info">
                                 <h3>Contact Information</h3>
                                 <ul>
                                     <li class="address">198 West 21th Street, <br> Suite 721 New York NY 10016</li>
                                     <li class="phone"><a href="tel://1234567920">+ 1235 2355 98</a></li>
                                     <li class="email"><a href="mailto:info@yoursite.com">info@yoursite.com</a></li>
                                     <li class="url"><a href="http://"></a></li>
                                 </ul>
                             </div>


                         </div>
                     </div>
                 </div>
             </div>
         </div>--%>

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
        showUserInfo();
        updatePassword();
        showBorrowingBookInfo();
        xujie();
    });


    function showUserInfo() {

        $.ajax({

            url: "${pageContext.request.contextPath}/UserinfoController/showUserInfo",
            type: "post",
            data: {userid:${sessionScope.user}},
            dataType: "json",
            success: function (result) {
                $("#flag").val(result.flag);
                $("#name").val(result.name);
                $("#stydynumber").val(result.stydynumber);
                $("#idnumber").val(result.idnumber);
                $("#status").val(result.status);


                $("#alreadyborrowcount").append(result.alreadyborrowcount);
                $("#jointime").append(getdate(result.jointime));
                $("#leavetime").append(getdate(result.leavetime));


            }


        });


    }

    function updatePassword() {
        $("#updatePasswordButton").click(function () {
            $.ajax({

                url: "${pageContext.request.contextPath}/UserinfoController/updataUserInfo",
                type: "post",
                data: {id:${sessionScope.user}, password: $("#password").val()},
                dataType: "json",
                success: function (result) {

                    if (result.successful) {
                        alert(result.msg);
                        location.href = 'index.jsp'
                    } else {
                        alert(result.msg);
                    }

                }


            });


        });


    }


    function showBorrowingBookInfo() {


        $.ajax({

            url: "${pageContext.request.contextPath}/BorrowinginfoController/showBoorrwoingInfoByUser",
            type: "post",
            data: {userid:${sessionScope.user}},
            dataType: "json",
            success: function (result) {
                borrowinginfolist = result;
                html = '';
                for (var i = 0; i < result.length; i++) {

                    $.ajax({
                        url: "${pageContext.request.contextPath}/BookInfoController/showBookInfo",
                        type: "post",
                        data: {id: borrowinginfolist[i].bookid},
                        dataType: "json",
                        async: false,
                        success: function (result) {
                            alert(borrowinginfolist[i].createtime)
                            html += '  <div class="col-md-6 animate-box fadeInUp animated-fast" >\n' +
                                '\n' +
                                '                            <form action="#">  <input value="' + getdate(borrowinginfolist[i].id) + '" id="id' + i + '" style="display: none">' +
                                '                                <div class="row form-group">\n' +
                                '                                    <div class="col-md-12">\n' +
                                '\n' +
                                '                                        <h4>书名</h4>\n' +
                                '                                        <input value="' + result.name + '" type="text" id="bookname" class="form-control" disabled>\n' +
                                '                                    </div>\n' +
                                '\n' +
                                '                                </div>\n' +
                                '\n' +
                                '                                <div class="row form-group">\n' +
                                '                                    <div class="col-md-12">\n' +
                                '\n' +
                                '                                        <h4>作者</h4>\n' +
                                '                                        <input value="' + result.author + '"  type="text" id="author" class="form-control" disabled>\n' +
                                '                                    </div>\n' +
                                '                                </div>\n' +
                                '\n' +
                                '                                <div class="row form-group">\n' +
                                '                                    <div class="col-md-12">\n' +
                                '                                        <h4>借书时间</h4>\n' +
                                '                                        <input value="' + getdate(borrowinginfolist[i].createtime) + '"  type="text" id="createtime" class="form-control" disabled>\n' +
                                '                                    </div>\n' +
                                '                                </div>\n' +
                                '\n' +
                                '                                <div class="row form-group">\n' +
                                '                                    <div class="col-md-12">\n' +
                                '                                        <h4>应还时间</h4>\n' +
                                '                                        <input value="' + getdate(borrowinginfolist[i].shouldtime) + '"  type="text" id="shouldtime" class="form-control" disabled>\n' +
                                '                                    </div>\n' +
                                '                                </div>\n' +
                                '                                <div class="row form-group">\n' +
                                '                                    <div class="col-md-12">\n' +
                                '                                        <h4>时间还书时间</h4>\n' +
                                '                                        <input value="' + getdate(borrowinginfolist[i].infacttime) + '"  type="text" id="infacttime" class="form-control" disabled>\n' +
                                '                                    </div>\n' +
                                '                                </div>\n' +
                                '\n' +
                                '                                <div class="form-group">\n' +
                                '                                    <input type="button" value="续命" id="xuming' + i + '"  class="btn btn-primary">\n' +
                                '                                </div>\n' +
                                '\n' +
                                '                            </form>\n' +
                                '                        </div>';


                        }


                    });


                }

                $("#bookbrrowinginfiDIV").append(html);


            }


        });
    }


    function xujie() {
        for (var i = 0; i < borrowinginfolist.length; i++) {
            (function (i) {

                $("#xuming" + i).on('click', function () {
                    $.ajax({
                        url: "${pageContext.request.contextPath}/BorrowinginfoController/updateBoorwoingInfo",
                        type: "post",
                        data: {id: $("#id" + i).val()},
                        dataType: "json",
                        success: function (result) {
                            if (result.successful) {
                                alert(result.msg)
                            } else {
                                alert(result.msg)
                            }
                        }

                    });
                });
            })(i);


        }
    }

</script>

</body>
</html>

