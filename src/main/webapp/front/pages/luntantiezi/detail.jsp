<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!-- 首页 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>首页</title>
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style>
		#swiper .layui-carousel-arrow[lay-type=sub] {
						background: rgba(0,0,0,.2);
						width: 36px;
						font-size: 20px;
						height: 36px;
					}
		
		#swiper .layui-carousel-arrow[lay-type=sub]:hover {
						background: #3086b9;
						width: 36px;
						font-size: 20px;
						height: 36px;
					}
		
		#swiper .layui-carousel-arrow[lay-type=add] {
						background: rgba(0,0,0,.2);
						width: 36px;
						font-size: 20px;
						height: 36px;
					}
		
		#swiper .layui-carousel-arrow[lay-type=add]:hover {
						background: #3086b9;
						width: 36px;
						font-size: 20px;
						height: 36px;
					}
		
		#swiper .layui-carousel-ind {
						top: -35px;
						width: 100%;
						position: relative;
					}
		
		#swiper .layui-carousel-ind ul {
						border-radius: 10px;
						padding: 5px;
						background: rgba(0,0,0,.2);
						display: inline-block;
					}
		
		#swiper .layui-carousel-ind ul li {
						cursor: pointer;
						border-radius: 50%;
						margin: 0 3px;
						background: rgba(255,255,255,.5);
						display: inline-block;
						width: 10px;
						font-size: 14px;
						height: 10px;
					}
		
		#swiper .layui-carousel-ind ul li:hover {
						cursor: pointer;
						border-radius: 50%;
						margin: 0 3px;
						background: rgba(255,255,255,.7);
						display: inline-block;
						width: 10px;
						font-size: 14px;
						height: 10px;
					}
		
		#swiper .layui-carousel-ind ul li.layui-this {
						cursor: pointer;
						border-radius: 50%;
						margin: 0 3px;
						background: rgba(255,255,255,1);
						display: inline-block;
						width: 10px;
						font-size: 14px;
						height: 10px;
					}
		
		.layui-tab-card .layui-tab-title li {
						cursor: pointer;
						padding: 0 15px;
						margin: 6px 20px 0 0;
						color: #ddf2fe;
						font-size: 14px;
						border-color: #83c1e6;
						line-height: 32px;
						background: none;
						width: auto;
						border-width: 4px 4px 0;
						border-style: dotted;
						text-align: center;
						min-width: auto;
						height: 32px;
					}
		
		.layui-tab-card .layui-tab-title li:hover {
						cursor: pointer;
						padding: 0 15px;
						margin: 6px 10px 0 0;
						color: #ecf7fd;
						background: none;
						width: auto;
						font-size: 14px;
						border-color: #ddf2fe;
						line-height: 32px;
						text-align: center;
						min-width: auto;
					}
		
		.layui-tab-card .layui-tab-title li.layui-this {
						cursor: pointer;
						padding: 0 15px;
						margin: 6px 20px 0 0;
						color: #ecf7fd;
						font-size: 14px;
						border-color: #ddf2fe;
						line-height: 32px;
						background: none;
						width: auto;
						border-width: 4px 4px 0;
						border-style: dotted;
						text-align: center;
						min-width: auto;
						height: 32px;
					}
		
		.layui-tab-card .layui-tab-title li.layui-this::after {
			content: none;
		}
	</style>
	<body>
		<div id="app">
			<div id="layui-carousel" class="layui-carousel">
                <div carousel-item>
                    <div class="layui-carousel-item" v-for="(item,index) in swiperList2" :key="index">
                        <img :src="item.img" />
                    </div>
                </div>	
			</div>
		
			<div id="breadcrumb">
				<a class="en" href="../home/home.jsp">首页</a>
				<!-- <span class="en">DETAIL / INFORMATION</span> -->
				<span class="cn">{{title}}</span>
			</div>
			
			<div class="data-detail" :style='{"width":"100%","margin":"10px auto","position":"relative","background":"none"}'>
				<div :style='{"padding":"0px","borderColor":"#b2e2fe","overflow":"hidden","borderRadius":"0px","flexWrap":"wrap","background":"rgba(255,255,255,.3)","borderWidth":"6px","display":"flex","position":"relative","borderStyle":"dotted","justifyContent":"space-between"}'>
					
					<div class="layui-carousel" id="swiper" :style='{"width":"100%","margin":"20px auto 0","order":"1","height":"400px"}'>
						<div carousel-item>
							<div :style='{"borderRadius":"10px","width":"100%","height":"100%"}' v-if="swiperList.length" v-for="(item,index) in swiperList" :key="index">
								<img :style='{"border":"1px solid #eee","width":"100%","objectFit":"contain","background":"#fff","height":"100%"}' :src="baseurl+item" />
							</div>
						</div>
					</div>


					<div :style='{"padding":"0","margin":"0","top":"450px","left":"20px","background":"none","display":"flex","width":"48%","position":"absolute","justifyContent":"space-between","order":"3"}' class="tool-container">
						<div :style='{"cursor":"pointer","padding":"10px 0","margin":"0","borderColor":"#9dcde9","alignItems":"center","background":"#fff","borderWidth":"4px","display":"flex","width":"auto","minWidth":"120px","borderStyle":"dotted","justifyContent":"center"}' v-if='!thumbsupFlag&&!crazilyFlag' @click="thumbsupnumClick()">
							<i :style='{"color":"#666","margin":"0 3px","fontSize":"14px"}' class="layui-icon">&#xe6c6;</i>
							<span :style='{"color":"#666","margin":"0 3px","fontSize":"14px"}'>赞一下({{detail.thumbsupnum}})</span>
						</div>
						<div :style='{"cursor":"pointer","padding":"10px 0","margin":"0","borderColor":"#9dcde9","alignItems":"center","background":"#fff","borderWidth":"4px","display":"flex","width":"auto","minWidth":"120px","borderStyle":"dotted","justifyContent":"center"}' v-if='thumbsupFlag' @click="thumbsupnumClick()">
							<i :style='{"color":"#666","margin":"0 3px","fontSize":"14px"}' class="layui-icon">&#xe6c6;</i>
							<span :style='{"color":"#666","margin":"0 3px","fontSize":"14px"}'>取消赞({{detail.thumbsupnum}})</span>
						</div>
						<div :style='{"cursor":"pointer","padding":"10px 0","margin":"0","borderColor":"#9dcde9","alignItems":"center","background":"#fff","borderWidth":"4px","display":"flex","width":"auto","minWidth":"120px","borderStyle":"dotted","justifyContent":"center"}' v-if='!thumbsupFlag&&!crazilyFlag' @click="crazilynumClick()">
							<i :style='{"color":"#666","margin":"0 3px","fontSize":"14px"}' class="layui-icon">&#xe6c5;</i>
							<span :style='{"color":"#666","margin":"0 3px","fontSize":"14px"}'>踩一下({{detail.crazilynum}})</span>
						</div>
						<div :style='{"cursor":"pointer","padding":"10px 0","margin":"0","borderColor":"#9dcde9","alignItems":"center","background":"#fff","borderWidth":"4px","display":"flex","width":"auto","minWidth":"120px","borderStyle":"dotted","justifyContent":"center"}' v-if='crazilyFlag' @click="crazilynumClick()">
							<i :style='{"color":"#666","margin":"0 3px","fontSize":"14px"}' class="layui-icon">&#xe6c5;</i>
							<span :style='{"color":"#666","margin":"0 3px","fontSize":"14px"}'>取消踩({{detail.crazilynum}})</span>
						</div>
					</div>


					<div :style='{"minHeight":"500px","width":"48%","padding":"10px","margin":"0","background":"none","order":"2"}'>
						<div :style='{"padding":"6px 20px","boxShadow":"inset 0px 0px 0px 0px #93c8e7","margin":"0 0 10px 0","borderColor":"#b6e2fd","alignItems":"center","background":"linear-gradient(320deg, rgba(204,204,204,.0) 0%, rgba(255,255,255,.9) 80%, rgba(204,204,204,.0) 100%)","borderWidth":"0 0 2px","display":"flex","borderStyle":"dotted","justifyContent":"space-between"}'>
							<div :style='{"color":"#333","fontSize":"16px"}'>{{title}}</div>
							<div v-if='storeupFlag' :style='{"borderRadius":"20px","padding":"6px 10px","background":"#fff"}' @click="storeUp()">
								<i class="layui-icon" :style='{"color":"#fe8a01","fontSize":"14px"}'>&#xe67a;</i>
								<span :style='{"color":"#fe8a01","fontSize":"14px"}'>取消收藏</span>
							</div>
							<div v-if='!storeupFlag' :style='{"borderRadius":"20px","padding":"6px 10px","background":"#fff"}' @click="storeUp()">
								<i class="layui-icon" :style='{"color":"#fe8a01","fontSize":"14px"}'>&#xe67b;</i>
								<span :style='{"color":"#fe8a01","fontSize":"14px"}'>点我收藏</span>
							</div>
						</div>



						<div :style='{"padding":"0px 10px","boxShadow":"inset 0px 0px 0px 0px #ddd","margin":"0 0 10px 0","borderColor":"#9dcde9","background":"linear-gradient(320deg, rgba(204,204,204,.0) 0%, rgba(255,255,255,.9) 80%, rgba(204,204,204,.0) 100%)","borderWidth":"0 0 2px","display":"flex","borderStyle":"dotted","justifyContent":"spaceBetween"}' class="detail-item">
							<div :style='{"padding":"0 10px","color":"#666","textAlign":"right","width":"auto","fontSize":"14px","lineHeight":"40px","minWidth":"120px","height":"40px"}'>帖子分类：</div>
							<div  :style='{"width":"100%","padding":"8px 10px 0","fontSize":"14px","lineHeight":"24px","color":"#555","background":"none"}' class="desc">
								{{detail.tiezifenlei}}
							</div>
						</div>
						<div :style='{"padding":"0px 10px","boxShadow":"inset 0px 0px 0px 0px #ddd","margin":"0 0 10px 0","borderColor":"#9dcde9","background":"linear-gradient(320deg, rgba(204,204,204,.0) 0%, rgba(255,255,255,.9) 80%, rgba(204,204,204,.0) 100%)","borderWidth":"0 0 2px","display":"flex","borderStyle":"dotted","justifyContent":"spaceBetween"}' class="detail-item">
							<div :style='{"padding":"0 10px","color":"#666","textAlign":"right","width":"auto","fontSize":"14px","lineHeight":"40px","minWidth":"120px","height":"40px"}'>发布时间：</div>
							<div  :style='{"width":"100%","padding":"8px 10px 0","fontSize":"14px","lineHeight":"24px","color":"#555","background":"none"}' class="desc">
								{{detail.fabushijian}}
							</div>
						</div>
						<div :style='{"padding":"0px 10px","boxShadow":"inset 0px 0px 0px 0px #ddd","margin":"0 0 10px 0","borderColor":"#9dcde9","background":"linear-gradient(320deg, rgba(204,204,204,.0) 0%, rgba(255,255,255,.9) 80%, rgba(204,204,204,.0) 100%)","borderWidth":"0 0 2px","display":"flex","borderStyle":"dotted","justifyContent":"spaceBetween"}' class="detail-item">
							<div :style='{"padding":"0 10px","color":"#666","textAlign":"right","width":"auto","fontSize":"14px","lineHeight":"40px","minWidth":"120px","height":"40px"}'>用户账号：</div>
							<div  :style='{"width":"100%","padding":"8px 10px 0","fontSize":"14px","lineHeight":"24px","color":"#555","background":"none"}' class="desc">
								{{detail.yonghuzhanghao}}
							</div>
						</div>
						<div :style='{"padding":"0px 10px","boxShadow":"inset 0px 0px 0px 0px #ddd","margin":"0 0 10px 0","borderColor":"#9dcde9","background":"linear-gradient(320deg, rgba(204,204,204,.0) 0%, rgba(255,255,255,.9) 80%, rgba(204,204,204,.0) 100%)","borderWidth":"0 0 2px","display":"flex","borderStyle":"dotted","justifyContent":"spaceBetween"}' class="detail-item">
							<div :style='{"padding":"0 10px","color":"#666","textAlign":"right","width":"auto","fontSize":"14px","lineHeight":"40px","minWidth":"120px","height":"40px"}'>用户姓名：</div>
							<div  :style='{"width":"100%","padding":"8px 10px 0","fontSize":"14px","lineHeight":"24px","color":"#555","background":"none"}' class="desc">
								{{detail.yonghuxingming}}
							</div>
						</div>


						<div class="detail-item" :style='{"padding":"10px 0","flexWrap":"wrap","background":"none","display":"flex"}'>

						</div>
					</div>
					
				</div>
				



				<div class="layui-tab layui-tab-card" :style='{"border":"0","boxShadow":"0 0px 0px rgb(0 0 0 / 30%)","padding":"10px","margin":"20px 0 0","borderColor":"#b2e2fe","clear":"both","overflow":"hidden","borderRadius":"2px","background":"rgba(255,255,255,.3)","borderWidth":"6px","width":"100%","borderStyle":"dotted","order":"10"}'>
					<ul class="layui-tab-title" :style='{"border":"0","padding":"0 20px","fontSize":"0","background":"linear-gradient(320deg, rgba(48,134,185,1) 0%, rgba(197,230,250,1) 25%, rgba(48,134,185,1) 100%),#3086b9","height":"40px"}'>

						<li class="layui-this">内容</li>



						<li>评论</li>







					</ul>
					<div :style='{"padding":"15px","background":"#fff"}' class="layui-tab-content">

						<div class="layui-tab-item layui-show">
							<div v-html="detail.neirong"></div>
						</div>




						<div class="layui-tab-item" >
							<form class="layui-form message-form" :style='{"boxShadow":"0 0px 0px 0 rgba(0, 0, 0, .1)","padding":"15px","margin":"0 0 20px","borderColor":"#fff","borderWidth":"0px","background":"none","width":"100%","borderStyle":"dotted"}'>
								<div :style='{"width":"100%","display":"flex","height":"auto"}' class="layui-form-item layui-form-text">
									<label :style='{"width":"80px","padding":"0 10px 0 0","lineHeight":"40px","fontSize":"14px","color":"#666","textAlign":"right"}' class="layui-form-label">评论</label>
									<textarea :style='{"border":"0","padding":"15px","boxShadow":"0 0 0px rgba(64, 158, 255, .5)","borderColor":"#9dcde9","color":"#333","outline":"none","borderRadius":"4px","borderWidth":"2px","width":"1058px","lineHeight":"32px","fontSize":"14px","borderStyle":"dotted","height":"120px"}' name="content" required lay-verify="required" placeholder="请输入内容" class="layui-textarea"></textarea>
								</div>
								<div :style='{"width":"100%","padding":"0 0 0 80px","margin":"10px 0 0","height":"auto"}' class="layui-form-item">
									<button :style='{"border":"0","cursor":"pointer","padding":"0","margin":"0 20px 0 0","outline":"none","color":"rgba(255, 255, 255, 1)","borderRadius":"4px","background":"linear-gradient(320deg, rgba(48,134,185,1) 0%, rgba(197,230,250,1) 80%, rgba(48,134,185,1) 100%),#3086b9","width":"110px","lineHeight":"40px","fontSize":"14px","height":"40px"}' class="layui-btn btn-submit" lay-submit lay-filter="*">立即提交</button>
									<button :style='{"border":"0","cursor":"pointer","padding":"0","margin":"0 20px 0 0","outline":"none","color":"#333","borderRadius":"4px","background":"linear-gradient(320deg, rgba(204,204,204,1) 0%, rgba(255,255,255,1) 80%, rgba(204,204,204,1) 100%),#999","width":"110px","lineHeight":"40px","fontSize":"14px","height":"40px"}' type="reset" class="layui-btn layui-btn-primary">重置</button>
								</div>
							</form>
							
							<div class="message-list" :style='{"boxShadow":"0 0px 0px 0 rgba(0, 0, 0, .1)","padding":"15px","borderColor":"#fff","borderWidth":"0px","background":"none","width":"100%","borderStyle":"groove"}'>
								<div :style='{"padding":"8px 0","margin":"0 0 20px","borderColor":"#999","alignItems":"center","borderWidth":"0 0 0px 0","width":"100%","borderStyle":"solid","height":"auto"}' class="message-item" v-for="(item,index) in dataList" v-bind:key="index">
									<div :style='{"width":"100%","alignItems":"center","display":"flex","height":"auto"}' class="username-container">
										<img :style='{"width":"40px","margin":"0 10px 0 0","borderRadius":"100%","objectFit":"cover","height":"40px"}' class="avator" :src="baseurl + item.avatarurl">
										<div :style='{"color":"#333","fontSize":"16px"}' class="username">{{item.nickname}}</div>
									</div>
									<div :style='{"padding":"8px","boxShadow":"rgb(75 223 201 / 30%) 0px 0px 0px","margin":"10px 0px 0px","borderColor":"#9dcde9","color":"#333","borderRadius":"4px","background":"#f6fbfd","borderWidth":"2px","lineHeight":"30px","fontSize":"14px","borderStyle":"dotted"}'>
										{{item.content}}
									</div>
									<div :style='{"padding":"8px","boxShadow":"rgb(75 223 201 / 30%) 0px 0px 0px","margin":"10px 0px 0px","borderColor":"#9dcde9","color":"#333","borderRadius":"4px","background":"#f6fbfd","borderWidth":"2px","lineHeight":"30px","fontSize":"14px","borderStyle":"dotted"}' v-if="item.reply" class="content">
										回复:{{item.reply}}
									</div>
								</div>
							</div>
							<div class="pager" id="pager"></div>
						</div>







					</div>
				</div>
			</div>
		</div>

		<script src="../../layui/layui.js"></script>
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
                    swiperList2: [{
                        img: '../../img/banner.jpg'
                    }],
					swiperList: [],
					// 数据详情
					detail: {
						id: 0
					},
					// 商品标题
					title: '',
					// 倒计时
					count: 0,
					// 加入购物车数量
					buynumber: 1,
					// 当前详情页表
					detailTable: 'luntantiezi',
					baseurl: '',
					// 评论列表
					dataList: [],
					storeupFlag: 0,
					thumbsupFlag: 0,
					crazilyFlag: 0,
					// 选座座位列表
					numberList: []
				},
				// 倒计时效果
				computed: {
					SecondToDate: function() {
						var time = this.count;
						if (null != time && "" != time) {
							if (time > 60 && time < 60 * 60) {
								time =
									parseInt(time / 60.0) +
									"分钟" +
									parseInt((parseFloat(time / 60.0) - parseInt(time / 60.0)) * 60) +
									"秒";
							} else if (time >= 60 * 60 && time < 60 * 60 * 24) {
								time =
									parseInt(time / 3600.0) +
									"小时" +
									parseInt(
										(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
									) +
									"分钟" +
									parseInt(
										(parseFloat(
												(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
											) -
											parseInt(
												(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
											)) *
										60
									) +
									"秒";
							} else if (time >= 60 * 60 * 24) {
								time =
									parseInt(time / 3600.0 / 24) +
									"天" +
									parseInt(
										(parseFloat(time / 3600.0 / 24) - parseInt(time / 3600.0 / 24)) *
										24
									) +
									"小时" +
									parseInt(
										(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
									) +
									"分钟" +
									parseInt(
										(parseFloat(
												(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
											) -
											parseInt(
												(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
											)) *
										60
									) +
									"秒";
							} else {
								time = parseInt(time) + "秒";
							}
						}
						return time;
					}
				},
				//  清除定时器
				destroyed: function() {
					window.clearInterval(this.inter);
				},
				methods: {
                    // 初始化
                    init() {
                    },

					jump(url) {
						jump(url)
					},
					isAuth(tablename, button) {
						return isFrontAuth(tablename, button)
					},
					// 倒计时初始化
					countDown() {
						let reversetime = new Date(this.detail.reversetime).getTime()
						let now = new Date().getTime();
						let count = reversetime - now;
						if (count > 0) {
							this.count = count / 1000
							var _this = this;
							this.inter = window.setInterval(function() {
								_this.count = _this.count - 1;
								if (_this.count < 0) {
									window.clearInterval(_this.inter);
									layer.msg("活动已结束", {
										time: 2000,
										icon: 5
									})
								}
							}, 1000);
						}
					},

					// 赞
					thumbsupnumClick() {
						var _this=this;
						layui.http.request('storeup/list', 'get', {
							page: 1,
							limit: 1,
							type:'%2%',
							refid : this.detail.id,
							tablename : this.detailTable,
							userid: localStorage.getItem('userid'),
						}, (res) => {
							vue.dataList = res.data.list
							if(res.data.list.length==1) {
								layui.http.requestJson(`storeup/delete`, 'post', [res.data.list[0].id], function(res) {
									_this.detail.thumbsupnum = parseInt(_this.detail.thumbsupnum) - 1
									layui.http.requestJson(`${_this.detailTable}/update`, 'post', _this.detail, function(res2) {
										console.log(res2);
									})
									layer.msg('取消成功', {
										time: 1000,
										icon: 5
									}, function() {
										window.location.reload();
									});
								});
								return;
							}
							layui.http.requestJson('storeup/save', 'post', {
								userid: localStorage.getItem('userid'),
								type:'21',
								name: this.title,
								picture:vue.detail.fengmian.split(",")[0],
								refid: this.detail.id,
								tablename: this.detailTable
							}, function(res) {
								_this.detail.thumbsupnum = parseInt(_this.detail.thumbsupnum) + 1
								layui.http.requestJson(`${_this.detailTable}/update`, 'post', _this.detail, function(res2) {
									console.log(res2);
								})
								layer.msg('点赞成功', {
									time: 1000,
									icon: 6
								}, function() {
									window.location.reload();
								});
							});
						});
					},
					// 踩
					crazilynumClick() {
						var _this=this;
						layui.http.request('storeup/list', 'get', {
							page: 1,
							limit: 1,
							type:'%2%',
							refid : this.detail.id,
							tablename : this.detailTable,
							userid: localStorage.getItem('userid'),
						}, (res) => {
							vue.dataList = res.data.list
							if(res.data.list.length==1) {
								layui.http.requestJson(`storeup/delete`, 'post', [res.data.list[0].id], function(res) {
									_this.detail.crazilynum = parseInt(_this.detail.crazilynum) - 1
									layui.http.requestJson(`${_this.detailTable}/update`, 'post', _this.detail, function(res2) {
										console.log(res2);
									})
									layer.msg('取消成功', {
										time: 1000,
										icon: 5
									}, function() {
										window.location.reload();
									});
								});
								return;
							}
							layui.http.requestJson('storeup/save', 'post', {
								userid: localStorage.getItem('userid'),
								type:'22',
								name: this.title,
								picture:vue.detail.fengmian.split(",")[0],
								refid: this.detail.id,
								tablename: this.detailTable
							}, function(res) {
								_this.detail.crazilynum = parseInt(_this.detail.crazilynum) + 1
								layui.http.requestJson(`${_this.detailTable}/update`, 'post', _this.detail, function(res2) {
									console.log(res2);
								})
								layer.msg('点踩成功', {
									time: 1000,
									icon: 6
								}, function() {
									window.location.reload();
								});
							});
						});
					},
					// 下载文件
					downFile(url) {
						var download = $("#download");
						download.append(
							"<a id=\"down\" href=\"aaaa.txt\" target=\"_blank\" download=\"aaaa.txt\" style=\"display:none\">下载该文件</a>");
						console.log(download);
						$("#down")[0].click();
					},
					// 跨表
					onAcrossTap(acrossTable,statusColumnName,tips,statusColumnValue){
						localStorage.setItem('crossTable',`luntantiezi`);
						localStorage.setItem('crossObj', JSON.stringify(this.detail));
						localStorage.setItem('statusColumnName',statusColumnName);
						localStorage.setItem('statusColumnValue',statusColumnValue);
						localStorage.setItem('tips',tips);

						if(statusColumnName!=''&&!statusColumnName.startsWith("[")) {
							var obj = JSON.parse(localStorage.getItem('crossObj'));
							for (var o in obj){
								if(o==statusColumnName && obj[o]==statusColumnValue){
									layer.msg(tips, {
										time: 2000,
										icon: 5
									});
									return
								}
							}
						}

						jump(`../${acrossTable}/add.jsp?corss=true`);
					},




					// 收藏商品
					storeUp() {
						layui.http.request('storeup/list', 'get', {
							page: 1,
							limit: 1,
							type: 1,
							refid : this.detail.id,
							tablename : this.detailTable,
							userid: localStorage.getItem('userid'),
						}, (res) => {
							vue.dataList = res.data.list
							if(res.data.list.length==1) {
								layui.http.requestJson(`storeup/delete`, 'post', [res.data.list[0].id], function(res) {
									layer.msg('取消成功', {
										time: 1000,
										icon: 5
									}, function() {
										window.location.reload();
									});
								});
								return;
							}
							layui.http.requestJson('storeup/save', 'post', {
								userid: localStorage.getItem('userid'),
								name: this.title,
							    type:1,
								picture:vue.detail.fengmian.split(",")[0],
								refid: this.detail.id,
								tablename: this.detailTable
							}, function(res) {
								layer.msg('收藏成功', {
									time: 1000,
									icon: 6
								}, function() {
									window.location.reload();
								});
							});
						});
					},
					
				}
			})
			layui.use(['layer', 'form', 'element', 'carousel', 'http', 'jquery', 'laypage'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var form = layui.form;
				var carousel = layui.carousel;
				var http = layui.http;
				var jquery = layui.jquery;
				var laypage = layui.laypage;
				var limit = 10;
				// 数据ID
				var id = http.getParam('id');
				vue.detail.id = id;
				vue.baseurl = http.baseurl;
                vue.init();
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
                        vue.swiperList2 = swiperList;

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
				// 商品信息
				http.request(`${vue.detailTable}/detail/` + id, 'get', {}, function(res) {
					// 详情信息
					vue.detail = res.data
					vue.title = vue.detail.dongmanzhuti;
					// 轮播图片
					vue.swiperList = vue.detail.fengmian ? vue.detail.fengmian.split(",") : [];
					// 轮播图
					vue.$nextTick(() => {
						carousel.render({
							elem: '#swiper',
							width: '48%',
							height: '400px',
							anim: 'fade',
							autoplay: 'true',
							interval: '3000',
							arrow: 'always',
							indicator: 'inside'
						});
					})


				});
				if(localStorage.getItem('userid')){
					http.request(`storeup/list`, 'get', {
						page: 1,
						limit: 1,
						type:1,
						refid : vue.detail.id,
						tablename : vue.detailTable,
						userid: localStorage.getItem('userid'),
					}, function(res) {
						vue.storeupFlag = res.data.list.length;
					})
				}

				if(localStorage.getItem('userid')){
					http.request(`storeup/list`, 'get', {
						page: 1,
						limit: 1,
						type:'%2%',
						refid : vue.detail.id,
						tablename : vue.detailTable,
						userid: localStorage.getItem('userid'),
					}, function(res) {
						if(res.data.list.length>0) {
							if(res.data.list[0].type=='21') {
								vue.thumbsupFlag = 1;
							} else {
								vue.crazilyFlag = 1;
							}
						}
					})
				}




				// 获取评论
				http.request(`discuss${vue.detailTable}/list`, 'get', {
					page: 1,
					limit: limit,
					refid: vue.detail.id,
					//userid: localStorage.getItem('userid')
				}, function(res) {
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
							//首次不执行
							if (!first) {
								http.request(`discuss${vue.detailTable}/list`, 'get', {
									page: obj.curr,
									limit: obj.limit,
									userid: localStorage.getItem('userid')
								}, function(res) {
									vue.dataList = res.data.list
								})
							}
						}
					});
				})
				// 提交评论
				form.on('submit(*)', function(data) {
					data = data.field;
					data.userid = localStorage.getItem('userid')
					data.nickname = localStorage.getItem('adminName')
					data.refid = vue.detail.id
                    data.avatarurl = localStorage.getItem('headportrait')?localStorage.getItem('headportrait'):'';
                    var sensitiveWords = "垃圾,黄色网页,毒品,台独,港独,藏独,王八蛋,海洛因,白粉,你妈的,神经病,去死吧";
                    var sensitiveWordsArr = [];
                    if(sensitiveWords) {
                        sensitiveWordsArr = sensitiveWords.split(",");
                    }
                    for(var i=0; i<sensitiveWordsArr.length; i++){
                        //全局替换
                        var reg = new RegExp(sensitiveWordsArr[i],"g");
                        //判断内容中是否包括敏感词      
                        if (data.content.indexOf(sensitiveWordsArr[i]) > -1) {
                            // 将敏感词替换为 **
                            data.content = data.content.replace(reg,"**");
                        }
                    }
					http.requestJson(`discuss${vue.detailTable}/save`, 'post', data, function(res) {
						layer.msg('评论成功', {
							time: 2000,
							icon: 6
						}, function() {
							window.location.reload();
						});
						return false
					});
					return false
				});
			});
		</script>
	</body>
</html>
