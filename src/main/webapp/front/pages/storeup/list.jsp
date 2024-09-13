<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>
<!-- 收藏 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>收藏</title>
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style>
		.layui-laypage .layui-laypage-count {
		  padding: 0 10px;
		}
		
		.layui-laypage .layui-laypage-skip {
		  padding-left: 10px;
		}
		
		.data-list {
			display: flex;
			width: 100%;
			padding: 20px;
			background: #fff;
			flex-wrap: wrap;
		}
		
		.data-list .data-item {
			display: flex;
			flex-direction: column;
			width: 23%;
			margin: 0 1%;
		}
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
			
			<!-- 标题 -->
			<div v-if="storeupType==1" id="breadcrumb">
				<span class="en">USER / STOREUP</span>
				<span class="cn">我的收藏</span>
			</div>
			<!-- 标题 -->

			<!-- 图文列表 -->
			<div class="recommend" :style='{"width":"100%","margin":"10px auto","position":"relative","background":"none"}'>
				<form class="layui-form" :style='{"padding":"20px 10px","alignItems":"center","flexWrap":"wrap","background":"#f5f5f5","display":"flex","width":"100%","justifyContent":"center","height":"auto"}'>
					<div :style='{"alignItems":"center","margin":"0 4px 0 0","display":"flex"}' class="item-list">
						<div class="lable" :style='{"width":"auto","padding":"0 10px","lineHeight":"42px"}'>名称</div>
						<input :style='{"border":"1px solid #d2e9f6","padding":"0 10px","boxShadow":"inset 0px 0px 24px 0px rgba(48,134,185,.2)","margin":"0","outline":"none","color":"#333","borderRadius":"4px","width":"140px","fontSize":"14px","lineHeight":"40px","height":"40px"}' type="text" name="name" id="name" placeholder="名称" autocomplete="off" class="layui-input">
					</div>
					<button :style='{"cursor":"pointer","border":"0","padding":"0px 10px","margin":"0 4px 0 0","outline":"none","color":"#fff","borderRadius":"4px","background":"linear-gradient(320deg, rgba(48,134,185,1) 0%, rgba(197,230,250,1) 80%, rgba(48,134,185,1) 100%),#3086b9","width":"auto","fontSize":"14px","lineHeight":"42px","height":"42px"}' id="btn-search" type="button" class="layui-btn">
						<i :style='{"color":"#fff","margin":"0 10px 0 0","fontSize":"14px"}' class="layui-icon layui-icon-search"></i> 搜索
					</button>
				</form>
				<div class="data-list">
					<div @click="jump('../'+item.tablename+'/detail.jsp?id='+item.refid)" v-for="(item,index) in dataList" v-bind:key="index"
					 class="data-item">
						<img class="cover" :src="baseurl+item.picture" height="200px">
						<h3 v-if="item.remark" class="title">{{item.name}}</h3>
						<h3 v-if="!item.remark" class="title">{{item.name}}</h3>
					</div>
				</div>
				<div class="pager" id="pager"></div>
			</div>
			<!-- 图文列表 -->
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
		<script>
			var vue = new Vue({
				el: '#app',
				data: {
					// 轮播图
					swiperList: [{
						img: '../../img/banner.jpg'
					}],
					baseurl: '',
                    storeupType: 1,
					dataList: []
				},
				filters: {
					newsDesc: function(val) {
						if (val) {
							if (val.length > 200) {
								return val.substring(0, 200).replace(/<[^>]*>/g).replace(/undefined/g, '');
							} else {
								return val.replace(/<[^>]*>/g).replace(/undefined/g, '');
							}
						}
						return '';
					}
				},
				methods: {
					jump(url) {
						jump(url)
					}
				}
			})

			layui.use(['layer', 'element', 'carousel', 'laypage', 'http', 'jquery'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var carousel = layui.carousel;
				var laypage = layui.laypage;
				var http = layui.http;
				var jquery = layui.jquery;

				var limit = 8;
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
				// 分页列表
				pageList();

				// 搜索按钮
				jquery('#btn-search').click(function(e) {
					pageList();
				});

				function pageList() {
                    vue.storeupType = getRequest()['storeupType'];
					var param = {
						page: 1,
						limit: limit,
						type: 1,
						userid: localStorage.getItem('userid'),
                        type: vue.storeupType,
					}
					if (jquery('#name').val()) {
						param['name'] = jquery('#name').val() ? '%' + jquery('#name').val() + '%' : '';
					}
					// 获取列表数据
					http.request('storeup/list', 'get', param, function(res) {
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
									http.request('storeup/list', 'get', param, function(res) {
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
