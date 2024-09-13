<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!-- 论坛帖子 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>论坛帖子</title>
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style>
		.layui-form .layui-form-item .layui-form-select .layui-input {
						border: 1px solid #d2e9f6;
						border-radius: 4px;
						padding: 0 30px 0 10px;
						box-shadow: inset 0px 0px 24px 0px rgba(48,134,185,.2);
						margin: 0;
						outline: none;
						color: #333;
						width: 120px;
						font-size: 14px;
						line-height: 40px;
						height: 40px;
					}
		
		/* lists */
		.lists .animation-box {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.lists .animation-box:hover {
						-webkit-perspective: 1000px;
						perspective: 1000px;
						transition: 0.3s;
					}
		
		.lists img {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.lists img:hover {
						transform: scale(0.9);
						-webkit-perspective: 1000px;
						perspective: 1000px;
						transition: 0.3s;
					}
		/* lists */
	</style>
	<body>
		<div id="app">
			<!-- 轮播图 -->
			<div id="layui-carousel" class="layui-carousel">
				<div carousel-item>
					<div class="layui-carousel-item" v-for="(item,index) in swiperList" :key="index">
						<img :src="item.img" />
					</div>
				</div>
			</div>
			<!-- 轮播图 -->
			
			<div id="breadcrumb">
				<span class="en">DATA SHOW</span>
				<span class="cn">论坛帖子展示</span>
			</div>

			<!-- 图文列表 -->
			<div class="recommend" :style='{"width":"100%","margin":"10px auto","position":"relative","background":"none"}'>
				<div class="category-1" :style='{"width":"100%","padding":"16px 20px 20px","flexWrap":"wrap","background":"#98c6e2","display":"flex","height":"auto"}'>
					<div class="category-search" :index="-1" :style='swiperIndex == -1 ? {"cursor":"pointer","margin":"0 0px 0 0","borderColor":"#98c6e2 #5fa6d0 #98c6e2 #5fa6d0","color":"#fff","borderRadius":"0px","textAlign":"center","background":"linear-gradient(180deg, rgba(88,157,199,1) 0%, rgba(170,208,231,1) 50%, rgba(95,166,208,1) 100%),#3086b9","width":"auto","lineHeight":"40px","fontSize":"14px"} : {"cursor":"pointer","padding":"0 10px","margin":"0","borderColor":"#98c6e2 #ccc #98c6e2 #ccc","color":"#666","textAlign":"center","borderRadius":"0px","background":"linear-gradient(180deg, rgba(232,232,232,1) 0%, rgba(255,255,255,1) 50%, rgba(212,211,211,1) 100%),#fff","borderWidth":"8px 16px 8px 16px","width":"auto","lineHeight":"40px","fontSize":"14px","borderStyle":"solid","height":"60px"}'>全部</div>
					<div class="category-search" :index="index" :style='swiperIndex == index ? {"cursor":"pointer","margin":"0 0px 0 0","borderColor":"#98c6e2 #5fa6d0 #98c6e2 #5fa6d0","color":"#fff","borderRadius":"0px","textAlign":"center","background":"linear-gradient(180deg, rgba(88,157,199,1) 0%, rgba(170,208,231,1) 50%, rgba(95,166,208,1) 100%),#3086b9","width":"auto","lineHeight":"40px","fontSize":"14px"} : {"cursor":"pointer","padding":"0 10px","margin":"0","borderColor":"#98c6e2 #ccc #98c6e2 #ccc","color":"#666","textAlign":"center","borderRadius":"0px","background":"linear-gradient(180deg, rgba(232,232,232,1) 0%, rgba(255,255,255,1) 50%, rgba(212,211,211,1) 100%),#fff","borderWidth":"8px 16px 8px 16px","width":"auto","lineHeight":"40px","fontSize":"14px","borderStyle":"solid","height":"60px"}' v-for="(item,index) in categoryList" :key="index">
						{{categoryList[index]}}
					</div>
				</div>

					
				<form class="layui-form filter" :style='{"padding":"20px 10px","alignItems":"center","flexWrap":"wrap","background":"#f5f5f5","display":"flex","width":"100%","justifyContent":"center","height":"auto"}'>

					<div :style='{"alignItems":"center","margin":"0 4px 0 0","display":"flex"}' class="item-list">
						<div class="lable" :style='{"width":"auto","padding":"0 10px","lineHeight":"42px"}'>动漫主题</div>
						<input type="text" :style='{"border":"1px solid #d2e9f6","padding":"0 10px","boxShadow":"inset 0px 0px 24px 0px rgba(48,134,185,.2)","margin":"0","outline":"none","color":"#333","borderRadius":"4px","width":"140px","fontSize":"14px","lineHeight":"40px","height":"40px"}' name="dongmanzhuti" id="dongmanzhuti" placeholder="动漫主题" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"alignItems":"center","margin":"0 4px 0 0","display":"flex"}' class="item-list">
						<div class="lable" :style='{"width":"auto","padding":"0 10px","lineHeight":"42px"}'>用户账号</div>
						<input type="text" :style='{"border":"1px solid #d2e9f6","padding":"0 10px","boxShadow":"inset 0px 0px 24px 0px rgba(48,134,185,.2)","margin":"0","outline":"none","color":"#333","borderRadius":"4px","width":"140px","fontSize":"14px","lineHeight":"40px","height":"40px"}' name="yonghuzhanghao" id="yonghuzhanghao" placeholder="用户账号" autocomplete="off" class="layui-input">
					</div>

					<button :style='{"cursor":"pointer","border":"0","padding":"0px 10px","margin":"0 4px 0 0","outline":"none","color":"#fff","borderRadius":"4px","background":"linear-gradient(320deg, rgba(48,134,185,1) 0%, rgba(197,230,250,1) 80%, rgba(48,134,185,1) 100%),#3086b9","width":"auto","fontSize":"14px","lineHeight":"42px","height":"42px"}' id="btn-search" type="button" class="layui-btn layui-btn-normal">
						<i :style='{"color":"#fff","margin":"0 10px 0 0","fontSize":"14px"}' class="layui-icon layui-icon-search"></i>搜索
					</button>
					<button :style='{"cursor":"pointer","border":"0","padding":"0px 10px","margin":"0 4px 0 0","outline":"none","color":"#fff","borderRadius":"4px","background":"linear-gradient(320deg, rgba(61,199,196,1) 0%, rgba(152,247,245,1) 80%, rgba(61,199,196,1) 100%),rgb(61,199,196)","width":"auto","fontSize":"14px","lineHeight":"42px","height":"42px"}' v-if="isAuth('luntantiezi','新增')" @click="jump('../luntantiezi/add.jsp')" type="button" class="layui-btn btn-theme">
						<i :style='{"color":"#fff","margin":"0 10px 0 0","fontSize":"14px"}' class="layui-icon">&#xe654;</i>添加
					</button>
				</form>
						
				<div :style='{"margin":"20px 0 10px","background":"none"}' class="lists">
					<!-- 样式二 -->
					<div :style='{"padding":"0 0px","flexWrap":"wrap","background":"none","display":"flex","width":"100%","justifyContent":"space-between","height":"auto"}' class="list list-2">
						<div :style='{"padding":"10px","boxShadow":"0px 0px 4px #eee","margin":"0 0 20px","borderColor":"#eee","display":"flex","justifyContent":"space-between","flexWrap":"wrap","background":"rgba(255,255,255,1)","borderWidth":"1px","width":"49%","position":"relative","borderStyle":"solid","height":"400px"}' @click="jump('../luntantiezi/detail.jsp?id='+item.id)" v-for="(item,index) in dataList" :key="index" class="list-item animation-box">
							<img :style='{"cursor":"pointer","verticalAlign":"middle","padding":"10px","borderColor":"#9dcde9","objectFit":"cover","borderWidth":"6px","display":"inline-block","width":"48%","borderStyle":"dotted","height":"100%"}' :src="item.fengmian?baseurl+item.fengmian.split(',')[0]:''">
							<div :style='{"width":"48%","padding":"0px 10px","verticalAlign":"middle","overflow":"hidden","display":"inline-block","height":"100%"}' class="item-info">
								<div :style='{"cursor":"pointer","padding":"0 10px","margin":"0 0 10px","borderColor":"#9dcde9","whiteSpace":"nowrap","color":"#333","overflow":"hidden","background":"none","borderWidth":"0 0 2px","lineHeight":"40px","fontSize":"14px","textOverflow":"ellipsis","borderStyle":"dotted"}' class="name">{{item.dongmanzhuti}}</div>
								<div v-if="item.price" :style='{"padding":"10px","lineHeight":"24px","fontSize":"14px","color":"#f00","textAlign":"right"}' class="time">￥{{Number(item.price).toFixed(2)}}</div>
								<div v-if="item.vipprice&&item.vipprice>0" :style='{"padding":"10px","lineHeight":"24px","fontSize":"14px","color":"#f00","textAlign":"right"}' class="time">￥{{Number(item.vipprice).toFixed(2)}} 会员价</div>
								<div v-if="item.jf" :style='{"padding":"10px","lineHeight":"24px","fontSize":"14px","color":"#f00","textAlign":"right"}' class="time">{{Number(item.jf).toFixed(0)}}积分</div>
							</div>
						</div>
					</div>
				</div>
				
				
				<div class="pager" id="pager"></div>
				
			</div>
		</div>


		<!-- layui -->
		<script src="../../layui/layui.js"></script>
		<!-- vue -->
		<script src="../../js/vue.js"></script>
		<!-- 组件配置信息 -->
		<script src="../../js/config.js"></script>
		<!-- 扩展插件配置信息 -->
		<script src="../../modules/config.js"></script>
		<!-- 工具方法 -->
		<script src="../../js/utils.js"></script>
		<script type="text/javascript" src="../../js/jquery.js"></script>
		<script>
			var vue = new Vue({
				el: '#app',
				data: {
					// 轮播图
					swiperList: [{
						img: '../../img/banner.jpg'
					}],
					categoryList: [],

				        tiezifenleiOptions: [],
					baseurl: '',
					dataList: []
				},
				methods: {
					isAuth(tablename, button) {
						return isFrontAuth(tablename, button)
					},
					jump(url) {
						jump(url)
					}
				}
			})

			layui.use(['form', 'layer', 'element', 'carousel', 'laypage', 'http', 'jquery','laydate', 'slider'], function() {
				var form = layui.form;
				var layer = layui.layer;
				var element = layui.element;
				var carousel = layui.carousel;
				var laypage = layui.laypage;
				var http = layui.http;
				var jquery = layui.jquery;
				var laydate = layui.laydate;
                var slider = layui.slider;
				var limit = 16;
				vue.baseurl = http.baseurl;
				// 获取轮播图 数据
				http.request('config/list', 'get', {
					page: 1,
					limit: 3
				}, function(res) {
					if (res.data.list.length > 0) {
						let swiperList = [];
						res.data.list.forEach(element => {
						  if (element.value != null) {
						    swiperList.push({
						      img: http.baseurl+element.value
						    });
						  }
						});
						vue.swiperList = swiperList;
						
						vue.$nextTick(() => {
							carousel.render({
								elem: '#layui-carousel',
								width: '100%',
								height: '400px',
								anim: 'default',
								autoplay: 'true',
								interval: '5000',
								arrow: 'hover',
								indicator: 'inside'
							});
						})
					}
				});
        			http.request(`option/tiezifenlei/tiezifenlei`,'get',{},(res)=>{
                			vue.tiezifenleiOptions = res.data
							vue.$nextTick(() => {form.render()})
        			});

				//类型查询
			      categoryList();
				//类型搜索
			      $(document).on("click", ".category-search", function(e){
					  vue.swiperIndex = $(this).attr('index')
				  pageList(e.target.innerText);
			      });

			      function categoryList() {
				  // 获取列表数据
				  http.request('option/tiezifenlei/tiezifenlei', 'get', {}, function(res) {
				    vue.categoryList = res.data
				  })

				}
			      var vCategory = '';


				// 分页列表
				pageList();

				// 搜索按钮
				jquery('#btn-search').click(function(e) {
					pageList();
				});

				function pageList(category) {
					var param = {
						page: 1,
						limit: limit
					}
				if(category!=null && category!='全部') {
					vCategory = category;
					if (jquery('#dongmanzhuti').val()) {
						param['dongmanzhuti'] = '';
					}
					if (jquery('#yonghuzhanghao').val()) {
						param['yonghuzhanghao'] = '';
					}
				}
				if(vCategory!='' && category!='全部') {
					param['tiezifenlei'] = category;
				}

			        if (jquery('#dongmanzhuti').val()) {
			          param['dongmanzhuti'] = jquery('#dongmanzhuti').val() ? '%' + jquery('#dongmanzhuti').val() + '%' : '';
			        }
			        if (jquery('#yonghuzhanghao').val()) {
			          param['yonghuzhanghao'] = jquery('#yonghuzhanghao').val() ? '%' + jquery('#yonghuzhanghao').val() + '%' : '';
			        }


			        param['sfsh'] = '是';

					// 获取列表数据
					http.request('luntantiezi/list', 'get', param, function(res) {
						vue.dataList = res.data.list
						// 分页
						laypage.render({
							elem: 'pager',
							count: res.data.total,
							limit: limit,
							groups: 5,
							layout: ["count","prev","page","next","limit","refresh","skip"],
							prev: '上一页',
							next: '下一页',
							jump: function(obj, first) {
								param.page = obj.curr;
								//首次不执行
								if (!first) {
									http.request('luntantiezi/list', 'get', param, function(res) {
										vue.dataList = res.data.list
									})
								}
							}
						});
					})
				}
			});
		</script>
	</body>
</html>
