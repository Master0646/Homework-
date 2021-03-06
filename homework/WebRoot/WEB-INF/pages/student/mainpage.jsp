<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <meta http-equiv="X-UA-Compatible" content="IE=9" />
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>沈工大作业管理</title>
	<meta name="description" content="">
	<meta name="author" content="">
	
	<!-- Favicons
	    ================================================== -->
	<link rel="shortcut icon" href="<%=basePath%>/img/favicon.ico" type="image/x-icon">
	<link rel="apple-touch-icon" href="<%=basePath%>/img/apple-touch-icon.png">
	<link rel="apple-touch-icon" sizes="72x72" href="<%=basePath%>/img/apple-touch-icon-72x72.png">
	<link rel="apple-touch-icon" sizes="114x114" href="<%=basePath%>/img/apple-touch-icon-114x114.png">
	
	<!-- Bootstrap -->
	<link rel="stylesheet" type="text/css"  href="<%=basePath%>/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>/fonts/font-awesome/css/font-awesome.css">
	
	<!-- Slider
	    ================================================== -->
	<link href="<%=basePath%>/css/owl.carousel.css" rel="stylesheet" media="screen">
	<link href="<%=basePath%>/css/owl.theme.css" rel="stylesheet" media="screen">
	
	<!-- Stylesheet
	    ================================================== -->
	<link rel="stylesheet" type="text/css"  href="<%=basePath%>/css/style.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/prettyPhoto.css">
	<script type="text/javascript" src="<%=basePath%>/js/modernizr.custom.js"></script>
	
	<!--
	作者：stevejobson@163.com
	时间：2015-10-10
	描述：登陆注册
-->
	<script type="text/javascript" src="<%=basePath%>/js/loginModel.js" ></script>
	<script type="text/javascript" src="<%=basePath%>/js/regModel.js" ></script>
  </head>
	<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">
		    <!-- Navigation -->
		    <nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
		        <div class="container">
		            <div class="navbar-header">
		                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
		                    <i class="fa fa-bars"></i>
		                </button>
		                <a class="navbar-brand page-scroll" href="javascript:void(0)">
		                    <i class="fa fa-terminal"></i>SUT作业管理
		                </a>
		            </div>
		
		            <!-- Collect the nav links, forms, and other content for toggling -->
		            <div class="collapse navbar-collapse navbar-left navbar-main-collapse">
		                <ul class="nav navbar-nav">
		                    <!-- Hidden li included to remove active class from about link when scrolled up past about section -->
		                    <li>
		                        <a class="page-scroll" href="student/courseList">课程</a>
		                    </li>                    
		                    <li>
		                        <a class="page-scroll" href="student/resCourseList">分享</a>
		                    </li>                    
		                    <li>
		                        <a class="page-scroll" href="http://www.snmqc.cn" target="_blank">社区</a>
		                    </li>
		                </ul>
		            </div>
		             <div class="collapse navbar-collapse navbar-right navbar-main-collapse">
		               
		                <!-- 判断是否有用户登录 -->
		               <c:choose>  
						   <c:when test="${sessionScope.user!=null}">
						   	<ul class="nav navbar-nav">
						   		<li>
									<a class="page-scroll" href="build/underBuild"  data-toggle="tooltip" data-placement="bottom" title="我的消息">
						   				<span class="glyphicon glyphicon-envelope" style="font-size: 20px;color:white;"></span>
				                   	 </a>
						   		</li>
						   		
						   		<li>
						   		<div style="margin-top:3px" class="page-scroll ">
						   			<div class="dropdown">
						   				 <a    data-toggle="dropdown"  >
						   			 <img  style="height:40px;width:40px" class="img-circle" alt="用户头像" src="<%=basePath%>/img/1.jpg">
			                			</a>
			                			<ul class="dropdown-menu">
										    <li><center><p>&nbsp;&nbsp;&nbsp;&nbsp;${sessionScope.user.sname}</p></center></li>
										     <li class="divider"></li>
										     <li><a href="build/underBuild">我的社区</a></li>
										      <li class="divider"></li>
										     <li><a href="student/changepwd">修改密码</a></li>
										      <li class="divider"></li>
										     <li><a href="logout">注销登陆</a></li>
										 </ul>
										 </div>
			                	</div>
			                	</li>
			                </ul>
						   </c:when>  
						     
						   <c:otherwise> 
						   	 <ul class="nav navbar-nav">
			                    <li>
			                        <a class="page-scroll" href="javascript:showLogin()" >登录</a>
			                    </li>
			                </ul>
						   </c:otherwise>  
					  </c:choose>  
					  
		            </div>
		            <!-- /.navbar-collapse -->
		        </div>
		        <!-- /.container -->
		    </nav> <!-- Navigation -->
		    <nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
		        <div class="container">
		            <div class="navbar-header">
		                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
		                    <i class="fa fa-bars"></i>
		                </button>
		                <a class="navbar-brand page-scroll" href="javascript:void(0)">
		                    <i class="fa fa-terminal"></i>SUT作业管理
		                </a>
		            </div>
		
		            <!-- Collect the nav links, forms, and other content for toggling -->
		            <div class="collapse navbar-collapse navbar-left navbar-main-collapse">
		                <ul class="nav navbar-nav">
		                    <!-- Hidden li included to remove active class from about link when scrolled up past about section -->
		                    <li>
		                        <a class="page-scroll" href="student/courseList">课程</a>
		                    </li>                    
		                    <li>
		                        <a class="page-scroll" href="student/resCourseList">分享</a>
		                    </li>                    
		                    <li>
		                        <a class="page-scroll" href="http://www.snmqc.cn" target="_blank">社区</a>
		                    </li>
		                </ul>
		            </div>
		            <div class="collapse navbar-collapse navbar-right navbar-main-collapse">
		                    <!-- 判断是否有用户登录 -->
		               <c:choose>  
						   <c:when test="${sessionScope.user!=null}">
						   	<ul class="nav navbar-nav">
				                   <li>
				                   	 <a class="page-scroll" href="build/underBuild" data-toggle="tooltip" data-placement="bottom" title="我的消息">
						   				<span class="glyphicon glyphicon-envelope" style="font-size: 20px;color:white;"></span>
				                   	 </a>
						   		  </li>
				                   
				                    <li>
				                    	<div style="margin-top:3px" class="page-scroll">
											<div class="dropdown">
						   				 <a    data-toggle="dropdown"  >
						   			 <img  style="height:40px;width:40px" class="img-circle" alt="用户头像" src="<%=basePath%>/img/1.jpg">
			                			</a>
			                			<ul class="dropdown-menu" >
										    <li><p>&nbsp;&nbsp;&nbsp;&nbsp;${sessionScope.user.sname}</p></li>
										     <li class="divider"></li>
										     <li><a href="build/underBuild">我的社区</a></li>
										      <li class="divider"></li>
										     <li><a href="student/changepwd">修改密码</a></li>
										      <li class="divider"></li>
										     <li><a href="logout">注销登陆</a></li>
										 </ul>
										 </div>
				                    	</div>
				                    </li>
			                </ul>
						   </c:when>  
						     
						   <c:otherwise> 
						   	 <ul class="nav navbar-nav">
			                    <li>
			                        <a class="page-scroll" href="javascript:showLogin()" >登录</a>
			                    </li>
			                </ul>
						   </c:otherwise>  
					  </c:choose> 
		            </div>
		            <!-- /.navbar-collapse -->
		        </div>
		        <!-- /.container -->
		    </nav>
		
		<!-- Header -->
		    <header class="intro">
		        <div class="intro-body">
		            <div class="container">
		                <div class="row">
		                    <div class="col-md-8 col-md-offset-2">
		                        <h1>沈工大<span class="brand-heading">作业管理系统</span></h1>
		                        <p class="intro-text">----信息科学与工程学院</p>
		                    </div>
		                </div>
		            </div>
		        </div>
		    </header>
		<!-- Services Section -->
		<div id="services" class="text-center">
		  <div class="container">
		    <div class="section-title center">
		      <h2><strong>我们提供的服务</strong></h2>
		      <hr>
		      </div>
		    <div class="space"></div>
		    <div class="row">
		      <div class="col-md-3 col-sm-6 service"> <i class="fa fa-laptop"></i>
		        <h4><strong>作业管理</strong></h4>
		      </div>
		      <div class="col-md-3 col-sm-6 service"> <i class="fa fa-code"></i>
		        <h4><strong>知识分享</strong></h4>
		      </div>
		      <div class="col-md-3 col-sm-6 service"> <i class="fa fa-rocket"></i>
		        <h4><strong>社区交流</strong></h4>
		      </div>
		      <div class="col-md-3 col-sm-6 service"> <i class="fa fa-bullseye"></i>
		        <h4><strong>资料下载</strong></h4>
		      </div>
		    </div>
		  </div>
		</div>
		<!-- Portfolio Section -->
		<div id="works">
		  <div class="container"> <!-- Container -->
		    <div class="section-title text-center center">
		      <h2><strong>校园风景</strong></h2>
		      <hr>
		      <div class="clearfix"></div>
		      <p></p>
		    </div>
		    <div class="categories">
		      <ul class="cat">
		        <li>
		          <ol class="type">
		            <li><a href="javascript:void(0)" data-filter="*" class="active">工大</a></li>
		            <li><a href="javascript:void(0)" data-filter=".i">I</a></li>
		            <li><a href="javascript:void(0)" data-filter=".love">Love</a></li>
		            <li><a href="javascript:void(0)" data-filter=".you">You</a></li>
		          </ol>
		        </li>
		      </ul>
		      <div class="clearfix"></div>
		    </div>
		    <div class="row">
		      <div class="portfolio-items">
		        <div class="col-sm-6 col-md-3 col-lg-3 you">
		          <div class="portfolio-item">
		            <div class="hover-bg"> <a href="img/portfolio/01.jpg" title="" rel="prettyPhoto">
		              <div class="hover-text">
		                <h4>Y</h4>
		                <small></small>
		                <div class="clearfix"></div>
		                <i class="fa fa-search"></i> </div>
		              <img src="img/portfolio/01.jpg" class="img-responsive" alt=""> </a> </div>
		          </div>
		        </div>
		        <div class="col-sm-6 col-md-3 col-lg-3 love">
		          <div class="portfolio-item">
		            <div class="hover-bg"> <a href="img/portfolio/02.jpg" title="" rel="prettyPhoto">
		              <div class="hover-text">
		                <h4>L</h4>
		                <small></small>
		                <div class="clearfix"></div>
		                <i class="fa fa-search"></i> </div>
		              <img src="img/portfolio/02.jpg" class="img-responsive" alt=""> </a> </div>
		          </div>
		        </div>
		        <div class="col-sm-6 col-md-3 col-lg-3 i">
		          <div class="portfolio-item">
		            <div class="hover-bg"> <a href="img/portfolio/03.jpg" title="" rel="prettyPhoto">
		              <div class="hover-text">
		                <h4>I</h4>
		                <small></small>
		                <div class="clearfix"></div>
		                <i class="fa fa-search"></i> </div>
		              <img src="img/portfolio/03.jpg" class="img-responsive" alt=""> </a> </div>
		          </div>
		        </div>
		        <div class="col-sm-6 col-md-3 col-lg-3 you">
		          <div class="portfolio-item">
		            <div class="hover-bg"> <a href="img/portfolio/04.jpg" title="" rel="prettyPhoto">
		              <div class="hover-text">
		                <h4>O</h4>
		                <small></small>
		                <div class="clearfix"></div>
		                <i class="fa fa-search"></i> </div>
		              <img src="img/portfolio/04.jpg" class="img-responsive" alt=""> </a> </div>
		          </div>
		        </div>
		        <div class="col-sm-6 col-md-3 col-lg-3 love">
		          <div class="portfolio-item">
		            <div class="hover-bg"> <a href="img/portfolio/05.jpg" title="" rel="prettyPhoto">
		              <div class="hover-text">
		                <h4>O</h4>
		                <small></small>
		                <div class="clearfix"></div>
		                <i class="fa fa-search"></i> </div>
		              <img src="img/portfolio/05.jpg" class="img-responsive" alt=""> </a> </div>
		          </div>
		        </div>
		        <div class="col-sm-6 col-md-3 col-lg-3 you">
		          <div class="portfolio-item">
		            <div class="hover-bg"> <a href="img/portfolio/06.jpg" title="" rel="prettyPhoto">
		              <div class="hover-text">
		                <h4>U</h4>
		                <small></small>
		                <div class="clearfix"></div>
		                <i class="fa fa-search"></i> </div>
		              <img src="img/portfolio/06.jpg" class="img-responsive" alt=""> </a> </div>
		          </div>
		        </div>
		        <div class="col-sm-6 col-md-3 col-lg-3 love ">
		          <div class="portfolio-item">
		            <div class="hover-bg"> <a href="img/portfolio/07.jpg" title="" rel="prettyPhoto">
		              <div class="hover-text">
		                <h4>E</h4>
		                <small></small>
		                <div class="clearfix"></div>
		                <i class="fa fa-search"></i> </div>
		              <img src="img/portfolio/07.jpg" class="img-responsive" alt=""> </a> </div>
		          </div>
		        </div>
		        <div class="col-sm-6 col-md-3 col-lg-3 love">
		          <div class="portfolio-item">
		            <div class="hover-bg"> <a href="img/portfolio/08.jpg" title="" rel="prettyPhoto">
		              <div class="hover-text">
		                <h4>V</h4>
		                <small></small>
		                <div class="clearfix"></div>
		                <i class="fa fa-search"></i> </div>
		              <img src="img/portfolio/08.jpg" class="img-responsive" alt=""> </a> </div>
		          </div>
		        </div>
		      </div>
		    </div>
		  </div>
		</div>
		<!-- Achievement Section -->
			<div id="achivements" class="section dark-bg">
					<div class="container">	
						<div class="row">
							<div class="col-md-3 col-sm-3">
								<div class="achivement-box">
									<i class="fa fa-smile-o"></i>
									<span class="count">98</span>
									<h4>客户满意度</h4>                            
								</div>
							</div> 
							<div class="col-md-3 col-sm-3">
								<div class="achivement-box">
									<i class="fa fa-code"></i>
									<span class="count">780</span>
									<h4>学习时间</h4>                            
								</div>
							</div> 
							<div class="col-md-3 col-sm-3">
								<div class="achivement-box">
									<i class="fa fa-check-square-o"></i>
									<span class="count">34</span>
		                            <h4>完成项目</h4>
								</div>
							</div> 
							<div class="col-md-3 col-sm-3">
								<div class="achivement-box">
									<i class="fa fa-trophy"></i>
									<span class="count">5</span>
									<h4>获得奖项</h4>                            
								</div>
							</div> 
						</div>
					</div>
				</div>
		<!-- Team Section -->
		<div id="team" class="text-center">
		  <div class="container">
		    <div class="section-title center">
		      <h2><strong>我们的团队</strong></h2>
		      <hr>
		      <p></p>
		    </div>
		    <div id="row">
		      <div class="col-md-3 col-sm-6">
		        <div class="thumbnail"> <img src="<%=basePath%>/img/team/01.jpg" alt="..." class="img-circle team-img">
		          <div class="caption">
		            <h3>Steve Jobs</h3>
		            <p>CEO</p>
		            <p></p>
		          </div>
		        </div>
		      </div>
		      <div class="col-md-3 col-sm-6">
		        <div class="thumbnail"> <img src="<%=basePath%>/img/team/02.jpg" alt="..." class="img-circle team-img">
		          <div class="caption">
		            <h3>Steve Jobs</h3>
		            <p>Web程序设计</p>
		            <p></p>
		          </div>
		        </div>
		      </div>
		      <div class="col-md-3 col-sm-6">
		        <div class="thumbnail"> <img src="<%=basePath%>/img/team/03.jpg" alt="..." class="img-circle team-img">
		          <div class="caption">
		            <h3>Steve Jobs</h3>
		            <p>Web程序设计</p>
		            <p></p>
		          </div>
		        </div>
		      </div>
		      <div class="col-md-3 col-sm-6">
		        <div class="thumbnail"> <img src="<%=basePath%>/img/team/04.jpg" alt="..." class="img-circle team-img">
		          <div class="caption">
		            <h3>Steve Jobs</h3>
		            <p>总监</p>
		            <p></p>
		          </div>
		        </div>
		      </div>
		    </div>
		  </div>
		</div>
		<!-- Testimonials Section -->
		<div id="testimonials" class="text-center">
		  <div class="container">
		    <div class="section-title center">
		      <h2><strong>Steve’s famous Saying</strong></h2>
		      <hr>
		    </div>
		    <div class="row">
		      <div class="col-md-8 col-md-offset-2">
		        <div id="testimonial" class="owl-carousel owl-theme">
		          <div class="item">       
		            <p>领袖和跟风者的区别就在于创新。</p>
		            <p><strong>Steve Jobs</strong>, CEO.</p>
		          </div>
		          <div class="item">
		            <p>活着就是为了改变世界，难道还有其他原因吗？</p>
		            <p><strong>Steve Jobs</strong>, CEO.</p>
		          </div>
		          <div class="item">
		            <p>要有勇气追随心声，听从直觉，它们在某种程度上知道你想成为的样子。其他事情都是其次的。</p>
		            <p><strong>Steve Jobs</strong>, CEO.</p>
		          </div>
		        </div>
		      </div>
		    </div>
		  </div>
		</div>
		
		 <!--
		 	作者：stevejobson@163.com
		 	时间：2015-10-08
		 	描述：页面底部信息
		 -->
		<nav id="footer">
		  <div class="container">
		    <div class="pull-left fnav">
		      <p>Copyright © 2016 沈阳工业大学 </p>
		      <ul class="footer-social">
		        <li><a href="about/aboutUs">关于我们</a></li>
		        <li><a href="about/peopleWanted">人才招聘</a></li>
		        <li><a href="about/contractUs">联系我们</a></li>
		        <li><a href="about/adviceFeed">意见反馈</a></li>
		      </ul>
		    </div>
		    <div class="pull-right fnav">
		      <ul class="footer-social">
		        <li><a href="build/underBuild"><i class="fa fa-weibo"></i></a></li>
		        <li><a href="build/underBuild"><i class="fa fa-qq"></i></a></li>
		        <li><a href="build/underBuild"><i class="fa fa-weixin"></i></a></li>
		        <li><a href="build/underBuild"><i class="fa fa-tencent-weibo"></i></a></li>
		      </ul>
		    </div>
		  </div>
		</nav>
		
		
		<!-- 登陆块 -->
		<div id="loginDiv" style="background-color:white;width:350px;height:300px;z-index:2;display:none;position:absolute;border-top:none;">
		    <div onmousedown="titleMove()" id="login_title" style="width:auto;height:45px;background-color:white;border:1px solid silver;border-left:none;border-right:none;border-top:none;margin:0px 15px 3px 15px;">
					<div style="float: left;">
						<h3>登陆</h3>
					</div>
					<a href="javascript:hidLogin()" style="float:right;text-decoration:none;color:black;margin-right:2px;font-size:20px"><h3>&times;</h3></a>
		    </div>
		    <div style="clear:right;width:auto;height:270px;margin:20px 15px 0px 15px;">
				<form action="login" method="post" name="loginform">
					<div class="form-group">
							<input type="text" placeholder="请输入账号" class="form-control" name="userno"/>
					</div>	
					<div class="form-group">
							<input type="password" placeholder="请输入密码" class="form-control" name="password"/>
					</div>	
					<div class="form-group">
							<input type="text" placeholder="请输入验证码"  name="verifyCode" style="border-radius:4px;border: 1px solid #ccc;width: 35%;height: 34px;padding: 6px 12px;font-size: 14px; line-height: 1.42857143;color: #555;background-color: #fff;background-image: none;"/>
							<img alt="验证码" src="Kaptcha.jpg" id="MyVerifyCode" onclick="changeVerifyCode()">
					</div>
					<div class="form-group">
							<button type="button" class="btn btn-danger btn-block" onclick="loginModel()">登陆</button>
					</div>	
				</form>
		    </div>
		</div>
		
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
		<script type="text/javascript" src="<%=basePath%>/js/jquery.1.11.1.js"></script> 
		<!-- Include all compiled plugins (below), or include individual files as needed --> 
		<script type="text/javascript" src="<%=basePath%>/js/bootstrap.js"></script> 
		<script type="text/javascript" src="<%=basePath%>/js/SmoothScroll.js"></script> 
		<script type="text/javascript" src="<%=basePath%>/js/jquery.prettyPhoto.js"></script> 
		<script type="text/javascript" src="<%=basePath%>/js/jquery.isotope.js"></script> 
		<script type="text/javascript" src="<%=basePath%>/js/jquery.counterup.js"></script> 
		<script type="text/javascript" src="<%=basePath%>/js/waypoints.js"></script>
		<script type="text/javascript" src="<%=basePath%>/js/jqBootstrapValidation.js"></script> 
		<script type="text/javascript" src="<%=basePath%>/js/contact_me.js"></script>
		<script src="js/owl.carousel.js"></script>
		
		<!-- Javascripts
		    ================================================== --> 
		<script type="text/javascript" src="<%=basePath%>/js/main.js"></script>
		<script type="text/javascript">
			function loginModel(){
					document.loginform.submit();
			}
		</script>
		<!-- js -->
		<script type="text/javascript">
			function regModel(){
					document.regform.submit();
			}
		</script>
		
		<!-- 导航栏，我的消息提示 -->
		<script type="text/javascript">
		$('.dropdown-toggle').dropdown()
			$(function () {
  			$('[data-toggle="tooltip"]').tooltip()
				})
		</script>
</body>
</html>
