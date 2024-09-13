<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>注册</title>
		<!-- bootstrap样式，地图插件使用 -->
		<link rel="stylesheet" href="../../css/bootstrap.min.css" />
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style>
		.layui-form.add .layui-form-item .layui-form-select .layui-input {
						padding: 0 30px 0 10px;
						margin: 0;
						color: #333;
						font-size: 14px;
						border-color: #9dcde9;
						line-height: 40px;
						border-radius: 4px;
						outline: none;
						background: linear-gradient(320deg, rgba(204,204,204,.0) 0%, rgba(255,255,255,.9) 80%, rgba(204,204,204,.0) 100%);
						width: 360px;
						border-width: 0 0 2px;
						border-style: dotted;
						height: 40px;
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
		
			<div class="data-add-container" :style='{"width":"100%","padding":"30px 20px 40px","margin":"10px auto","position":"relative","background":"rgba(255,255,255,.3)"}'>
				<form class="layui-form layui-form-pane add" lay-filter="myForm">
					<div :style='{"alignItems":"center","margin":"0 0 10px 0","display":"flex"}' class="layui-form-item">
						<div :style='{"width":"120px","padding":"0 15px","lineHeight":"40px","textAlign":"right"}' class="label">动漫名称：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#9dcde9","color":"#333","outline":"none","borderRadius":"4px","borderWidth":"0 0 2px","background":"linear-gradient(320deg, rgba(204,204,204,.0) 0%, rgba(255,255,255,.9) 80%, rgba(204,204,204,.0) 100%)","width":"360px","fontSize":"14px","lineHeight":"40px","borderStyle":"dotted","height":"40px"}' v-model="detail.dongmanmingcheng" type="text" :readonly="ro.dongmanmingcheng" name="dongmanmingcheng" id="dongmanmingcheng" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"alignItems":"center","margin":"0 0 10px 0","display":"flex"}' class="layui-form-item">
						<div :style='{"width":"120px","padding":"0 15px","lineHeight":"40px","textAlign":"right"}' class="label">视频分类</div>
						<select name="shipinfenlei" id="shipinfenlei" lay-filter="shipinfenlei"  >
							<option value="">请选择</option>
							<option v-for="(item,index) in shipinfenlei" v-bind:key="index" :value="item">{{item}}</option>
						</select>
					</div>
					<div :style='{"alignItems":"center","margin":"0 0 10px 0","display":"flex"}' class="layui-form-item">
						<div :style='{"width":"120px","padding":"0 15px","lineHeight":"40px","textAlign":"right"}' class="label">标签：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#9dcde9","color":"#333","outline":"none","borderRadius":"4px","borderWidth":"0 0 2px","background":"linear-gradient(320deg, rgba(204,204,204,.0) 0%, rgba(255,255,255,.9) 80%, rgba(204,204,204,.0) 100%)","width":"360px","fontSize":"14px","lineHeight":"40px","borderStyle":"dotted","height":"40px"}' v-model="detail.biaoqian" type="text" :readonly="ro.biaoqian" name="biaoqian" id="biaoqian" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"alignItems":"center","margin":"0 0 10px 0","display":"flex"}' class="layui-form-item">
						<div :style='{"width":"120px","padding":"0 15px","lineHeight":"44px","textAlign":"right"}' class="label">动漫图片：</div>
						<img :style='{"width":"180px","margin":"0 10px 0 0","objectFit":"cover","height":"100px"}' v-if="detail.dongmantupian" id="dongmantupianImg" :src="baseurl+detail.dongmantupian">
						<input v-if="detail.dongmantupian" type="hidden" :value="detail.dongmantupian" id="dongmantupian" name="dongmantupian" />
						<button v-if="!ro.dongmantupian" :style='{"cursor":"pointer","border":"0","padding":"0px 15px","margin":"0","borderColor":"#9dcde9","color":"#3086b9","outline":"none","borderRadius":"0px","background":"#fff","borderWidth":"0 0 2px","width":"auto","fontSize":"14px","lineHeight":"40px","borderStyle":"dotted","height":"40px"}' type="button" class="layui-btn btn-theme" id="dongmantupianUpload">
							<i :style='{"color":"#3086b9","margin":"0 10px 0 0","fontSize":"14px"}' class="layui-icon">&#xe67c;</i>上传动漫图片
						</button>
					</div>
					<div :style='{"alignItems":"center","margin":"0 0 10px 0","display":"flex"}' class="layui-form-item">
						<div :style='{"width":"120px","padding":"0 15px","lineHeight":"40px","textAlign":"right"}' class="label">动漫作者：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#9dcde9","color":"#333","outline":"none","borderRadius":"4px","borderWidth":"0 0 2px","background":"linear-gradient(320deg, rgba(204,204,204,.0) 0%, rgba(255,255,255,.9) 80%, rgba(204,204,204,.0) 100%)","width":"360px","fontSize":"14px","lineHeight":"40px","borderStyle":"dotted","height":"40px"}' v-model="detail.dongmanzuozhe" type="text" :readonly="ro.dongmanzuozhe" name="dongmanzuozhe" id="dongmanzuozhe" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"alignItems":"center","margin":"20px 0 10px 0","display":"flex"}' class="layui-form-item">
						<div :style='{"width":"120px","padding":"0 15px","lineHeight":"44px","textAlign":"right"}' class="label">视频简介：</div>
						<video :style='{"width":"320px","padding":"0","margin":"0","borderRadius":"4px","background":"#000"}' v-if="detail.shipinjianjie" :src="detail.shipinjianjie" controls="controls">
							您的浏览器不支持视频播放
						</video>
						<input v-if="detail.shipinjianjie" type="hidden" :value="detail.shipinjianjie" id="shipinjianjie" name="shipinjianjie" />
						<button :style='{"cursor":"pointer","border":"0","padding":"0px 15px","margin":"0 0 0 10px","borderColor":"#9dcde9","color":"#3086b9","outline":"none","borderRadius":"4px","background":"#fff","borderWidth":"0 0 2px","width":"auto","fontSize":"14px","lineHeight":"40px","borderStyle":"dotted","height":"40px"}' type="button" class="layui-btn btn-theme" id="shipinjianjieUpload">
							<i :style='{"color":"#3086b9","margin":"0 10px 0 0","fontSize":"14px"}' class="layui-icon">&#xe67c;</i>上传视频简介
						</button>
					</div>
					<div :style='{"alignItems":"center","margin":"0 0 10px 0","display":"flex"}' class="layui-form-item">
						<div :style='{"width":"120px","padding":"0 15px","lineHeight":"40px","textAlign":"right"}' class="label">发布日期：</div>
						<input :style='{"border":"1px solid #eee","padding":"0 10px","margin":"0","borderColor":"#9dcde9","color":"#333","outline":"none","borderRadius":"4px","borderWidth":"0 0 2px","background":"linear-gradient(320deg, rgba(204,204,204,.0) 0%, rgba(255,255,255,.9) 80%, rgba(204,204,204,.0) 100%)","width":"360px","fontSize":"14px","lineHeight":"40px","borderStyle":"dotted","height":"40px"}' type="text" name="faburiqi" id="faburiqi" autocomplete="off" class="layui-input" >
					</div>
					<div :style='{"alignItems":"center","margin":"20px 0 10px 0","display":"flex"}' class="layui-form-item">
						<div :style='{"width":"120px","padding":"0 15px","lineHeight":"44px","textAlign":"right"}' class="label">动漫下载：</div>
						<input type="hidden" :value="detail.dongmanxiazai" id="dongmanxiazai" name="dongmanxiazai" />
						<button :style='{"cursor":"pointer","border":"0","padding":"0px 15px","margin":"0","borderColor":"#9dcde9","color":"#3086b9","outline":"none","borderRadius":"0px","background":"#fff","borderWidth":"0 0 2px","width":"auto","fontSize":"14px","lineHeight":"40px","borderStyle":"dotted","height":"40px"}' type="button" class="layui-btn btn-theme" id="dongmanxiazaiUpload">
							<i :style='{"color":"#3086b9","margin":"0 10px 0 0","fontSize":"14px"}' class="layui-icon">&#xe67c;</i>上传动漫下载
						</button>
						<a :style='{"cursor":"pointer","padding":"0px 15px","margin":"0 0 0 10px","borderColor":"#9dcde9","color":"#3086b9","outline":"none","borderRadius":"4px","background":"#fff","borderWidth":"0 0 2px","width":"auto","fontSize":"14px","lineHeight":"40px","borderStyle":"dotted","height":"40px"}' download="动漫下载" :href="detail.dongmanxiazai">
							<i :style='{"color":"#3086b9","margin":"0 10px 0 0","fontSize":"14px"}' class="layui-icon">&#xe67c;</i>下载
						</a>
					</div>
					<div :style='{"alignItems":"center","margin":"0 0 10px 0","display":"flex"}' class="layui-form-item">
						<div :style='{"width":"120px","padding":"0 15px","lineHeight":"40px","textAlign":"right"}' class="label">在线网址：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#9dcde9","color":"#333","outline":"none","borderRadius":"4px","borderWidth":"0 0 2px","background":"linear-gradient(320deg, rgba(204,204,204,.0) 0%, rgba(255,255,255,.9) 80%, rgba(204,204,204,.0) 100%)","width":"360px","fontSize":"14px","lineHeight":"40px","borderStyle":"dotted","height":"40px"}' v-model="detail.zaixianwangzhi" type="text" :readonly="ro.zaixianwangzhi" name="zaixianwangzhi" id="zaixianwangzhi" autocomplete="off" class="layui-input">
					</div>

					<div :style='{"alignItems":"center","margin":"0 0 10px 0","display":"flex"}' class="layui-form-item">
						<div :style='{"width":"120px","padding":"0 15px","lineHeight":"44px","textAlign":"right"}' class="label">简介：</div>
						<textarea :style='{"padding":"0","boxShadow":"0 0 0px rgba(75,223,201,.5)","margin":"20px 0 20px","borderColor":"#eee","backgroundColor":"#fff","borderRadius":"0","borderWidth":"1px","width":"100%","borderStyle":"solid","height":"auto"}' name="jianjie" id="jianjie">请输入简介</textarea>
					</div>

					<div :style='{"alignItems":"center","margin":"0 0 0 110px","display":"flex"}' class="layui-form-item">
						<button :style='{"cursor":"pointer","border":"0","padding":"0px 15px","margin":"0 10px","color":"#fff","minWidth":"80px","outline":"none","borderRadius":"4px","background":"linear-gradient(320deg, rgba(48,134,185,1) 0%, rgba(197,230,250,1) 80%, rgba(48,134,185,1) 100%),#3086b9","width":"auto","fontSize":"14px","lineHeight":"40px","height":"40px"}'  class="layui-btn btn-submit" lay-submit lay-filter="*">提交</button>
						<button :style='{"cursor":"pointer","border":"0","padding":"0px 15px","margin":"0 10px","color":"#333","minWidth":"80px","outline":"none","borderRadius":"4px","background":"linear-gradient(320deg, rgba(204,204,204,1) 0%, rgba(255,255,255,1) 80%, rgba(204,204,204,1) 100%),#999","width":"auto","fontSize":"14px","lineHeight":"40px","height":"40px"}' type="reset" class="layui-btn layui-btn-primary">重置</button>
					</div>
				</form>
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
		<!-- 校验格式工具类 -->
		<script src="../../js/validate.js"></script>
		<!-- 地图 -->
		<script type="text/javascript" src="../../js/jquery.js"></script>
		<script type="text/javascript" src="http://webapi.amap.com/maps?v=1.3&key=ca04cee7ac952691aa67a131e6f0cee0"></script>
		<script type="text/javascript" src="../../js/bootstrap.min.js"></script>
		<script type="text/javascript" src="../../js/bootstrap.AMapPositionPicker.js"></script>
		<script>
			var jquery = $;
			
			var vue = new Vue({
				el: '#app',
				data: {
					// 轮播图
					swiperList: [{
						img: '../../img/banner.jpg'
					}],
					baseurl: '',
					dataList: [],
					ro:{
                        dongmanmingcheng : false,
                        shipinfenlei : false,
                        biaoqian : false,
                        dongmantupian : false,
                        dongmanzuozhe : false,
                        shipinjianjie : false,
                        faburiqi : false,
                        dongmanxiazai : false,
                        jianjie : false,
                        zaixianwangzhi : false,
                        clicktime : false,
                        clicknum : false,
					},
                    detail: {
                        dongmanmingcheng: '',
                        shipinfenlei: '',
                        biaoqian: '',
                        dongmantupian: '',
                        dongmanzuozhe: '',
                        shipinjianjie: '',
                        faburiqi: '',
                        dongmanxiazai: '',
                        jianjie: '',
                        zaixianwangzhi: '',
                        clicktime: '',
                        clicknum: '',
                    },
					shipinfenlei: [],
					centerMenu: centerMenu
				},
				updated: function() {
					layui.form.render('select', 'myForm');
				},
                computed: {



                },
				methods: {
					jump(url) {
						jump(url)
					}
				}
			})


			layui.use(['layer', 'element', 'carousel', 'http', 'jquery', 'form', 'upload', 'laydate','tinymce'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var carousel = layui.carousel;
				var http = layui.http;
				var jquery = layui.jquery;
				var form = layui.form;
				var upload = layui.upload;
				var laydate = layui.laydate;
				var tinymce = layui.tinymce;
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
				http.request(`option/shipinfenlei/shipinfenlei`,'get',{},(res)=>{
					vue.shipinfenlei = res.data
				});
				// 上传图片
				var dongmantupianUpload = upload.render({
					//绑定元素
					elem: '#dongmantupianUpload',
					//上传接口
					url: http.baseurl + 'file/upload',
					// 请求头
					headers: {
						Token: localStorage.getItem('Token')
					},
					// 允许上传时校验的文件类型
					accept: 'images',
					before: function() {
						//loading层
						var index = layer.load(1, {
							shade: [0.1, '#fff'] //0.1透明度的白色背景
						});
					},
					// 上传成功
					done: function(res) {
						console.log(res);
						layer.closeAll();
						if (res.code == 0) {
							layer.msg("上传成功", {
								time: 2000,
								icon: 6
							})
							var url = 'upload/' + res.file;
							jquery('#dongmantupian').val(url);
							jquery('#dongmantupianImg').attr('src', http.baseurl +url)
							vue.detail.dongmantupian = url;
						} else {
							layer.msg(res.msg, {
								time: 2000,
								icon: 5
							})
						}
					},
					//请求异常回调
					error: function() {
						layer.closeAll();
						layer.msg("请求接口异常", {
							time: 2000,
							icon: 5
						})
					}
				});
                var shipinjianjieUpload = upload.render({
					//绑定元素
					elem: '#shipinjianjieUpload',
					//上传接口
					url: http.baseurl + 'file/upload',
					// 请求头
					headers: {
						Token: localStorage.getItem('Token')
					},
					// 允许上传时校验的文件类型
					accept: 'video',
					before: function() {
						//loading层
						var index = layer.load(1, {
							shade: [0.1, '#fff'] //0.1透明度的白色背景
						});
					},
					// 上传成功
					done: function(res) {
						console.log(res);
						layer.closeAll();
						if (res.code == 0) {
							layer.msg("上传成功", {
								time: 2000,
								icon: 6
							})
							var url = 'upload/' + res.file;
							jquery('#shipinjianjie').val(url);
							vue.detail.shipinjianjie = url;
						} else {
							layer.msg(res.msg, {
								time: 2000,
								icon: 5
							})
						}
					},
					//请求异常回调
					error: function() {
						layer.closeAll();
						layer.msg("请求接口异常", {
							time: 2000,
							icon: 5
						})
					}
				});
				jquery('#faburiqi').val(getCurDateTime());
				laydate.render({
					elem: '#faburiqi',
					type: 'datetime'
				});
                var dongmanxiazaiUpload = upload.render({
					//绑定元素
					elem: '#dongmanxiazaiUpload',
					//上传接口
					url: http.baseurl + 'file/upload',
					// 请求头
					headers: {
						Token: localStorage.getItem('Token')
					},
					// 允许上传时校验的文件类型
					accept: 'file',
					before: function() {
						//loading层
						var index = layer.load(1, {
							shade: [0.1, '#fff'] //0.1透明度的白色背景
						});
					},
					// 上传成功
					done: function(res) {
						console.log(res);
						layer.closeAll();
						if (res.code == 0) {
							layer.msg("上传成功", {
								time: 2000,
								icon: 6
							})
							var url = 'upload/' + res.file;
							jquery('#dongmanxiazai').val(url);
                            vue.detail.dongmanxiazai = url;
						} else {
							layer.msg(res.msg, {
								time: 2000,
								icon: 5
							})
						}
					},
					//请求异常回调
					error: function() {
						layer.closeAll();
						layer.msg("请求接口异常", {
							time: 2000,
							icon: 5
						})
					}
				});
                var edit = tinymce.render({
                    elem: "#jianjie",
                    height: 600,
                    images_upload_handler: function(blobInfo, succFun, failFun) {
                        var xhr, formData;
                        var file = blobInfo.blob(); //转化为易于理解的file对象
                        xhr = new XMLHttpRequest();
                        xhr.withCredentials = false;
                        xhr.open('POST', http.baseurl + 'file/upload');
                        xhr.setRequestHeader("Token", localStorage.getItem('Token')); //设置请求头
                        xhr.onload = function() {
                            var json;
                            if (xhr.status != 200) {
                                failFun('HTTP Error: ' + xhr.status);
                                return;
                            }
                            json = JSON.parse(xhr.responseText);
                            if (!json || typeof json.file != 'string') {
                                failFun('Invalid JSON: ' + xhr.responseText);
                                return;
                            }
                            succFun(http.baseurl + '/upload/' + json.file);
                        };
                        formData = new FormData();
                        formData.append('file', file, file.name); //此处与源文档不一样
                        xhr.send(formData);
                    }
                }, (opt) => {

                });
				laydate.render({
					elem: '#clicktime',
					type: 'datetime'
				});
				
                // session独取
				let table = localStorage.getItem("userTable");
				http.request(`${table}/session`, 'get', {}, function(data) {
					// 表单赋值
					//form.val("myForm", data.data);
					data = data.data
					for(var key in data){
					}
				});

                // 跨表计算
                if(http.getParam('corss')){
					var obj = JSON.parse(localStorage.getItem('crossObj'));
					//form.val("myForm", obj);
					for(var o in obj){
                        if(o=='dongmanmingcheng'){
                                vue.detail[o] = obj[o];
                                vue.ro.dongmanmingcheng = true;
                                continue;
                        }
                        if(o=='shipinfenlei'){
                                vue.detail[o] = obj[o];
                                vue.ro.shipinfenlei = true;
                                continue;
                        }
                        if(o=='biaoqian'){
                                vue.detail[o] = obj[o];
                                vue.ro.biaoqian = true;
                                continue;
                        }
                        if(o=='dongmantupian'){
                                vue.detail[o] = obj[o]?obj[o].split(",")[0]:'';
                                vue.ro.dongmantupian = true;
                                continue;
                        }
                        if(o=='dongmanzuozhe'){
                                vue.detail[o] = obj[o];
                                vue.ro.dongmanzuozhe = true;
                                continue;
                        }
                        if(o=='shipinjianjie'){
                                vue.detail[o] = obj[o];
                                vue.ro.shipinjianjie = true;
                                continue;
                        }
                        if(o=='faburiqi'){
                                vue.detail[o] = obj[o];
                                vue.ro.faburiqi = true;
                                jquery('#faburiqi').val(obj[o]);
                                continue;
                        }
                        if(o=='dongmanxiazai'){
                                vue.detail[o] = obj[o];
                                vue.ro.dongmanxiazai = true;
                                continue;
                        }
                        if(o=='jianjie'){
                                vue.detail[o] = obj[o];
                                vue.ro.jianjie = true;
                                continue;
                        }
                        if(o=='zaixianwangzhi'){
                                vue.detail[o] = obj[o];
                                vue.ro.zaixianwangzhi = true;
                                continue;
                        }
                        if(o=='clicktime'){
                                vue.detail[o] = obj[o];
                                vue.ro.clicktime = true;
                                jquery('#clicktime').val(obj[o]);
                                continue;
                        }
                        if(o=='clicknum'){
                                vue.detail[o] = obj[o];
                                vue.ro.clicknum = true;
                                continue;
                        }
					}
				}
				

				// 提交
				form.on('submit(*)', function(data) {
					data = data.field;
					
                    // 数据校验
                    if(!data.dongmanmingcheng){
                        layer.msg('动漫名称不能为空', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!data.shipinfenlei){
                        layer.msg('视频分类不能为空', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!data.biaoqian){
                        layer.msg('标签不能为空', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
					var jianjie = tinymce.get('#jianjie').getContent()
					data.jianjie = jianjie;
                    if(!data.zaixianwangzhi){
                        layer.msg('在线网址不能为空', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!isURL(data.zaixianwangzhi)){
                        layer.msg('在线网址应输入网址格式', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!isIntNumer(data.clicknum)){
                        layer.msg('点击次数应输入整数', {
							time: 2000,
							icon: 5
						});
                        return false
                    }

					// 跨表计算判断
					
                    // 比较大小

                //更新跨表属性
               var crossuserid;
               var crossrefid;
               var crossoptnum;
                if(http.getParam('corss')){
                        var statusColumnName = localStorage.getItem('statusColumnName');
                        var statusColumnValue = localStorage.getItem('statusColumnValue');
                        if(statusColumnName!='') {
                                var obj = JSON.parse(localStorage.getItem('crossObj'));
				if(!statusColumnName.startsWith("[")) {
					for (var o in obj){
						if(o==statusColumnName){
							obj[o] = statusColumnValue;
						}
					}
					var table = localStorage.getItem('crossTable');
					http.requestJson(`${table}/update`,'post',obj,(res)=>{});
				} else {
                                       crossuserid=Number(localStorage.getItem('userid'));
                                       crossrefid=obj['id'];
                                       crossoptnum=localStorage.getItem('statusColumnName');
                                       crossoptnum=crossoptnum.replace(/\[/,"").replace(/\]/,"");
				}
                        }
                }
                        if(crossrefid && crossuserid) {
                                data.crossuserid=crossuserid;
                                data.crossrefid=crossrefid;
                                http.request('remendongman/list', 'get', {
                                        page: 1,
                                        limit: 10,
                                        crossuserid:crossuserid,
                                        crossrefid:crossrefid,
                                }, function(res) {
                                        if(res.data.total>=crossoptnum) {
                                                layer.msg(localStorage.getItem('tips'), {
                                                        time: 2000,
                                                        icon: 6
                                                })
                                             return false;
                                        } else {
                                            // 跨表计算



                                            // 提交数据
                                            http.requestJson('remendongman' + '/add', 'post', data, function(res) {
                                                    layer.msg('提交成功', {
                                                            time: 2000,
                                                            icon: 6
                                                    }, function() {
                                                            back();
                                                    });
                                             });
                                        }
                                });
                        } else {
                                // 跨表计算

                                // 提交数据
                                http.requestJson('remendongman' + '/add', 'post', data, function(res) {
                                        layer.msg('提交成功', {
                                                time: 2000,
                                                icon: 6
                                        }, function() {
                                                back();
                                        });
                                 });
                        }
			return false
			});
		});
		</script>
	</body>
</html>
