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
		<link rel="stylesheet" href="../../layui/css/layui.css" />
		<link rel="stylesheet" href="../../css/swiper.min.css" />
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style>
		/* recommends */
		.recommends .list-3 .swiper-button-prev {
						left: 10px;
						right: auto;
					}
		
		.recommends .list-3 .swiper-button-prev::after {
						color: rgb(64, 158, 255);
					}
		
		.recommends .list-3 .swiper-button-next {
						left: auto;
						right: 10px;
					}
		
		.recommends .list-3 .swiper-button-next::after {
						color: rgb(64, 158, 255);
					}
		
		.recommends .list-5 .swiper-slide.swiper-slide-prev {
			position: relative;
			z-index: 3;
		}
		.recommends .list-5 .swiper-slide.swiper-slide-next {
			position: relative;
			z-index: 3;
		}
		.recommends .list-5 .swiper-slide.swiper-slide-active {
			position: relative;
			z-index: 5;
		}
		
		.recommends .list-5 .swiper-button-prev {
						left: 10px;
						right: auto;
					}
		
		.recommends .list-5 .swiper-button-prev::after {
						color: rgb(64, 158, 255);
					}
		
		.recommends .list-5 .swiper-button-next {
						left: auto;
						right: 10px;
					}
		
		.recommends .list-5 .swiper-button-next::after {
						color: rgb(64, 158, 255);
					}
		
		.recommends .animation-box {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.recommends .animation-box:hover {
						-webkit-perspective: 1000px;
						perspective: 1000px;
						transition: 0.3s;
					}
		
		.recommends img {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.recommends img:hover {
						transform: scale(0.9);
						-webkit-perspective: 1000px;
						perspective: 1000px;
						transition: 0.3s;
					}
		/* recommends */
		
		/* news */
		.news .list-3 .swiper-button-prev {
						left: 10px;
						right: auto;
					}
		
		.news .list-3 .swiper-button-prev::after {
						color: rgb(64, 158, 255);
					}
		
		.news .list-3 .swiper-button-next {
						left: auto;
						right: 10px;
					}
		
		.news .list-3 .swiper-button-next::after {
						color: rgb(64, 158, 255);
					}
		
		.news .list-6 .swiper-button-prev {
						left: 10px;
						right: auto;
					}
		
		.news .list-6 .swiper-button-prev::after {
						color: rgb(64, 158, 255);
					}
		
		.news .list-6 .swiper-button-next {
						left: auto;
						right: 10px;
					}
		
		.news .list-6 .swiper-button-next::after {
						color: rgb(64, 158, 255);
					}
		
		.news .animation-box {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.news .animation-box:hover {
						-webkit-perspective: 1000px;
						perspective: 1000px;
						transition: 0.3s;
					}
		
		.news img {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.news img:hover {
						transform: scale(0.9);
						-webkit-perspective: 1000px;
						perspective: 1000px;
						transition: 0.3s;
					}
		/* news */
		
		/* lists */
		.lists .list-3 .swiper-button-prev {
						left: 10px;
						right: auto;
					}
		
		.lists .list-3 .swiper-button-prev::after {
						color: rgb(64, 158, 255);
					}
		
		.lists .list-3 .swiper-button-next {
						left: auto;
						right: 10px;
					}
		
		.lists .list-3 .swiper-button-next::after {
						color: rgb(64, 158, 255);
					}
		
		.lists .list-5 .swiper-slide.swiper-slide-prev {
			position: relative;
			z-index: 3;
		}
		.lists .list-5 .swiper-slide.swiper-slide-next {
			position: relative;
			z-index: 3;
		}
		.lists .list-5 .swiper-slide.swiper-slide-active {
			position: relative;
			z-index: 5;
		}
		
		.lists .list-5 .swiper-button-prev {
						left: 10px;
						right: auto;
					}
		
		.lists .list-5 .swiper-button-prev::after {
						color: rgb(64, 158, 255);
					}
		
		.lists .list-5 .swiper-button-next {
						left: auto;
						right: 10px;
					}
		
		.lists .list-5 .swiper-button-next::after {
						color: rgb(64, 158, 255);
					}
		
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
						<img :src="baseurl+item.value" />
					</div>
				</div>
			</div>
			<!-- 轮播图 -->
			

			<div :style='{"width":"100%","margin":"10px auto"}'>
				<!-- 系统简介 -->
				<div :style='{"padding":"20px 30px 40px","boxShadow":"0 0px 0px rgba(255, 255, 255, .3)","margin":"20px auto 20px","borderColor":"#98c6e2","flexWrap":"wrap","background":"none","borderWidth":"0 0 8px","display":"flex","width":"100%","position":"relative","borderStyle":"dotted","height":"auto"}'>
					<div :style='{"minHeight":"56px","margin":"0 0 40px","color":"#fff","textAlign":"center","background":"url(http://codegen.caihongy.cn/20230101/6c449007e7a54a8892733c2b466c35cb.png) no-repeat center top","width":"100%","lineHeight":"56px","fontSize":"24px"}'>{{systemIntroductionDetail.title}}</div>
					<div :style='{"margin":"0 0 20px","color":"#999","textAlign":"center","display":"none","width":"100%","lineHeight":"1.5","fontSize":"20px"}'>{{systemIntroductionDetail.subtitle}}</div>
					<div :style='{"width":"100%","padding":"0 0px","flexWrap":"wrap","justifyContent":"space-between","display":"flex","height":"auto"}'>
						<img :style='{"padding":"10px","margin":"0 0px","borderColor":"#9dcde9","objectFit":"cover","borderWidth":"8px","background":"#fff","display":"block","width":"48%","borderStyle":"dotted","height":"350px"}' :src="baseurl + systemIntroductionDetail.picture1">
						<img :style='{"padding":"10px","margin":"0 0px","borderColor":"#9dcde9","objectFit":"cover","borderWidth":"1px","background":"#fff","display":"block","width":"48%","borderStyle":"dashed","height":"150px"}' :src="baseurl + systemIntroductionDetail.picture2">
						<img :style='{"margin":"0 10px","objectFit":"cover","flex":1,"display":"none","height":"120px"}' :src="baseurl + systemIntroductionDetail.picture3">
					</div>
					<div :style='{"padding":"10px","boxShadow":"0px 0px 4px #eee","margin":"0 0 10px 0","color":"rgb(102, 102, 102)","right":"30px","textIndent":"2em","overflow":"hidden","top":"296px","background":"#fff","width":"calc(48% - 30px)","lineHeight":"2","fontSize":"14px","position":"absolute","height":"188px"}' v-html="systemIntroductionDetail.content"></div>
					<div :style='{"width":"285px","background":"url(\"http://codegen.caihongy.cn/20221225/500f7c061d4f469baa2e032077dcccd4.jpeg\") 0% 0% / cover no-repeat","display":"none","height":"100px"}'></div>
					<div :style='{"width":"285px","background":"url(\"http://codegen.caihongy.cn/20221225/500f7c061d4f469baa2e032077dcccd4.jpeg\") 0% 0% / cover no-repeat","display":"none","height":"100px"}'></div>
					<div :style='{"width":"285px","background":"url(\"http://codegen.caihongy.cn/20221225/500f7c061d4f469baa2e032077dcccd4.jpeg\") 0% 0% / cover no-repeat","display":"none","height":"100px"}'></div>
					<div :style='{"width":"285px","background":"url(\"http://codegen.caihongy.cn/20221225/500f7c061d4f469baa2e032077dcccd4.jpeg\") 0% 0% / cover no-repeat","display":"none","height":"100px"}'></div>
				</div>
					

				<!-- 新闻资讯 -->
				<div class="news" :style='{"margin":"20px auto 20px","borderColor":"#98c6e2","flexWrap":"wrap","background":"none","borderWidth":"0 0 8px","display":"flex","width":"100%","borderStyle":"dotted"}'>
					<div v-if="false && 1 == 1" class="news-idea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
					
					<div class="title" :style='{"minHeight":"56px","padding":"0px 0","margin":"30px auto 30px","borderRadius":"0px","alignItems":"center","background":"url(http://codegen.caihongy.cn/20230101/6c449007e7a54a8892733c2b466c35cb.png) no-repeat center top","flexDirection":"column","display":"flex","width":"100%","justifyContent":"center"}'>
						<span :style='{"color":"#fff","fontSize":"18px","lineHeight":"24px"}'>HOME NEWS</span>
						<span :style='{"color":"#fff","fontSize":"18px","lineHeight":"24px"}'>动漫资讯</span>
					</div>
					
					<div v-if="false && 1 == 2" class="news-idea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
						
					<!-- 样式四 -->
				    <div :style='{"padding":"10px","flexWrap":"wrap","background":"none","display":"flex","width":"100%","justifyContent":"center","height":"auto"}' v-if="newsList.length" class="list list-4">
				        <div @click="jump('../news/detail.jsp?id='+newsList[0].id)" v-if="newsList.length>0" class="new-list-item animation-box" :style='{"width":"48%","padding":"10px","margin":"0 1% 0 0","background":"none","height":"300px","order":"1"}'>
							<div :style='{"cursor":"pointer","padding":"0 20px","margin":"0 0 0px","whiteSpace":"nowrap","overflow":"hidden","color":"#fff","textAlign":"left","background":"linear-gradient(320deg, rgba(48,134,185,1) 0%, rgba(197,230,250,1) 25%, rgba(48,134,185,1) 100%),#3086b9","fontSize":"14px","lineHeight":"32px","textOverflow":"ellipsis"}' class="new-list-item-title">{{newsList[0].title}}</div>
							<div :style='{"padding":"10px 10px","boxShadow":"0px 0px 4px #eee","margin":"0 0 10px","overflow":"hidden","color":"#666","background":"#fff","fontSize":"14px","lineHeight":"24px","textIndent":"2em","height":"212px"}' class="descript">{{newsList[0].introduction}}</div>
							<div :style='{"color":"#666","textAlign":"right","fontSize":"12px"}' class="time">{{newsList[0].addtime}}</div>
				        </div>
				        <div @click="jump('../news/detail.jsp?id='+newsList[0].id)" v-if="newsList.length>0" class="new-list-item animation-box" :style='{"padding":"10px","borderColor":"#9dcde9","margin":"0 1% 0 0","background":"rgba(255,255,255,.3)","borderWidth":"8px","width":"48%","borderStyle":"dotted","height":"300px","order":"2"}'>
							<img :style='{"cursor":"pointer","width":"100%","objectFit":"cover","height":"100%"}' :src="baseurl+newsList[0].picture" alt="">
				        </div>
				        <div @click="jump('../news/detail.jsp?id='+newsList[1].id)" v-if="newsList.length>1" class="new-list-item animation-box" :style='{"width":"48%","padding":"10px","margin":"1% 1% 0 0","background":"none","height":"300px","order":"4"}'>
							<div :style='{"cursor":"pointer","padding":"0 20px","margin":"0 0 0px","whiteSpace":"nowrap","overflow":"hidden","color":"#fff","textAlign":"left","background":"linear-gradient(320deg, rgba(48,134,185,1) 0%, rgba(197,230,250,1) 25%, rgba(48,134,185,1) 100%),#3086b9","fontSize":"14px","lineHeight":"32px","textOverflow":"ellipsis"}' class="new-list-item-title">{{newsList[1].title}}</div>
							<div :style='{"padding":"10px 10px","boxShadow":"0px 0px 4px #eee","margin":"0 0 10px","overflow":"hidden","color":"#666","background":"#fff","fontSize":"14px","lineHeight":"24px","textIndent":"2em","height":"212px"}' class="descript">{{newsList[1].introduction}}</div>
							<div :style='{"color":"#666","textAlign":"right","fontSize":"12px"}' class="time">{{newsList[1].addtime}}</div>
				        </div>
				        <div @click="jump('../news/detail.jsp?id='+newsList[1].id)" v-if="newsList.length>1" class="new-list-item animation-box" :style='{"padding":"10px","borderColor":"#9dcde9","margin":"0 1% 0 0","background":"rgba(255,255,255,.3)","borderWidth":"8px","width":"48%","borderStyle":"dotted","height":"300px","order":"3"}'>
							<img :style='{"cursor":"pointer","width":"100%","objectFit":"cover","height":"100%"}' :src="baseurl+newsList[1].picture" alt="">
				        </div>
				        <div @click="jump('../news/detail.jsp?id='+newsList[2].id)" v-if="newsList.length>2" class="new-list-item animation-box" :style='{"width":"48%","padding":"10px","margin":"1% 1% 0 0","background":"none","height":"300px","order":"5"}'>
							<div :style='{"cursor":"pointer","padding":"0 20px","margin":"0 0 0px","whiteSpace":"nowrap","overflow":"hidden","color":"#fff","textAlign":"left","background":"linear-gradient(320deg, rgba(48,134,185,1) 0%, rgba(197,230,250,1) 25%, rgba(48,134,185,1) 100%),#3086b9","fontSize":"14px","lineHeight":"32px","textOverflow":"ellipsis"}' class="new-list-item-title ">{{newsList[2].title}}</div>
							<div :style='{"padding":"10px 10px","boxShadow":"0px 0px 4px #eee","margin":"0 0 10px","color":"#666","background":"#fff","fontSize":"14px","lineHeight":"24px","textIndent":"2em","height":"212px"}' class="descript">{{newsList[2].introduction}}</div>
							<div :style='{"color":"#666","textAlign":"right","fontSize":"12px"}' class="time">{{newsList[2].addtime}}</div>
				        </div>
				        <div @click="jump('../news/detail.jsp?id='+newsList[2].id)" v-if="newsList.length>2" class="new-list-item animation-box" :style='{"padding":"10px","borderColor":"#9dcde9","margin":"0 1% 0 0","background":"rgba(255,255,255,.3)","borderWidth":"8px","width":"48%","borderStyle":"dotted","height":"300px","order":"6"}'>
							<img :style='{"cursor":"pointer","width":"100%","objectFit":"cover","height":"100%"}' :src="baseurl+newsList[2].picture" alt="">
				        </div>
				    </div>
				    
					<div :style='{"border":"0","cursor":"pointer","padding":"0 20px","margin":"20px auto 40px","borderColor":"#9dcde9","textAlign":"center","background":"#fff","borderWidth":"8px 0px 6px 0px","display":"inline-block","width":"auto","lineHeight":"40px","borderStyle":"dotted"}' @click="jump('../news/list.jsp')">
						<span :style='{"color":"#333","fontSize":"14px"}'>查看更多</span>
						<i v-if='true' :style='{"color":"#333","fontSize":"14px"}' class="layui-icon layui-icon-next"></i>
					</div>
					
					<div v-if="false && 1 == 3" class="recommend-idea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
				</div>
			<!-- 新闻资讯 -->

			
				

				<!-- 推荐 -->
				<div class="recommends" :style='{"padding":"0","margin":"20px auto","borderColor":"#98c6e2","flexWrap":"wrap","background":"none","borderWidth":"0 0 8px","display":"flex","width":"100%","borderStyle":"dotted"}'>
					<div v-if="false && 1 == 1" class="recommend-idea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
					
					<div class="title" :style='{"minHeight":"56px","padding":"0px 0","margin":"30px auto 20px","borderRadius":"0px","alignItems":"center","background":"url(http://codegen.caihongy.cn/20230101/6c449007e7a54a8892733c2b466c35cb.png) no-repeat center top","flexDirection":"column","display":"flex","width":"100%","justifyContent":"center"}'>
						<span :style='{"color":"#fff","fontSize":"18px","lineHeight":"24px"}'>Recommend</span>
						<span :style='{"color":"#fff","fontSize":"18px","lineHeight":"24px"}'>热门动漫推荐</span>
					</div>
					
					<div v-if="false && 1 == 2" class="recommend-idea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
				
					<!-- 样式一 -->
					<div class="list list-1" :style='{"padding":"0 10px","flexWrap":"wrap","background":"none","display":"flex","width":"100%","justifyContent":"space-between","height":"auto"}'>
						<div :style='{"cursor":"pointer","padding":"10px","boxShadow":"0px 0px 4px #eee","margin":"10px","borderColor":"#eee","background":"#fff","borderWidth":"1px","display":"inline-block","width":"23%","position":"relative","borderStyle":"solid","height":"auto"}' class="list-item animation-box" v-for="(item,index) in remendongmanRecommend" :key="index" @click="jump('../remendongman/detail.jsp?id='+item.id)">
							<img :style='{"padding":"10px","borderColor":"#9dcde9","objectFit":"cover","borderWidth":"4px","background":"#fff","display":"block","width":"100%","borderStyle":"dotted","height":"350px"}' :src="item.dongmantupian?baseurl+item.dongmantupian.split(',')[0]:''" alt="" />
							<div :style='{"padding":"4px 10px","borderColor":"#9dcde9","whiteSpace":"nowrap","overflow":"hidden","color":"#333","borderWidth":"0 0 1px","lineHeight":"30px","fontSize":"14px","textOverflow":"ellipsis","borderStyle":"dotted"}' class="name">{{item.dongmanmingcheng}}</div>
						</div>
					</div>
					<!-- 样式一 -->

					<div :style='{"border":"0","cursor":"pointer","padding":"0 20px","margin":"20px auto 40px","borderColor":"#9dcde9","textAlign":"center","background":"#fff","borderWidth":"8px 0px 6px 0px","display":"inline-block","width":"auto","lineHeight":"40px","borderStyle":"dotted"}' @click="jump('../remendongman/list.jsp')">
						<span :style='{"color":"#333","fontSize":"14px"}'>查看更多</span>
						<i v-if='true' :style='{"color":"#333","fontSize":"14px"}' class="layui-icon layui-icon-next"></i>
					</div>
					
					<div v-if="false && 1 == 3" class="recommend-idea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
				</div>
				<!-- 推荐 -->

            
			
				<!-- 关于我们 -->
				<div :style='{"padding":"40px 30px 40px","boxShadow":"0 1px 6px rgba(255, 255, 255, .3)","margin":"20px auto 20px","borderColor":"#98c6e2","display":"flex","justifyContent":"center","flexWrap":"wrap","background":"none","borderWidth":"0 0 8px","width":"100%","position":"relative","borderStyle":"dotted","height":"auto"}'>
					<div :style='{"minHeight":"56px","margin":"0 0 40px","color":"#fff","textAlign":"center","background":"url(http://codegen.caihongy.cn/20230101/6c449007e7a54a8892733c2b466c35cb.png) no-repeat center top","width":"100%","lineHeight":"56px","fontSize":"24px"}'>{{aboutUsDetail.title}}</div>
					<div :style='{"margin":"0 0 20px","color":"#999","textAlign":"center","display":"none","width":"100%","lineHeight":"1.5","fontSize":"20px"}'>{{aboutUsDetail.subtitle}}</div>
					<div :style='{"width":"50%","padding":"0 0px","flexWrap":"wrap","display":"flex","height":"auto"}'>
						<img :style='{"padding":"10px","boxShadow":"-1px 0px 0px #eee","margin":"0 0px","borderColor":"#9dcde9","objectFit":"cover","flex":1,"borderWidth":"8px 0px 8px 0px","background":"#fff","display":"block","width":"100%","borderStyle":"dotted","height":"400px"}' :src="baseurl+aboutUsDetail.picture1">
						<img :style='{"margin":"0 10px","objectFit":"cover","flex":1,"display":"none","height":"120px"}' :src="baseurl+aboutUsDetail.picture2">
						<img :style='{"margin":"0 10px","objectFit":"cover","flex":1,"display":"none","height":"120px"}' :src="baseurl+aboutUsDetail.picture3">
					</div>
					<div :style='{"padding":"20px","boxShadow":"1px 0px 0px #eee","margin":"20px 0 20px 0","borderColor":" #9dcde9","color":"rgb(102, 102, 102)","textIndent":"2em","overflow":"hidden","background":"#fff","borderWidth":"8px 0px 8px 0px","width":"50%","lineHeight":"2","fontSize":"16px","borderStyle":"dotted"}' v-html="aboutUsDetail.content"></div>
					<div :style='{"top":"220px","left":"calc(50% - 20px)","background":"url(http://codegen.caihongy.cn/20230101/c2711d6784224e83a8f793500d36ecf7.png) no-repeat","display":"block","width":"11px","position":"absolute","height":"23px","zIndex":"99"}'></div>
					<div :style='{"width":"285px","background":"url(\"http://codegen.caihongy.cn/20221225/500f7c061d4f469baa2e032077dcccd4.jpeg\") 0% 0% / cover no-repeat","display":"none","height":"100px"}'></div>
					<div :style='{"width":"285px","background":"url(\"http://codegen.caihongy.cn/20221225/500f7c061d4f469baa2e032077dcccd4.jpeg\") 0% 0% / cover no-repeat","display":"none","height":"100px"}'></div>
					<div :style='{"width":"285px","background":"url(\"http://codegen.caihongy.cn/20221225/500f7c061d4f469baa2e032077dcccd4.jpeg\") 0% 0% / cover no-repeat","display":"none","height":"100px"}'></div>
				</div>
			

				<div class="lists" :style='{"margin":"20px auto 20px","borderColor":"#98c6e2","flexWrap":"wrap","background":"none","borderWidth":"0 0 8px","display":"flex","width":"100%","borderStyle":"dotted"}'>
					<div v-if="false && 1 == 1" class="recommend-idea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
					
					<div class="title" :style='{"minHeight":"56px","padding":"0px 0","margin":"30px auto 30px","borderRadius":"0px","alignItems":"center","background":"url(http://codegen.caihongy.cn/20230101/6c449007e7a54a8892733c2b466c35cb.png) no-repeat center top","flexDirection":"column","display":"flex","width":"100%","justifyContent":"center"}'>
					  <span :style='{"color":"#fff","fontSize":"18px","lineHeight":"24px"}'>DATA SHOW</span>
					  <span :style='{"color":"#fff","fontSize":"18px","lineHeight":"24px"}'>论坛帖子展示</span>
					</div>
					
					<div v-if="false && 1 == 2" class="recommend-idea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
					
					<!-- 样式二 -->
				    <div :style='{"width":"100%","padding":"0 10px","flexWrap":"wrap","background":"none","display":"flex","height":"auto"}' class="list list-2">
						<div :style='{"padding":"10px","boxShadow":"0px 0px 4px #eee","margin":"10px","borderColor":"#eee","display":"flex","justifyContent":"space-between","flexWrap":"wrap","background":"#fff","borderWidth":"1px","width":"48%","position":"relative","borderStyle":"solid","height":"350px"}' v-for="(item,index) in luntantieziList" :key="index" @click="jump('../luntantiezi/detail.jsp?id='+item.id)" class="list-item animation-box">
							<img :style='{"cursor":"pointer","verticalAlign":"middle","padding":"10px","borderColor":"#9dcde9","objectFit":"cover","borderWidth":"4px","display":"inline-block","width":"48%","borderStyle":"dotted","height":"100%"}' :src="item.fengmian?baseurl+item.fengmian.split(',')[0]:''" alt="" />
							<div :style='{"width":"48%","padding":"0px 10px","verticalAlign":"middle","overflow":"hidden","display":"inline-block","height":"100%"}' class="item-info">
								<div :style='{"padding":"0 10px","borderColor":"#9dcde9","margin":"0 0 10px","whiteSpace":"nowrap","overflow":"hidden","color":"#333","borderWidth":"0 0 2px","lineHeight":"50px","fontSize":"14px","textOverflow":"ellipsis","borderStyle":"dotted"}' class="name">{{item.dongmanzhuti}}</div>
							</div>
						</div>
				    </div>
				    
					<div :style='{"border":"0","cursor":"pointer","padding":"0 20px","margin":"20px auto 40px","borderColor":"#9dcde9","textAlign":"center","background":"#fff","borderWidth":"8px 0px 6px 0px","display":"block","width":"auto","lineHeight":"40px","borderStyle":"dotted"}' @click="jump('../luntantiezi/list.jsp')">
						<span :style='{"color":"#333","fontSize":"14px"}'>查看更多</span>
						<i v-if='true' :style='{"color":"#333","fontSize":"14px"}' class="layui-icon layui-icon-next"></i>
					</div>
					
					<div v-if="false && 1 == 3" class="recommend-idea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
				</div>
			<!-- 图文列表 -->


			


			</div>
		</div>
		<script src="../../layui/layui.js"></script>
		<script src="../../js/swiper.min.js"></script>
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


                    // 推荐数据
					remendongmanRecommend: [],



                    luntantieziList: [],


                    aboutUsDetail:{},
                    systemIntroductionDetail: {},
                    // 轮播图
					swiperList: [],
					baseurl: '',
					// 新闻资讯
					newsList: [],
					leftNewsList: [],
					rightNewsList: []
				},
				filters: {
					newsDesc: function(val) {
						if (val) {
							if (val.length > 60) {
								return val.substring(0, 60).replace(/<[^>]*>/g).replace(/undefined/g, '');
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
					},
				}
			})

			layui.use(['layer', 'form', 'element', 'carousel', 'http', 'jquery'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var form = layui.form;
				var carousel = layui.carousel;
				var http = layui.http;
				var jquery = layui.jquery;
				vue.baseurl = http.baseurl;

				// 获取轮播图 数据
				http.request('config/list', 'get', {
					page: 1,
					limit: 3
				}, function(res) {
					if (res.data.list.length > 0) {
						vue.swiperList = res.data.list;
						
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

                http.request(`aboutus/detail/1`, 'get', {
                }, function(res) {
                    if(res.code == 0) {
                      vue.aboutUsDetail = res.data;
                    }
                });
                http.request(`systemintro/detail/1`, 'get', {
                }, function(res) {
                    if(res.code == 0) {
                      vue.systemIntroductionDetail = res.data;
                    }
                });

                // 新闻资讯
				http.request('news/list', 'get', {
					page: 1,
                    sort: 'addtime',
                    order: 'desc',
					limit: 6,
				}, function(res) {
					var newsList = res.data.list;
					
					vue.newsList = newsList;
					if (newsList.length > 0 && newsList.length <= 2) {
						vue.leftNewsList = res.data.list
					} else {
						var leftNewsList = []
						for (let i = 0; i <= 2; i++) {
							leftNewsList.push(newsList[i]);
						}
						vue.leftNewsList = leftNewsList
					}
					if (newsList.length > 2 && newsList.length <= 8) {
						var rightNewsList = []
						for (let i = 3; i <= newsList.length; i++) {
							rightNewsList.push(newsList[i]);
						}
						vue.rightNewsList = rightNewsList
					}
					
					let flag = 4;
					
					if(flag == 3) {
						let options = {"observer":true,"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},"observeParents":true,"loop":true,"slidesPerView":5,"speed":500,"spaceBetween":20,"autoplay":{"delay":3000,"disableOnInteraction":false}}
						options.pagination = {el:'null'}
						if(options.slidesPerView) {
							options.slidesPerView = Number(options.slidesPerView);
						}
						if(options.spaceBetween) {
							options.spaceBetween = Number(options.spaceBetween);
						}
						
						vue.$nextTick(() => {
							new Swiper ('#newsnews', options)
						})
					}
					
					if(flag == 6) {
						let options = {"observer":true,"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},"observeParents":true,"loop":true,"slidesPerView":"4","speed":500,"spaceBetween":10,"autoplay":{"delay":3000,"disableOnInteraction":false}}
						options.pagination = {el:'null'}
						if(options.slidesPerView) {
							options.slidesPerView = Number(options.slidesPerView);
						}
						if(options.spaceBetween) {
							options.spaceBetween = Number(options.spaceBetween);
						}
						options.centeredSlides = true
						options.watchSlidesProgress = true
						
						vue.$nextTick(() => {
							new Swiper('#new-list-6news', options)
						})
					}
				});

                

                // 获取推荐信息
      				var autoSortUrl = "remendongman/autoSort";
				if(localStorage.getItem('userid')!=null) {
					autoSortUrl = "remendongman/autoSort2";
				}
				http.request(autoSortUrl, 'get', {
					page: 1,
					limit: 8,
				}, function(res) {
					vue.remendongmanRecommend = res.data.list
					
					let flag = 1;
					if(flag == 3) {
						let options = {"observer":true,"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},"observeParents":true,"loop":true,"slidesPerView":5,"speed":500,"spaceBetween":20,"autoplay":{"delay":3000,"disableOnInteraction":false}}
						options.pagination = {el:'null'}
						
						if(options.slidesPerView) {
							options.slidesPerView = Number(options.slidesPerView);
						}
						if(options.spaceBetween) {
							options.spaceBetween = Number(options.spaceBetween);
						}
						
						vue.$nextTick(() => {
								new Swiper ('#recommendremendongman', options)
						})
					}
					
					// 商品推荐样式五
					if(flag == 5) {
						vue.$nextTick(() => {
							var swiper = new Swiper('#recommend-five-swiperremendongman', {
								loop: true,
								speed: 500,
								slidesPerView: Number(5),
								spaceBetween: Number(10),
								autoplay: {"delay":3000,"disableOnInteraction":false},
								centeredSlides: true,
								watchSlidesProgress: true,
								on: {
									setTranslate: function() {
										slides = this.slides
										for (i = 0; i < slides.length; i++) {
											slide = slides.eq(i)
											progress = slides[i].progress
											// slide.html(progress.toFixed(2)); //看清楚progress是怎么变化的
											slide.css({
												'opacity': '',
												'background': ''
											});
											slide.transform(''); //清除样式
							
											slide.transform('scale(' + (1.5 - Math.abs(progress) / 4) + ')');
										}
									},
									setTransition: function(transition) {
										for (var i = 0; i < this.slides.length; i++) {
											var slide = this.slides.eq(i)
											slide.transition(transition);
										}
									},
								},
								navigation: {"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},
							});
						})
					}
				});

				

                http.request(`luntantiezi/list`, 'get', {
					sfsh: '是',
					page: 1,
					limit: 6,
				}, function(res) {
					vue.luntantieziList = res.data.list
					
					let flag = 2;
					if(flag == 3) {
						let options = {"observer":true,"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},"observeParents":true,"loop":true,"slidesPerView":5,"speed":500,"spaceBetween":20,"autoplay":{"delay":3000,"disableOnInteraction":false}}
						options.pagination = {el:'null'}
						if(options.slidesPerView) {
							options.slidesPerView = Number(options.slidesPerView);
						}
						if(options.spaceBetween) {
							options.spaceBetween = Number(options.spaceBetween);
						}
						
						vue.$nextTick(() => {
							new Swiper ('#listsluntantiezi', options)
						})
					}
					// 商品列表样式五
					if(flag == 5) {
						vue.$nextTick(() => {
							var swiper = new Swiper('#lists-five-swiperluntantiezi', {
								loop: true,
								speed: 500,
								slidesPerView: Number(5),
								spaceBetween: Number(10),
								autoplay: {"delay":3000,"disableOnInteraction":false},
								centeredSlides: true,
								watchSlidesProgress: true,
								on: {
									setTranslate: function() {
										slides = this.slides
										for (i = 0; i < slides.length; i++) {
											slide = slides.eq(i)
											progress = slides[i].progress
											// slide.html(progress.toFixed(2)); //看清楚progress是怎么变化的
											slide.css({
												'opacity': '',
												'background': ''
											});
											slide.transform(''); //清除样式
							
											slide.transform('scale(' + (1.5 - Math.abs(progress) / 4) + ')');
										}
									},
									setTransition: function(transition) {
										for (var i = 0; i < this.slides.length; i++) {
											var slide = this.slides.eq(i)
											slide.transition(transition);
										}
									},
								},
								navigation: {"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},
							});
						})
					}
				});

				
			});
		</script>
	</body>
</html>
