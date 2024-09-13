<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<style>
		#top-container {
						box-shadow: 0px 1px 0px #ddd;
						padding: 0 20px 0;
						z-index: 1001;
						top: 0;
						left: 220px;
						background: linear-gradient(30deg, rgba(255,225,182,1) 0%, rgba(255,246,234,1) 50%, rgba(255,225,182,1) 100%),#ffe1b6;
						display: flex;
						width: calc(100% - 220px);
						justify-content: space-between;
						position: fixed;
						height: 64px;
					}
		
		#top-container .top-logo {
						box-shadow: 0px 0 0px  #e9e7da;
						z-index: 9999;
						color: #fff;
						top: 0;
						left: 0;
						background: url() no-repeat center top;
						display: none;
						width: 220px;
						font-size: 16px;
						position: fixed;
						height: 64px;
					}
		
		#top-container .top-title {
						padding: 0 0 0 230px;
						margin: 0 auto;
						color: #333;
						background: none;
						width: 1200px;
						font-size: 24px;
						line-height: 64px;
						text-align: center;
					}
		
		#top-container .top-nav {
						margin: 0 130px 0 0;
						background: none;
						display: flex;
						align-items: center;
						list-style: none;
						height: 100%;
					}
		
		#top-container .top-nav .nav-item-full {
						padding: 16px 0;
						margin: 0;
						position: relative;
						height: 100%;
					}
		
		#top-container .top-nav .nav-item-full a {
						cursor: pointer;
						padding: 0;
						text-decoration: none;
						display: block;
					}
		
		#top-container .top-nav .nav-item-full a span {
						border: 0px solid #ccc;
						border-radius: 4px;
						padding: 8px;
						margin: 0 10px 0 0;
						color: #fff;
						background: #7a9eb1;
						font-size: 16px;
					}
		
		#top-container .top-nav .nav-item {
						padding: 16px 0;
						margin: 0;
						position: relative;
						height: 100%;
					}
		
		#top-container .top-nav .nav-item>a {
						cursor: pointer;
						padding: 0;
						text-decoration: none;
						display: block;
					}
		
		#top-container .top-nav .nav-item>a span {
						border: 0px solid #ccc;
						border-radius: 4px;
						padding: 8px;
						margin: 0;
						color: #000;
						background: #f9f8eb;
						font-size: 16px;
					}
		
		#top-container .top-nav .nav-item .dropdown-menu {
						border-radius: 4px;
						box-shadow: 0 1px 6px rgba(0, 0, 0, .3);
						top: 100%;
						left: inherit;
						background: #fff;
						width: 150px;
						margin-top: 9px;
						position: absolute;
						right: 0;
						min-width: auto;
						height: auto;
					}
		
		#top-container .top-nav .nav-item .dropdown-menu h5 {
						padding: 0 12px;
						color: #fff;
						background: #000;
						width: 100%;
						font-size: 16px;
						line-height: 44px;
					}
		
		#top-container .top-nav .nav-item .dropdown-menu a {
						padding: 0 12px;
						color: #333;
						background: #fff;
						display: block;
						width: 100%;
						font-size: 14px;
						height: auto;
					}
		
		#top-container .top-nav .nav-item .dropdown-menu a:hover {
						padding: 0 10px;
						color: #333;
						background: #f9f8eb;
						display: block;
						width: 100%;
						font-size: 14px;
						height: auto;
					}
		
		#top-container .top-nav .nav-item .dropdown-menu a .icon {
						border-radius: 100%;
						padding: 2px;
						margin: 0 10px 0 0;
						color: inherit;
						font-size: inherit;
						line-height: 44px;
					}
		
		#top-container .top-nav .nav-item .dropdown-menu a .text {
						color: inherit;
						font-size: inherit;
						line-height: 44px;
					}
		
		#top-container .nav-item .dropdown-toggle::after {
			content: none;
		}
	</style>
	<div id="top-container">
		<a class="top-title" href="${pageContext.request.contextPath}/index.jsp">基于Web的动漫网站的设计与实现</a>
		<ul class="top-nav">
			<li class="nav-item-full">
				<a class="nav-link">
					<span class="ti-fullscreen fullscreen"></span>
				</a>							
			</li>
			<li class="nav-item">
				<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
					<span class="ti-user"></span>
				</a>
				<div class="dropdown-menu lochana-box-shadow2 profile animated flipInY">
					<h5></h5>
					<a class="dropdown-item web" href="#" id='toFront' onclick="toFront()">
						<span class="icon ti-desktop"></span>
						<span class="text">跳到前台</span>
					</a>
					<a class="dropdown-item exit" href="#" onclick="logout()">
						<span class="icon ti-power-off"></span>
						<span class="text">退出</span>
					</a>
				</div>
			</li>
		</ul>
	</div>
<script language="javascript" type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
<script>
    $(document).ready(function() {
        if(window.sessionStorage.getItem('role')=='管理员') {
            $('#toFront').hide();
        }
        if(window.sessionStorage.getItem('role')!='管理员') {
            $('#backUp').hide();
        }
    });
</script>
