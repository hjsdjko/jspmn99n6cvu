<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>
<!-- 首页 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>基于Web的动漫网站的设计与实现</title>
		<link rel="stylesheet" href="./layui/css/layui.css">
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="./css/theme.css" />
		<!-- 样式 -->
		<link rel="stylesheet" href="./css/style.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="./css/common.css" />
	</head>
	<style type="text/css">
		html, body {
			height: 100%;
		}
		
		
		#navs.vertical li {
						background: none;
						display: block;
						width: 100%;
					}
		
		#navs.vertical li a {
						padding: 0 20px;
						color: #333;
						background: linear-gradient(180deg, rgba(232,232,232,1) 0%, rgba(255,255,255,1) 50%, rgba(212,211,211,1) 100%),#fff;
						display: block;
						font-size: 14px;
						border-color: #98c6e2 #ccc #98c6e2 #ccc;
						border-width: 8px 16px 8px 16px;
						line-height: 44px;
						border-style: solid;
						height: 60px;
					}
		
		#navs.vertical li a:hover{
						padding: 0 20px;
						color: rgba(255,255,255,1);
						background: linear-gradient(180deg, rgba(88,157,199,1) 0%, rgba(170,208,231,1) 50%, rgba(95,166,208,1) 100%),#3086b9;
						display: block;
						font-size: 14px;
						border-color: #98c6e2 #5fa6d0 #98c6e2 #5fa6d0;
					}
		
		#navs.vertical li.current a {
						padding: 0 20px;
						color: rgba(255,255,255,1);
						background: linear-gradient(180deg, rgba(88,157,199,1) 0%, rgba(170,208,231,1) 50%, rgba(95,166,208,1) 100%),#3086b9;
						display: block;
						font-size: 14px;
						border-color: #98c6e2 #5fa6d0 #98c6e2 #5fa6d0;
						border-width: 8px 16px 8px 16px;
						line-height: 44px;
						border-style: solid;
						height: 60px;
					}
		
		#navs.vertical li a i {
						margin: 0 16px 0 0;
						color: inherit;
						width: 16px;
						font-size: 14px;
					}
		
		#navs.vertical li a span {
						padding: 0;
						color: inherit;
						font-size: 16px;
					}
		
		#navs.vertical .layui-side-scroll {
		    margin-bottom: -21px;
		    margin-right: -21px;
		    overflow: scroll;
		    height: 100%;
		    overflow-x: hidden;
		    width: auto;
		}
		
		#navs.vertical .layui-nav-tree {
			width: 100%;
		}

	</style>
	<body>
	<div id="apps">
		<div id="header" :style='{"boxShadow":"0 1px 0px rgba(64, 158, 255, .3)","padding":"0px","alignItems":"center","display":"flex","right":"0","justifyContent":"space-between","overflow":"hidden","top":"0","left":"0","background":"url(http://codegen.caihongy.cn/20221231/a49ce5974eb04feb9b09f2c15f0e2bb2.jpg) no-repeat center bottom / 100% auto,#fff","position":"fixed","height":"64px","zIndex":"1002"}'>
			<img :style='{"width":"44px","objectFit":"cover","borderRadius":"100%","display":"none","height":"44px"}' class="nav-top-img" src='http://codegen.caihongy.cn/20221225/500f7c061d4f469baa2e032077dcccd4.jpeg'>
			<div v-if="projectName" :style='{"margin":"0 0 0 210px","color":"#333","textAlign":"center","background":"none","width":"calc(100% - 370px)","lineHeight":"64px","fontSize":"22px","height":"64px"}' class="nav-top-title">{{projectName}}</div>
			<div :style='{"alignItems":"center","width":"160px","display":"flex"}'>
				<div :style='{"color":"#666","fontSize":"14px","display":"inline-block"}'></div>
				<button v-if="!Token" :style='{"border":"0","padding":"0 12px","margin":"0 0 0 10px","color":"#f4f4f5","borderRadius":"2px","background":"#3086b9","display":"inline-block","fontSize":"14px","lineHeight":"32px","height":"32px"}' @click="jumpLogin('./pages/login/login.jsp')">登录/注册</button>
				<button v-if="Token" :style='{"border":"0","padding":"0 12px","margin":"0 0 0 10px","color":"#666","borderRadius":"2px","background":"#f4f4f5","display":"inline-block","fontSize":"14px","lineHeight":"32px","height":"32px"}' @click="logout()">退出</button>
			</div>
		</div>
		
		<!-- 竖向 -->
		<div id="navs" class="vertical" :style='{"padding":"64px 0 0","boxShadow":"0px 0 6px  #aaa","overflow":"hidden","top":"0","left":"0","background":"#98c6e2","bottom":"0","width":"210px","fontSize":"0px","position":"fixed","height":"100%","zIndex":"1001"}'>
			<div class="layui-side-scroll">
				<ul class="layui-nav layui-nav-tree" :style='{"width":"100%","padding":"0","background":"none"}'>
					<li class='current'><a href="javascript:navPage('./pages/home/home.jsp')" class="menumain"><i class="layui-icon layui-icon-home"></i><span>首页</span></a></li>
					<li v-if="indexNav" v-for="(item,index) in indexNav" v-bind:key="index"><a :href="'javascript:navPage(\''+item.url+'\')'" class="menumain"><i class="layui-icon" :class="iconArr[index]"></i><span>{{item.name}}</span></a></li>
					<li v-if="Token"><a href="javascript:centerPage();" class="menumain"><i class="layui-icon layui-icon-username"></i>个人中心</a></li>
					<li v-if="Token"><a v-if="adminurl" :href="adminurl" target="_blank" class="menumain" style="cursor: pointer;"><i class="layui-icon layui-icon-link"></i><span>后台管理</span></a></li>
				</ul>
			</div>
		</div>
		

		<iframe src="./pages/home/home.jsp" id="iframe" frameborder="0" scrolling="no" width="100%" onload="changeFrameHeight()"></iframe>
		<div id="tabbar" class="tabbar" :style='{"minHeight":"150px","padding":"20px 0","alignItems":"center","background":"#3086b9","flexDirection":"column","display":"flex","width":"100%","justifyContent":"center"}'>
			<img :style='{"width":"44px","objectFit":"cover","borderRadius":"100%","display":"none","height":"44px"}' src='http://codegen.caihongy.cn/20221225/500f7c061d4f469baa2e032077dcccd4.jpeg' />
			<div :style='{"margin":"10px 0 0","fontSize":"14px","lineHeight":"28px","color":"#fff"}' class="company"></div>
			<div :style='{"margin":"10px 0 0","fontSize":"14px","lineHeight":"28px","color":"#fff"}' class="record"></div>
			<div :style='{"margin":"10px 0 0","fontSize":"14px","lineHeight":"28px","color":"#fff"}' class="desc"></div>
		</div>
	</div>
		<script src="./js/jquery.js"></script>
		<!-- layui bottom---{"img":{"hover":{},"default":{"width":"44px","objectFit":"cover","borderRadius":"100%","display":"none","height":"44px"},"url":"http://codegen.caihongy.cn/20221225/500f7c061d4f469baa2e032077dcccd4.jpeg"},"box":{"hover":{},"default":{"minHeight":"150px","padding":"20px 0","alignItems":"center","background":"#3086b9","flexDirection":"column","display":"flex","width":"100%","justifyContent":"center"}},"company":{"hover":{},"default":{"margin":"10px 0 0","fontSize":"14px","lineHeight":"28px","color":"#fff"},"text":""},"record":{"hover":{},"default":{"margin":"10px 0 0","fontSize":"14px","lineHeight":"28px","color":"#fff"},"text":""},"desc":{"hover":{},"default":{"margin":"10px 0 0","fontSize":"14px","lineHeight":"28px","color":"#fff"},"text":""}}-->
		<script src="./layui/layui.js"></script>
		<!-- vue.js menu----{"horizontal":{"menu":{"title":{"hover":{},"default":{"padding":"0 20px","verticalAlign":"middle","color":"#fff","textAlign":"center","display":"inline-block","width":"auto","lineHeight":"60px","fontSize":"16px","height":"60px"},"text":""},"item":{"icon":{"hover":{},"default":{"padding":"0","margin":"0 10px 0 0","color":"inherit","width":"16px","lineHeight":"60px","fontSize":"16px","height":"60px"},"flag":true},"a":{"hover":{"cursor":"pointer","padding":"0 20px","color":"#393d49","background":"#fff","lineHeight":"60px","fontSize":"16px","height":"60px"},"active":{"cursor":"pointer","padding":"0 20px","color":"red","background":"#fff","lineHeight":"60px","fontSize":"16px","height":"60px"},"default":{"cursor":"pointer","padding":"0 20px","color":"#fff","background":"#393d49","lineHeight":"60px","fontSize":"16px","height":"60px"}},"box":{"default":{"border":"0","lineHeight":"60px","background":"#f00","height":"60px"}},"title":{"hover":{},"default":{"padding":"00","lineHeight":"60px","fontSize":"16px","color":"inherit","height":"60px"}}},"box":{"hover":{},"default":{"border":0,"padding":"0","listStyle":"none","margin":"0","position":"relative","background":"none"}}},"contentBox":{"hover":{},"default":{"padding":"0","margin":"0","position":"relative","background":"url(http://codegen.caihongy.cn/20221231/22820e75582447d288768d1eacf1649e.png) no-repeat center top,#fff"}},"box":{"hover":{},"default":{"width":"100%","padding":"0","margin":"64px 0px 0px","background":"none","height":"auto"}}},"vertical":{"menu":{"title":{"hover":{},"default":{"margin":"0 0 10px","color":"#fff","textAlign":"center","background":"linear-gradient(320deg, rgba(48,134,185,1) 0%, rgba(197,230,250,1) 80%, rgba(48,134,185,1) 100%),#3086b9","width":"100%","lineHeight":"60px","fontSize":"16px","height":"60px"},"text":"测试前台boo"},"item":{"icon":{"hover":{},"default":{"width":"16px","margin":"0 16px 0 0","fontSize":"14px","color":"inherit"},"flag":true},"a":{"hover":{"padding":"0 20px","borderColor":"#98c6e2 #5fa6d0 #98c6e2 #5fa6d0","fontSize":"14px","color":"rgba(255,255,255,1)","background":"linear-gradient(180deg, rgba(88,157,199,1) 0%, rgba(170,208,231,1) 50%, rgba(95,166,208,1) 100%),#3086b9","display":"block"},"active":{"padding":"0 20px","borderColor":"#98c6e2 #5fa6d0 #98c6e2 #5fa6d0","color":"rgba(255,255,255,1)","background":"linear-gradient(180deg, rgba(88,157,199,1) 0%, rgba(170,208,231,1) 50%, rgba(95,166,208,1) 100%),#3086b9","borderWidth":"8px 16px 8px 16px","display":"block","fontSize":"14px","lineHeight":"44px","borderStyle":"solid","height":"60px"},"default":{"padding":"0 20px","borderColor":"#98c6e2 #ccc #98c6e2 #ccc","color":"#333","background":"linear-gradient(180deg, rgba(232,232,232,1) 0%, rgba(255,255,255,1) 50%, rgba(212,211,211,1) 100%),#fff","borderWidth":"8px 16px 8px 16px","display":"block","lineHeight":"44px","fontSize":"14px","borderStyle":"solid","height":"60px"}},"box":{"default":{"width":"100%","background":"none","display":"block"}},"title":{"hover":{},"default":{"color":"inherit","padding":"0","fontSize":"16px"}}},"box":{"hover":{},"default":{"width":"100%","padding":"0","background":"none"}}},"contentBox":{"hover":{},"default":{"padding":"80px 20px 20px","margin":"0 0 0 210px","position":"relative","background":"url(http://codegen.caihongy.cn/20230101/3b575ca380e14124bc1945e639178e9d.png) fixed no-repeat center top / 100% 100%,rgba(64, 158, 255, .3)","display":"block"}},"box":{"hover":{},"default":{"padding":"64px 0 0","boxShadow":"0px 0 6px  #aaa","overflow":"hidden","top":"0","left":"0","background":"#98c6e2","bottom":"0","width":"210px","fontSize":"0px","position":"fixed","height":"100%","zIndex":"1001"}}},"base":{"mode":"vertical"}}-->
		<script src="./js/vue.js"></script>
		<!-- 组件配置信息 -->
		<script src="./js/config.js"></script>

		<script>
			var vue = new Vue({
				el: '#apps',
				data: {
					iconArr: ['layui-icon-gift','layui-icon-email','layui-icon-logout','layui-icon-transfer','layui-icon-slider','layui-icon-print','layui-icon-cols','layui-icon-snowflake','layui-icon-note','layui-icon-flag','layui-icon-theme','layui-icon-website','layui-icon-console','layui-icon-face-surprised','layui-icon-template-1','layui-icon-app','layui-icon-read','layui-icon-component','layui-icon-file-b','layui-icon-unlink','layui-icon-tabs','layui-icon-form','layui-icon-chat'],
					indexNav: indexNav,
					cartFlag: cartFlag,
					adminurl: adminurl,
					chatFlag: chatFlag,
					projectName: projectName,
                    Token: localStorage.getItem('Token'),
                    baseurl: '',
				},
				mounted: function() {
					this.bindClickOnLi();
				},
				created() {
					this.iconArr.sort(()=>{
					  return (0.5-Math.random())
					})
				},
				methods: {
					jumpLogin(url) {
                        window.location.href = './pages/login/login.jsp'
					},
                    logout(){
                        localStorage.removeItem('Token');
                        localStorage.removeItem('role');
                        localStorage.removeItem('sessionTable');
                        localStorage.removeItem('adminName');
                        localStorage.removeItem('userid');
                        localStorage.removeItem('vip');
                        localStorage.removeItem('userTable');
                        window.location.href = './index.jsp';
                    },
					bindClickOnLi() {
						let list = document.getElementsByTagName("li");
						for(var i = 0;i<list.length;i++){
							list[i].onclick = function(){
								$(this).addClass("current").siblings().removeClass("current");
                                localStorage.setItem("checkedLiIndex",$(this).index());
							}
						}
					},
				}
			});

			layui.use(['element','layer', 'http', 'slider'], function() {
				var element = layui.element;
				var layer = layui.layer;
                var http = layui.http;
                var slider = layui.slider;
                vue.baseurl = http.baseurl;
			});
			
			// 导航栏跳转
			function navPage(url) {
				localStorage.setItem('iframeUrl', url);
				document.getElementById('iframe').src = url;
			}
			// 跳转到个人中心也
			function centerPage() {
				var userTable = localStorage.getItem('userTable');
				if (userTable) {
					localStorage.setItem('iframeUrl', './pages/' + userTable + '/center.jsp');
					document.getElementById('iframe').src = './pages/' + userTable + '/center.jsp';
				} else {
					window.location.href = './pages/login/login.jsp'
				}
			}

			var iframeUrl = localStorage.getItem('iframeUrl');
			document.getElementById('iframe').src = iframeUrl || './pages/home/home.jsp';

            let list = document.getElementsByTagName("li");
            for(var i = 0;i<list.length;i++){
                if(i==localStorage.getItem("checkedLiIndex")) {
                    $(list[i]).addClass("current").siblings().removeClass("current");
                }
            }

			// alert(iframeUrl)

			setInterval(function(){
			  // i++;
			  // if(i<50) changeFrameHeight();
			  changeFrameHeight();
			},200)
			
			function changeFrameHeight() {
			  var iframe = document.getElementById('iframe');
			  // iframe.height = 'auto';
			    if (iframe) {
			        var iframeWin = iframe.contentWindow || iframe.contentDocument.parentWindow;
			        if (iframeWin.document.body) {
			            iframe.height = iframeWin.document.body.scrollHeight;
			        }
			    }
			};

			//  窗口变化时候iframe自适应
			// function changeFrameHeight() {
			// 	var header = document.getElementById('header').scrollHeight;
			// 	// var swiper = document.getElementById('swiper').scrollHeight;
			// 	var ifm = document.getElementById("iframe");
			// 	ifm.height = document.documentElement.clientHeight - header;
			// 	ifm.width = document.documentElement.clientWidth;
			// 	console.log(ifm.height)
			// }

			// reasize 事件 窗口大小变化后执行的方法
			window.onresize = function() {
				changeFrameHeight();
			}
		</script>
	</body>
</html>
