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
        <jsp:include page="top.jsp"/>

        <header id="gtco-header" class="gtco-cover gtco-cover-sm" role="banner"
                style="background-image: url(images/img_2.jpg)">
            <div class="overlay"></div>
            <div class="gtco-container">
                <div class="row">
                    <div class="col-md-12 col-md-offset-0 text-left">


                        <div class="row row-mt-15em">

                            <div class="col-md-7 mt-text animate-box" data-animate-effect="fadeInUp">

                                <h1 id="booktype">图书推荐——</h1>
                                <span class="intro-text-small">既然进来了就随便逛逛，支持搜索哦~</span>
                            </div>

                        </div>


                    </div>
                </div>
            </div>
        </header>


        <div id="gtco-features" class="border-bottom">
            <div class="gtco-container">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2 text-center gtco-heading animate-box">


                        <div class="col-md-8 col-md-offset-2">
                            <form class="form-inline">
                                <div class="col-md-8 col-sm-6">
                                    <div class="form-group">

                                        <input type="email" class="form-control" id="searchinput" placeholder="请输入书名">
                                    </div>
                                </div>
                                <div class="col-md-4 col-sm-6">
                                    <button type="button" class="btn btn-default btn-block" id="searchbutton">搜索
                                    </button>
                                </div>
                            </form>
                        </div>


                    </div>
                </div>
                <div class="row" id="booklistContent">
                    <%--  <div class="col-md-3 col-sm-6">
                          <div class="feature-center animate-box" data-animate-effect="fadeIn">
                          <span class="icon">
                              <i class="ti-vector"></i>
                          </span>
                              <h3>Pixel Perfect</h3>
                              <p>Dignissimos asperiores vitae velit veniam totam fuga molestias accusamus alias autem
                                  provident. </p>
                          </div>
                      </div>
                      <div class="col-md-3 col-sm-6">
                          <div class="feature-center animate-box" data-animate-effect="fadeIn">
                          <span class="icon">
                              <i class="ti-tablet"></i>
                          </span>
                              <h3>Fully Responsive</h3>
                              <p>Dignissimos asperiores vitae velit veniam totam fuga molestias accusamus alias autem
                                  provident. </p>
                          </div>
                      </div>
                      <div class="col-md-3 col-sm-6">
                          <div class="feature-center animate-box" data-animate-effect="fadeIn">
                          <span class="icon">
                              <i class="ti-settings"></i>
                          </span>
                              <h3>Web Development</h3>
                              <p>Dignissimos asperiores vitae velit veniam totam fuga molestias accusamus alias autem
                                  provident. </p>
                          </div>
                      </div>
                      <div class="col-md-3 col-sm-6">
                          <div class="feature-center animate-box" data-animate-effect="fadeIn">
                          <span class="icon">
                              <i class="ti-ruler-pencil"></i>
                          </span>
                              <h3>Web Design</h3>
                              <p>Dignissimos asperiores vitae velit veniam totam fuga molestias accusamus alias autem
                                  provident. </p>
                          </div>
                      </div>

                      <div class="col-md-3 col-sm-6">
                          <div class="feature-center animate-box" data-animate-effect="fadeIn">
                          <span class="icon">
                              <i class="ti-paint-roller"></i>
                          </span>
                              <h3>Accent Colours</h3>
                              <p>Dignissimos asperiores vitae velit veniam totam fuga molestias accusamus alias autem
                                  provident. </p>
                          </div>
                      </div>
                      <div class="col-md-3 col-sm-6">
                          <div class="feature-center animate-box" data-animate-effect="fadeIn">
                          <span class="icon">
                              <i class="ti-announcement"></i>
                          </span>
                              <h3>Theme Updates</h3>
                              <p>Dignissimos asperiores vitae velit veniam totam fuga molestias accusamus alias autem
                                  provident. </p>
                          </div>
                      </div>
                      <div class="col-md-3 col-sm-6">
                          <div class="feature-center animate-box" data-animate-effect="fadeIn">
                          <span class="icon">
                              <i class="ti-stats-up"></i>
                          </span>
                              <h3>Increase Earnings</h3>
                              <p>Dignissimos asperiores vitae velit veniam totam fuga molestias accusamus alias autem
                                  provident. </p>
                          </div>
                      </div>
                      <div class="col-md-3 col-sm-6">
                          <div class="feature-center animate-box" data-animate-effect="fadeIn">
                          <span class="icon">
                              <i class="ti-magnet"></i>
                          </span>
                              <h3>Passive Income</h3>
                              <p>Dignissimos asperiores vitae velit veniam totam fuga molestias accusamus alias autem
                                  provident. </p>
                          </div>
                      </div>--%>

                </div>
            </div>
        </div>

        <div id="gtco-subscribe">
            <div class="gtco-container">
                <div class="row animate-box">
                    <div class="col-md-8 col-md-offset-2 text-center gtco-heading">
                        <h2>Subscribe</h2>
                        <p>Be the first to know about the new templates.</p>
                    </div>
                </div>
                <div class="row animate-box">
                    <div class="col-md-8 col-md-offset-2">
                        <form class="form-inline">
                            <div class="col-md-6 col-sm-6">
                                <div class="form-group">
                                    <label for="email" class="sr-only">Email</label>
                                    <input type="email" class="form-control" id="email" placeholder="Your Email">
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-6">
                                <button type="submit" class="btn btn-default btn-block">Subscribe</button>
                            </div>
                        </form>
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
        showAllBook();
        searchBook();
        showBookType();

    })

    function showAllBook() {
        $.ajax({

            url: "BookInfoController/showBooksByType",
            type: "post",
            data: {type: getQueryString()["type"]},
            dataType: "json",
            success: function (result) {
                html = '';

                for (var i = 0; i < result.length; i++) {
                    html += ' <div class="col-lg-4 col-md-4 col-sm-6"  data-animate-effect="fadeIn">\n' +
                        '                        <a href="bookdetail.jsp?id=' + result[i].id + '" class="fh5co-project-item image-popup">\n' +
                        '                            <figure>\n' +
                        '                                <div class="overlay"><i class="ti-plus"></i></div>\n' +
                        '                                <img src="' + imageAddress + '' + result[i].image01 + '" alt="Image" class="img-responsive">\n' +
                        '                            </figure>\n' +
                        '                            <div class="fh5co-text">\n' +
                        '                                <h2>' + result[i].name + '</h2>\n' +
                        '                                <p>' + result[i].summary.substr(0, 40) + '....</p>\n' +
                        '                            </div>\n' +
                        '                        </a>\n' +
                        '                    </div>';


                }
                $("#booklistContent").append(html);


            }


        });


    }

    function searchBook() {
        $("#searchbutton").click(function () {
            location.href = "searchbook.jsp?name=" + $("#searchinput").val();

        })

    }

    function showBookType() {
        $("#booktype").append(getQueryString()['type'])

    }
</script>

</body>
</html>

