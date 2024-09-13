<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<%@ include file="jsp/static/head.jsp"%>
</head>
<style>
	#home-container {
				padding: 30px;
				background: url(http://codegen.caihongy.cn/20240506/a124996123d04d7680fa9fd8ce2dcb6c.png) no-repeat center top / cover;
				min-height: 100vh;
				text-align: center;
				height: 100%;
			}
	
	#home-container div.home-container-title {
				border-radius: 4px;
				padding: 0 20px;
				margin: 20px auto;
				color: #334854;
				background: rgba(255,255,255,.8);
				font-weight: bold;
				display: inline-block;
				font-size: 32px;
				text-align: center;
			}
	
	#home-container .cards {
				margin: 50px 0;
				display: flex;
				width: 100%;
				justify-content: center;
				align-items: center;
			}
	
	#home-container .cards .item {
				border: 1px solid #ddd;
				border-radius: 0px;
				box-shadow: 0 0px 0px rgba(0,0,0,.3);
				margin: 0 10px;
				background: rgba(255,255,255,.8);
				display: flex;
				width: 30%;
			}
	
	#home-container .cards .item .link {
				background: url(http://codegen.caihongy.cn/20230224/7b9ac76e6ed4427d925b003bcf9bf4c5.png) no-repeat center center / 60% auto;
				width: auto;
				border-color: #ddd;
				border-width: 0 1px 0 0;
				border-style: solid;
				min-width: 160px;
				height: 120px;
			}
	
	#home-container .cards .item .item-body {
				flex-direction: column;
				display: flex;
				width: 100%;
				justify-content: center;
				align-items: center;
			}
	
	#home-container .cards .item .item-body .num {
				margin: 5px 0;
				color: #333;
				font-weight: bold;
				font-size: 20px;
				line-height: 24px;
				height: 24px;
			}
	
	#home-container .cards .item .item-body .name {
				margin: 5px 0;
				color: #666;
				font-size: 16px;
				line-height: 24px;
				height: 24px;
			}
	
    .homeCharts{
        display: flex;
        width: 100%;
        align-items: center;
        height: auto;
        box-shadow: 0 4px 10px rgba(0,0,0,.3);
        border-radius: 10px;
        margin-bottom: 20px;
    }
</style> 
<body>
	<div id="main-container">
		<!-- Top Navigation -->
		<%@ include file="jsp/static/topNav.jsp"%>
		
		<!-- Menu -->
		<div id="menu-container" class="navbar">
			<ul class="navbar-nav navbar-vertical" id="navUl">
				
			</ul>
		</div>
		<!-- /Menu -->
			
		<!-- Breadcrumb -->
		<div id="breadcrumb-container">
			<h3 class="breadcrumb-title">主页</h3>
			<ol class="breadcrumb-list">
				<li class="breadcrumb-item-home">
					<a href="#">
						<span class="ti-home"></span>
					</a>
				</li>
			</ol>
		</div>
		<!-- /Breadcrumb -->
			
		<!-- Main Content -->
		<div id="home-container">
			<div class="home-container-title">欢迎使用&nbsp;基于Web的动漫网站的设计与实现</div>
			
			<div class="cards" :style='{"width":"100%","margin":"50px 0","alignItems":"center","justifyContent":"center","display":"flex"}'>
				<div class="item" :style='{"border":"1px solid #ddd","boxShadow":"0 0px 0px rgba(0,0,0,.3)","margin":"0 10px","borderRadius":"0px","background":"rgba(255,255,255,.8)","display":"flex","width":"30%"}' v-if="crossBtnControl2('yonghu','首页总数')">
					<div class="link" :style='{"borderColor":"#ddd","background":"url(http://codegen.caihongy.cn/20230224/7b9ac76e6ed4427d925b003bcf9bf4c5.png) no-repeat center center / 60% auto","borderWidth":"0 1px 0 0","width":"auto","minWidth":"160px","borderStyle":"solid","height":"120px"}'></div>
					<div class="item-body" :style='{"width":"100%","alignItems":"center","flexDirection":"column","justifyContent":"center","display":"flex"}'>
						<div class="num" :style='{"margin":"5px 0","lineHeight":"24px","fontSize":"20px","color":"#333","fontWeight":"bold","height":"24px"}'>{{yonghuCount}}</div>
						<div class="name" :style='{"margin":"5px 0","lineHeight":"24px","fontSize":"16px","color":"#666","height":"24px"}'>用户总数</div>
					</div>
				</div>
				<div class="item" :style='{"border":"1px solid #ddd","boxShadow":"0 0px 0px rgba(0,0,0,.3)","margin":"0 10px","borderRadius":"0px","background":"rgba(255,255,255,.8)","display":"flex","width":"30%"}' v-if="crossBtnControl2('remendongman','首页总数')">
					<div class="link" :style='{"borderColor":"#ddd","background":"url(http://codegen.caihongy.cn/20230224/7b9ac76e6ed4427d925b003bcf9bf4c5.png) no-repeat center center / 60% auto","borderWidth":"0 1px 0 0","width":"auto","minWidth":"160px","borderStyle":"solid","height":"120px"}'></div>
					<div class="item-body" :style='{"width":"100%","alignItems":"center","flexDirection":"column","justifyContent":"center","display":"flex"}'>
						<div class="num" :style='{"margin":"5px 0","lineHeight":"24px","fontSize":"20px","color":"#333","fontWeight":"bold","height":"24px"}'>{{remendongmanCount}}</div>
						<div class="name" :style='{"margin":"5px 0","lineHeight":"24px","fontSize":"16px","color":"#666","height":"24px"}'>热门动漫总数</div>
					</div>
				</div>
				<div class="item" :style='{"border":"1px solid #ddd","boxShadow":"0 0px 0px rgba(0,0,0,.3)","margin":"0 10px","borderRadius":"0px","background":"rgba(255,255,255,.8)","display":"flex","width":"30%"}' v-if="crossBtnControl2('luntantiezi','首页总数')">
					<div class="link" :style='{"borderColor":"#ddd","background":"url(http://codegen.caihongy.cn/20230224/7b9ac76e6ed4427d925b003bcf9bf4c5.png) no-repeat center center / 60% auto","borderWidth":"0 1px 0 0","width":"auto","minWidth":"160px","borderStyle":"solid","height":"120px"}'></div>
					<div class="item-body" :style='{"width":"100%","alignItems":"center","flexDirection":"column","justifyContent":"center","display":"flex"}'>
						<div class="num" :style='{"margin":"5px 0","lineHeight":"24px","fontSize":"20px","color":"#333","fontWeight":"bold","height":"24px"}'>{{luntantieziCount}}</div>
						<div class="name" :style='{"margin":"5px 0","lineHeight":"24px","fontSize":"16px","color":"#666","height":"24px"}'>论坛帖子总数</div>
					</div>
				</div>
			</div>
			
			<div class="homeCharts">
				<div id="remendongmanMain1" v-if="crossBtnControl2('remendongman','首页统计')" class="graph" style="width: 100%;height:300px;"></div>
				<div id="luntantieziMain1" v-if="crossBtnControl2('luntantiezi','首页统计')" class="graph" style="width: 100%;height:300px;"></div>
				<div id="luntantieziMain2" v-if="crossBtnControl2('luntantiezi','首页统计')" class="graph" style="width: 100%;height:300px;"></div>
			</div>
		</div>
		<!-- /Main Content -->
	</div>
	
	<!-- Back to Top -->
	<a id="back-to-top" href="#" class="back-to-top">Top</a>
	<!-- /Back to Top -->
	
	<%@ include file="jsp/static/foot.jsp"%>
    <script src="${pageContext.request.contextPath}/resources/js/echarts.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/vue.min.js"></script>

	<script>
		<%@ include file="jsp/utils/menu.jsp"%>
		<%@ include file="jsp/static/setMenu.js"%>
		<%@ include file="jsp/utils/baseUrl.jsp"%>
        <%@ include file="jsp/static/crossBtnControl.js"%>
		// 用户登出
        <%@ include file="jsp/static/logout.jsp"%>
        var vm = new Vue({
            el: '#home-container',
            data: {
            yonghuCount: 0,
            remendongmanCount: 0,
            luntantieziCount: 0,
            }
        });
        function getyonghuCount() {
                $.ajax({
                    type: "GET",
                    url: baseUrl+`yonghu/count`,
                    beforeSend: function(xhr) {
                        xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));
                    },
                    success: function(data){
                        if(data.code == 0){
                            vm.yonghuCount = data.data;
                        }else if(data.code == 401){
                            <%@ include file="jsp/static/toLogin.jsp"%>
                        }else{
                            alert(data.msg);
                        }
                    },
                });
        }
        function getremendongmanCount() {
                $.ajax({
                    type: "GET",
                    url: baseUrl+`remendongman/count`,
                    beforeSend: function(xhr) {
                        xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));
                    },
                    success: function(data){
                        if(data.code == 0){
                            vm.remendongmanCount = data.data;
                        }else if(data.code == 401){
                            <%@ include file="jsp/static/toLogin.jsp"%>
                        }else{
                            alert(data.msg);
                        }
                    },
                });
        }
        function getluntantieziCount() {
                $.ajax({
                    type: "GET",
                    url: baseUrl+`luntantiezi/count`,
                    beforeSend: function(xhr) {
                        xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));
                    },
                    success: function(data){
                        if(data.code == 0){
                            vm.luntantieziCount = data.data;
                        }else if(data.code == 401){
                            <%@ include file="jsp/static/toLogin.jsp"%>
                        }else{
                            alert(data.msg);
                        }
                    },
                });
        }







                function remendongmanchartDialog1(){

                    $.ajax({
                        type: "GET",
                        url: baseUrl+"remendongman/group/shipinfenlei",
                        beforeSend: function(xhr) {
                            xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));
                        },
                        success: function(data){
                            if(data.code == 0){
                                if(data.data != null){
                                    let res = data.data;
                                    let xAxis = [];
                                    let yAxis = [];
                                    let pArray = []
                                    for(let i=0;i<res.length;i++){
                                        xAxis.push(res[i].shipinfenlei);
                                        yAxis.push(parseFloat((res[i].total)));
                                        pArray.push({
                                            value: parseFloat((res[i].total)),
                                            name: res[i].shipinfenlei
                                        })
                                    }

                                    var myChart = echarts.init(document.getElementById('remendongmanMain1'),'macarons');
                                    var option = {};
                                    option = {
                                            title: {
                                                text: '动漫分类',
                                                left: 'center'
                                            },
                                            legend: {
                                              orient: 'vertical',
                                              left: 'left'
                                            },
                                            tooltip: {
                                              trigger: 'item',
                                              formatter: '{b} : {c} ({d}%)'
                                            },
                                            series: [
                                                {
                                                    type: 'pie',
                                                    radius: '55%',
                                                    center: ['50%', '60%'],
                                                    data: pArray,
                                                    emphasis: {
                                                        itemStyle: {
                                                            shadowBlur: 10,
                                                            shadowOffsetX: 0,
                                                            shadowColor: 'rgba(0, 0, 0, 0.5)'
                                                        }
                                                    }
                                                }
                                            ]
                                    };

                                    // 使用刚指定的配置项和数据显示图表。
                                    myChart.setOption(option);
                                }
                            }else if(data.code == 401){
                                <%@ include file="jsp/static/toLogin.jsp"%>
                            }else{
                                alert(data.msg);
                            }
                        },
                    });
                }






                function luntantiezichartDialog1(){

                    $.ajax({
                        type: "GET",
                        url: baseUrl+"luntantiezi/group/tiezifenlei",
                        beforeSend: function(xhr) {
                            xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));
                        },
                        success: function(data){
                            if(data.code == 0){
                                if(data.data != null){
                                    let res = data.data;
                                    let xAxis = [];
                                    let yAxis = [];
                                    let pArray = []
                                    for(let i=0;i<res.length;i++){
                                        xAxis.push(res[i].tiezifenlei);
                                        yAxis.push(parseFloat((res[i].total)));
                                        pArray.push({
                                            value: parseFloat((res[i].total)),
                                            name: res[i].tiezifenlei
                                        })
                                    }

                                    var myChart = echarts.init(document.getElementById('luntantieziMain1'),'macarons');
                                    var option = {};
                                    option = {
                                            title: {
                                                text: '分类占比',
                                                left: 'center'
                                            },
                                            legend: {
                                              orient: 'vertical',
                                              left: 'left'
                                            },
                                            tooltip: {
                                              trigger: 'item',
                                              formatter: '{b} : {c} ({d}%)'
                                            },
                                            series: [
                                                {
                                                    type: 'pie',
                                                    radius: '55%',
                                                    center: ['50%', '60%'],
                                                    data: pArray,
                                                    emphasis: {
                                                        itemStyle: {
                                                            shadowBlur: 10,
                                                            shadowOffsetX: 0,
                                                            shadowColor: 'rgba(0, 0, 0, 0.5)'
                                                        }
                                                    }
                                                }
                                            ]
                                    };

                                    // 使用刚指定的配置项和数据显示图表。
                                    myChart.setOption(option);
                                }
                            }else if(data.code == 401){
                                <%@ include file="jsp/static/toLogin.jsp"%>
                            }else{
                                alert(data.msg);
                            }
                        },
                    });
                }

                function luntantiezichartDialog2(){

                    $.ajax({
                        type: "GET",
                        url: baseUrl+"luntantiezi/group/yonghuxingming",
                        beforeSend: function(xhr) {
                            xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));
                        },
                        success: function(data){
                            if(data.code == 0){
                                if(data.data != null){
                                    let res = data.data;
                                    let xAxis = [];
                                    let yAxis = [];
                                    let pArray = []
                                    for(let i=0;i<res.length;i++){
                                        xAxis.push(res[i].yonghuxingming);
                                        yAxis.push(parseFloat((res[i].total)));
                                        pArray.push({
                                            value: parseFloat((res[i].total)),
                                            name: res[i].yonghuxingming
                                        })
                                    }

                                    var myChart = echarts.init(document.getElementById('luntantieziMain2'),'macarons');
                                    var option = {};
                                    option = {
                                        title: {
                                            text: '发贴统计',
                                            left: 'center'
                                        },
                                        tooltip: {
                                          trigger: 'item',
                                          formatter: '{b} : {c}'
                                        },
                                        xAxis: {
                                            type: 'category',
                                            data: xAxis
                                        },
                                        yAxis: {
                                            type: 'value'
                                        },
                                        series: [{
                                            data: yAxis,
                                            type: 'bar'
                                        }]
                                    };

                                    // 使用刚指定的配置项和数据显示图表。
                                    myChart.setOption(option);
                                }
                            }else if(data.code == 401){
                                <%@ include file="jsp/static/toLogin.jsp"%>
                            }else{
                                alert(data.msg);
                            }
                        },
                    });
                }






		$(document).ready(function() {
		//我的后台,session信息转移
		if(window.localStorage.getItem("Token") != null && window.localStorage.getItem("Token") != 'null'){
			  if(window.sessionStorage.getItem("token") == null || window.sessionStorage.getItem("token") == 'null'){
				  window.sessionStorage.setItem("token",window.localStorage.getItem("Token"));
				  window.sessionStorage.setItem("role",window.localStorage.getItem("role"));
				  window.sessionStorage.setItem("accountTableName",window.localStorage.getItem("sessionTable"));
				  window.sessionStorage.setItem("username",window.localStorage.getItem("adminName"));
			  }
		  }			
          $('.dropdown-menu h5').html(window.sessionStorage.getItem('username')+'('+window.sessionStorage.getItem('role')+')')
		  $('.sidebar-header h3 a').html(projectName)
		  var token = window.sessionStorage.getItem("token");
		  if(token == "null" || token == null){
		  	alert("请登录后再操作");
		  	window.location.href = ("jsp/login.jsp");
		  }
			setMenu();
			<%@ include file="jsp/static/myInfo.js"%>
            getyonghuCount();
            getremendongmanCount();
            remendongmanchartDialog1()
            getluntantieziCount();
            luntantiezichartDialog1()
            luntantiezichartDialog2()
		});
	</script>
</body>

</html>
