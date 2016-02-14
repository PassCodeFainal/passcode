<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

    <title>Artificial Reason</title>

    <link rel="shortcut icon" href="<%=request.getContextPath() %>/bootstrap/assets/img/favicon.png" />

    <meta name="description" content="">

    <!-- CSS -->
    <link href="<%=request.getContextPath() %>/bootstrap/assets/css/preload.css" rel="stylesheet">
    
    <!-- Compiled in vendors.js -->
    <!--
    <link href="<%=request.getContextPath() %>/bootstrap/assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/bootstrap/assets/css/bootstrap-switch.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/bootstrap/assets/css/font-awesome.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/bootstrap/assets/css/animate.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/bootstrap/assets/css/slidebars.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/bootstrap/assets/css/lightbox.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/bootstrap/assets/css/jquery.bxslider.css" rel="stylesheet" />
    <link href="<%=request.getContextPath() %>/bootstrap/assets/css/buttons.css" rel="stylesheet">
    -->

    <link href="<%=request.getContextPath() %>/bootstrap/assets/css/vendors.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/bootstrap/assets/css/syntaxhighlighter/shCore.css" rel="stylesheet" >

    <link href="<%=request.getContextPath() %>/bootstrap/assets/css/style-blue.css" rel="stylesheet" title="default">
    <link href="<%=request.getContextPath() %>/bootstrap/assets/css/width-full.css" rel="stylesheet" title="default">

    

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
        <script src="<%=request.getContextPath() %>/bootstrap/assets/js/html5shiv.min.js"></script>
        <script src="<%=request.getContextPath() %>/bootstrap/assets/js/respond.min.js"></script>
    <![endif]-->
</head>

<!-- Preloader -->
<div id="preloader">
    <div id="status">&nbsp;</div>
</div>

<body>

<jsp:include page="index/index_top.jsp"></jsp:include>



<div id="sb-site">
<div class="boxed">



<section class="carousel-section">
    <div id="carousel-example-generic" class="carousel carousel-razon slide" data-ride="carousel" data-interval="5000">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <div class="item active">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6 col-sm-7">
                            <div class="carousel-caption">
                                <div class="carousel-text">
                                   <h1 class="animated fadeInDownBig animation-delay-7 carousel-title">A template, infinite possibilities</h1>
                                   <h2 class="animated fadeInDownBig animation-delay-5  crousel-subtitle">We give you everything done, except the coffee</h2>
                                   <ul class="list-unstyled carousel-list">
                                       <li class="animated bounceInLeft animation-delay-11"><i class="fa fa-check"></i>Built with Bootstrap</li>
                                       <li class="animated bounceInLeft animation-delay-13"><i class="fa fa-check"></i>HTML5 and CSS3</li>
                                       <li class="animated bounceInLeft animation-delay-15"><i class="fa fa-check"></i>Responsive Template</li>
                                   </ul>
                                   <p class="animated fadeInUpBig animation-delay-17">Lorem ipsum dolor sit amet consectetur adipisicing elit. In rerum maxime quis tenetur dolor <span>recusandae a nulla</span> qui enim dolorem.</p>
                               </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-5 hidden-xs carousel-img-wrap">
                            <div class="carousel-img">
                                <img src="<%=request.getContextPath() %>/bootstrap/assets/img/demo/pre.png" class="img-responsive animated bounceInUp animation-delay-3" alt="Image">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6 col-sm-8">
                            <div class="carousel-caption">
                                <div class="carousel-text">
                                   <h1 class="animated fadeInDownBig animation-delay-7 carousel-title">Customization extremes</h1>
                                   <h2 class="animated fadeInDownBig animation-delay-5  crousel-subtitle">Configure your own template in few easy steps</h2>
                                   <ul class="list-unstyled carousel-list">
                                       <li class="animated bounceInLeft animation-delay-11"><i class="fa fa-check"></i>25 default colors</li>
                                       <li class="animated bounceInLeft animation-delay-13"><i class="fa fa-check"></i>Variables less for all colors</li>
                                       <li class="animated bounceInLeft animation-delay-15"><i class="fa fa-check"></i>Full width and boxed mode</li>
                                   </ul>
                                   <p class="animated fadeInUpBig animation-delay-17">Lorem ipsum dolor sit amet consectetur adipisicing elit. In rerum maxime quis tenetur dolor <span>recusandae a nulla</span> qui enim dolorem.</p>
                               </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-4 hidden-xs carousel-img-wrap">
                            <div class="carousel-img">
                                <img src="<%=request.getContextPath() %>/bootstrap/assets/img/demo/pre2.png" class="img-responsive animated bounceInUp animation-delay-3" alt="Image">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6 col-md-7 col-sm-9">
                            <div class="carousel-caption">
                                <div class="carousel-text">
                                   <h1 class="animated fadeInDownBig animation-delay-7 carousel-title">Templates for almost everything</h1>
                                   <h2 class="animated fadeInDownBig animation-delay-5  crousel-subtitle">Artificial Reason include over 80 HTML templates</h2>
                                   <ul class="list-unstyled carousel-list">
                                       <li class="animated bounceInLeft animation-delay-11"><i class="fa fa-check"></i>84 HTML Templates</li>
                                       <li class="animated bounceInLeft animation-delay-13"><i class="fa fa-check"></i>More than 50 components</li>
                                       <li class="animated bounceInLeft animation-delay-15"><i class="fa fa-check"></i>Extra CSS classes</li>
                                   </ul>
                                   <p class="animated fadeInUpBig animation-delay-17">Lorem ipsum dolor sit amet consectetur adipisicing elit. In rerum maxime quis tenetur dolor <span>recusandae a nulla</span> qui enim dolorem.</p>
                               </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-5 col-sm-3 hidden-xs carousel-img-wrap">
                            <div class="carousel-img">
                                <img src="<%=request.getContextPath() %>/bootstrap/assets/img/demo/pre3.png" class="img-responsive animated bounceInUp animation-delay-3" alt="Image">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Controls -->
        <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
        </a>
    </div>
</section> <!-- carousel -->

<section class="section-lines">
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <div class="home-devices">
                    <h3>The template for all devices</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quasi, sapiente, nam sunt rem beatae architecto cupiditate numquam consectetur dolorum aliquam suscipit adipisci expedita vel quaerat illum aperiam facere inventore officia.</p>
                    <p>Consequuntur sed ipsum eius minima eum velit soluta accusamus omnis maiores modi quae mollitia consectetur adipisci.</p>
                    <ul class="icon-devices">
                        <li class="active"><a href="#desktop" data-toggle="tab"><i class="fa fa-desktop"></i></a></li>
                        <li><a href="#laptop" data-toggle="tab"><i class="fa fa-laptop"></i></a></li>
                        <li><a href="#tablet" data-toggle="tab"><i class="fa fa-tablet"></i></a></li>
                        <li><a href="#mobile" data-toggle="tab"><i class="fa fa-mobile"></i></a></li>
                    </ul>

                </div>
            </div>
            <div class="col-md-8">
                <div class="tab-content">
                    <div class="tab-pane active" id="desktop">
                        <img src="<%=request.getContextPath() %>/bootstrap/assets/img/demo/mac.png" alt="" class="img-responsive">
                    </div>
                    <div class="tab-pane" id="laptop">
                        <img src="<%=request.getContextPath() %>/bootstrap/assets/img/demo/macpro.png" alt="" class="img-responsive">
                    </div>
                    <div class="tab-pane" id="tablet">
                        <img src="<%=request.getContextPath() %>/bootstrap/assets/img/demo/ipad.png" alt="" class="img-responsive">
                    </div>
                    <div class="tab-pane" id="mobile">
                        <img src="<%=request.getContextPath() %>/bootstrap/assets/img/demo/iphone.png" alt="" class="img-responsive">
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<div class="container">
    <section class="margin-bottom">
        <p class="lead lead-lg text-center primary-color margin-bottom">Knows the <strong>Artificial Reason</strong> and surprise yourself</p>
       <div class="row">
            <div class="col-md-6">
                <h2 class="no-margin-top">About us</h2>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa, alias, nihil molestias libero corporis perferendis a quasi at.</p>
                <p>Eos, illum, odit nulla provident sint atque quasi necessitatibus dolores voluptatibus perspiciatis aliquid tempora possimus laudantium. Blanditiis, deleniti!</p>
                <p>Saepe, laborum, eligendi vitae ad excepturi officiis vel omnis quidem et dolorum rem vero explicabo consequatur mollitia nihil!</p>
                <p>Fuga, omnis, quo, cumque, ipsa quasi facilis voluptatibus iure veniam nostrum voluptate accusantium dolore reprehenderit. Corrupti, mollitia, maiores!</p>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit ducimus, pariatur ad ipsam et quod numquam eveniet magni aspernatur.</p>

            </div>
            <div class="col-md-6">
                <div class="panel-group" id="accordion">
                  <div class="panel panel-default">
                    <div class="panel-heading panel-heading-link">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
                          <i class="fa fa-lightbulb-o"></i> Talent and creativity
                        </a>
                    </div>
                    <div id="collapseOne" class="panel-collapse collapse in">
                      <div class="panel-body">
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Obcaecati molestiae id ipsum ipsa repudiandae. Voluptatum, molestias, quas magnam repellat quos facilis sequi. Ullam optio eius deleniti dolore quasi doloribus ipsam incidunt perferendis.</p>
                        <p>Dolores, corrupti, laborum, officia sit aliquam doloremque accusantium nemo sunt veniam est incidunt perferendis minima obcaecati ex aperiam voluptatibus blanditiis eum suscipit magnam dolorum in adipisci nihil ipsam perspiciatis molestiae!</p>
                      </div>
                    </div>
                  </div>
                  <div class="panel panel-default">
                    <div class="panel-heading panel-heading-link">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" class="collapsed">
                          <i class="fa fa-desktop"></i> Design and code
                        </a>
                    </div>
                    <div id="collapseTwo" class="panel-collapse collapse">
                      <div class="panel-body">
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Suscipit dignissimos inventore cupiditate expedita saepe enim nobis nostrum? Laborum, laudantium, maiores, cupiditate, perspiciatis at ad accusamus corporis sed ipsam et velit!</p>
                        <p>Incidunt, harum itaque voluptatum asperiores recusandae explicabo maiores. Alias, quos, ex impedit at error id laborum fugit architecto qui beatae molestiae dolorum rem veritatis quia aliquam totam accusamus perferendis. Nulla!</p>
                      </div>
                    </div>
                  </div>
                  <div class="panel panel-default">
                    <div class="panel-heading panel-heading-link">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree" class="collapsed">
                          <i class="fa fa-user"></i> Quality and Support
                        </a>
                    </div>
                    <div id="collapseThree" class="panel-collapse collapse">
                      <div class="panel-body">
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia, rerum unde doloribus accusamus pariatur non expedita quibusdam velit totam obcaecati. Consequatur, deserunt, asperiores quam nisi earum voluptates animi labore tempore!</p>
                        <p>Dolorum, aliquam, totam labore saepe error a eum culpa assumenda sint laudantium ipsa iure ullam et dicta nesciunt repellendus optio voluptatibus reprehenderit odit officia fugiat necessitatibus recusandae architecto ad neque?</p>
                      </div>
                    </div>
                  </div>
                </div>
            </div>


       </div>
   </section>

  

</div>


</div> <!-- boxed -->
</div> <!-- sb-site -->

<div class="sb-slidebar sb-right">
    <div class="input-group">
        <input type="text" class="form-control" placeholder="Search...">
        <span class="input-group-btn">
            <button class="btn btn-default" type="button"><i class="fa fa-search"></i></button>
        </span>
    </div><!-- /input-group -->

    <h2 class="slidebar-header no-margin-bottom">Navigation</h2>
    <ul class="slidebar-menu">
        <li><a href="index.html">Home</a></li>
        <li><a href="portfolio_topbar.html">Portfolio</a></li>
        <li><a href="page_about3.html">About us</a></li>
        <li><a href="blog.html">Blog</a></li>
        <li><a href="page_contact.html">Contact</a></li>
    </ul>

    <h2 class="slidebar-header">Social Media</h2>
    <div class="slidebar-social-icons">
        <a href="#" class="social-icon-ar rss"><i class="fa fa-rss"></i></a>
        <a href="#" class="social-icon-ar facebook"><i class="fa fa-facebook"></i></a>
        <a href="#" class="social-icon-ar twitter"><i class="fa fa-twitter"></i></a>
        <a href="#" class="social-icon-ar pinterest"><i class="fa fa-pinterest"></i></a>
        <a href="#" class="social-icon-ar instagram"><i class="fa fa-instagram"></i></a>
        <a href="#" class="social-icon-ar wordpress"><i class="fa fa-wordpress"></i></a>
        <a href="#" class="social-icon-ar linkedin"><i class="fa fa-linkedin"></i></a>
        <a href="#" class="social-icon-ar flickr"><i class="fa fa-flickr"></i></a>
        <a href="#" class="social-icon-ar vine"><i class="fa fa-vine"></i></a>
        <a href="#" class="social-icon-ar dribbble"><i class="fa fa-dribbble"></i></a>
    </div>
</div> <!-- sb-slidebar sb-right -->
<div id="back-top">
    <a href="#header"><i class="fa fa-chevron-up"></i></a>
</div>

<!-- Scripts -->
<!-- Compiled in vendors.js -->
<!--
<script src="<%=request.getContextPath() %>/bootstrap/assets/js/jquery.min.js"></script>
<script src="<%=request.getContextPath() %>/bootstrap/assets/js/jquery.cookie.js"></script>
<script src="<%=request.getContextPath() %>/bootstrap/assets/js/imagesloaded.pkgd.min.js"></script>
<script src="<%=request.getContextPath() %>/bootstrap/assets/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath() %>/bootstrap/assets/js/bootstrap-switch.min.js"></script>
<script src="<%=request.getContextPath() %>/bootstrap/assets/js/wow.min.js"></script>
<script src="<%=request.getContextPath() %>/bootstrap/assets/js/slidebars.min.js"></script>
<script src="<%=request.getContextPath() %>/bootstrap/assets/js/jquery.bxslider.min.js"></script>
<script src="<%=request.getContextPath() %>/bootstrap/assets/js/holder.js"></script>
<script src="<%=request.getContextPath() %>/bootstrap/assets/js/buttons.js"></script>
<script src="<%=request.getContextPath() %>/bootstrap/assets/js/jquery.mixitup.min.js"></script>
<script src="<%=request.getContextPath() %>/bootstrap/assets/js/circles.min.js"></script>
<script src="<%=request.getContextPath() %>/bootstrap/assets/js/masonry.pkgd.min.js"></script>
<script src="<%=request.getContextPath() %>/bootstrap/assets/js/jquery.matchHeight-min.js"></script>
-->

<script src="<%=request.getContextPath() %>/bootstrap/assets/js/vendors.js"></script>

<!-- Syntaxhighlighter -->
<script src="<%=request.getContextPath() %>/bootstrap/assets/js/syntaxhighlighter/shCore.js"></script>
<script src="<%=request.getContextPath() %>/bootstrap/assets/js/syntaxhighlighter/shBrushXml.js"></script>
<script src="<%=request.getContextPath() %>/bootstrap/assets/js/syntaxhighlighter/shBrushJScript.js"></script>

<script src="<%=request.getContextPath() %>/bootstrap/assets/js/app.js"></script>
<script src="<%=request.getContextPath() %>/bootstrap/assets/js/index.js"></script>

<jsp:include page="index/index_bottom.jsp"></jsp:include>

</body>

</html>
