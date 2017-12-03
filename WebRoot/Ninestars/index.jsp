<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<!-- Bootstrap Core CSS -->
  <link href="/javaweb_project2/Ninestars/css/bootstrap.min.css" rel="stylesheet" type="text/css">

  <!-- Fonts -->
  <link href="/javaweb_project2/Ninestars/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <link href="/javaweb_project2/Ninestars/css/nivo-lightbox.css" rel="stylesheet" />
  <link href="/javaweb_project2/Ninestars/css/nivo-lightbox-theme/default/default.css" rel="stylesheet" type="text/css" />
  <link href="/javaweb_project2/Ninestars/css/animate.css" rel="stylesheet" />
  <!-- Squad theme CSS -->
  <link href="/javaweb_project2/Ninestars/css/style.css" rel="stylesheet">
  <link href="/javaweb_project2/Ninestars/color/default.css" rel="stylesheet">
  <link rel="stylesheet" href="/javaweb_project2/Ninestars/indexcss/index.css">

  </head>
  
<body data-spy="scroll">

  <div class="container">
    <ul id="gn-menu" class="gn-menu-main">
      <li class="gn-trigger">
      <a style="height:30px;"></a>
        <a class="gn-icon gn-icon-menu"><span>Menu</span></a>
        <nav class="gn-menu-wrapper">
          <div class="gn-scroller">
            <ul class="gn-menu">
              <li style="height:50px;"><a href="#about" >小米</a></li>
              <li><a href="#service" >苹果</a></li>
            </ul>
          </div>
          <!-- /gn-scroller -->
        </nav>
      </li>
      <li><a href="/javaweb_project2/Ninestars/index.jsp">回到顶部</a></li>
      <li class="hidden-xs">
        <ul class="company-social">
        <li><a href="${USER_IN_SESSION.username!=null?'/javaweb_project2/userManage/index.jsp':'/javaweb_project2/login/login.jsp'}" id="loginBtnC" onclick="loginClick()">${USER_IN_SESSION.username!=null?USER_IN_SESSION.username:'登录'}</a></li>
          
        </ul>
      </li>
    </ul>
  </div>

  <!-- Section: intro -->
  <section id="intro" class="intro">
    <div class="slogan">
      <h1>手机，必须拥有</h1>
      <p>make more time</p>
      <a href="#about" class="btn btn-skin scroll">逛一逛</a>
    </div>
  </section>
  <!-- /Section: intro -->

  <!-- Section: about -->
  <section id="about" class="home-section text-center bg-gray">
    <div class="heading-about marginbot-50">
      <div class="container">
        <div class="row">
          <div class="col-lg-8 col-lg-offset-2">

            <div class="section-heading">
              <h2>小米</h2>
              <p>小米,为发烧而生</p>
            </div>

          </div>
        </div>
      </div>
    </div>
    <div class="container">

      <div class="row">
        <div class="col-xs-6 col-sm-3 col-md-3">
          <div class="team boxed-grey">
            <div class="inner">
              <h5><a href="/javaweb_project2/productdetail?productId=1">小米Note 3 支持人脸解锁</a></h5>
              <p class="subtitle">2倍变焦双摄，四轴光学防抖 / 5.5"护眼屏 / 超轻四曲面</p>
              <div class="avatar"><img src="/javaweb_project2/Ninestars/img/miimg/minote3.png" alt="" class="img-responsive" /></div>
            </div>
          </div>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-3">

          <div class="team boxed-grey">
            <div class="inner">
              <h5>小米Note 3 支持人脸解锁</h5>
              <p class="subtitle">2倍变焦双摄，四轴光学防抖 / 5.5"护眼屏 / 超轻四曲面</p>
              <div class="avatar"><img src="/javaweb_project2/Ninestars/img/miimg/minote3.png" alt="" class="img-responsive" /></div>
            </div>

          </div>
        </div>
        <div class="col-xs-6 col-sm-3 col-md-3">

          <div class="team boxed-grey">
            <div class="inner">
              <h5>小米Note 3 支持人脸解锁</h5>
              <p class="subtitle">2倍变焦双摄，四轴光学防抖 / 5.5"护眼屏 / 超轻四曲面</p>
              <div class="avatar"><img src="/javaweb_project2/Ninestars/img/miimg/minote3.png" alt="" class="img-responsive" /></div>
            </div>
          </div>

        </div>
        <div class="col-xs-6 col-sm-3 col-md-3">

          <div class="team boxed-grey">
            <div class="inner">
              <h5>小米Note 3 支持人脸解锁</h5>
              <p class="subtitle">2倍变焦双摄，四轴光学防抖 / 5.5"护眼屏 / 超轻四曲面</p>
              <div class="avatar"><img src="/javaweb_project2/Ninestars/img/miimg/minote3.png" alt="" class="img-responsive" /></div>
            </div>
          </div>

        </div>
      </div>
    </div>
  </section>
  <!-- /Section: about -->

<!-- Section: iphone -->
  <section id="service" class="home-section text-center bg-gray">
    <div class="heading-about marginbot-50">
      <div class="container">
        <div class="row">
          <div class="col-lg-8 col-lg-offset-2">

            <div class="section-heading">
              <h2>iPhone</h2>
              <p>hello，未来</p>
            </div>

          </div>
        </div>
      </div>
    </div>
    <div class="container">

      <div class="row">
        <div class="col-xs-6 col-sm-3 col-md-3">
          <div class="team boxed-grey">
            <div class="inner">
              <h5 id="product_detail"><a href="../商品详情页1/index.html">iphone X 全面屏，全面绽放</a></h5>
              <p class="subtitle">超视网膜显示屏/原深感摄像头 /面谱绘制</p>
              <div class="avatar"><img src="/javaweb_project2/Ninestars/img/miimg/minote3.png" alt="" class="img-responsive" /></div>
            </div>
          </div>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-3">

          <div class="team boxed-grey">
            <div class="inner">
              <h5>iphone X 全面屏，全面绽放</h5>
              <p class="subtitle">超视网膜显示屏/原深感摄像头 /面谱绘制</p>
              <div class="avatar"><img src="/javaweb_project2/Ninestars/img/miimg/minote3.png" alt="" class="img-responsive" /></div>
            </div>

          </div>
        </div>
        <div class="col-xs-6 col-sm-3 col-md-3">

          <div class="team boxed-grey">
            <div class="inner">
              <h5>iphone X 全面屏，全面绽放</h5>
              <p class="subtitle">超视网膜显示屏/原深感摄像头 /面谱绘制</p>
              <div class="avatar"><img src="/javaweb_project2/Ninestars/img/miimg/minote3.png" alt="" class="img-responsive" /></div>
            </div>
          </div>

        </div>
        <div class="col-xs-6 col-sm-3 col-md-3">

          <div class="team boxed-grey">
            <div class="inner">
              <h5>iphone X 全面屏，全面绽放</h5>
              <p class="subtitle">超视网膜显示屏/原深感摄像头 /面谱绘制</p>
              <div class="avatar"><img src="/javaweb_project2/Ninestars/img/miimg/minote3.png" alt="" class="img-responsive" /></div>
            </div>
          </div>

        </div>
      </div>
    </div>
  </section>
  
  <footer>
    <div class="container">
      <div class="row">
        <div class="col-md-12 col-lg-12">
          <p>&copy; 手机——商城</p>
          <div class="credits">
            <!-- 
              All the links in the footer should remain intact. 
              You can delete the links only if you purchased the pro version.
              Licensing information: https://bootstrapmade.com/license/
              Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=Ninestars
            -->
            <a href="https://bootstrapmade.com/">中软最大的手机商城</a> 
          </div>
        </div>
      </div>
    </div>
  </footer>

  <!-- Core JavaScript Files -->
  <script src="/javaweb_project2/Ninestars/js/jquery.min.js"></script>
  <script src="/javaweb_project2/Ninestars/js/bootstrap.min.js"></script>
  <script src="/javaweb_project2/Ninestars/js/jquery.easing.min.js"></script>
  <script src="/javaweb_project2/Ninestars/js/classie.js"></script>
  <script src="/javaweb_project2/Ninestars/js/gnmenu.js"></script>
  <script src="/javaweb_project2/Ninestars/js/jquery.scrollTo.js"></script>
  <script src="/javaweb_project2/Ninestars/js/nivo-lightbox.min.js"></script>
  <script src="/javaweb_project2/Ninestars/js/stellar.js"></script>
  <!-- Custom Theme JavaScript -->
  <script src="/javaweb_project2/Ninestars/js/custom.js"></script>
  <script src="/javaweb_project2/Ninestars/contactform/contactform.js"></script>

</body>
</html>
