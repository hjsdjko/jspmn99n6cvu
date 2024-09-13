<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!-- 注册 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>注册</title>
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style type="text/css">
		html, body {
			height: 100%;
		}
		
		#registerForm .form-item .layui-form-select .layui-input {
						border-radius: 0px;
						padding: 0 10px;
						box-shadow: 0 0 0px rgba(64, 158, 255, .5);
						outline: none;
						color: #333;
						width: 100%;
						font-size: 14px;
						border-color: #c4deee;
						border-width: 0 0 2px;
						border-style: dotted;
						height: 44px;
					}
	</style>
	<body>
		<div id="register" class="register" :style='{"minHeight":"100vh","width":"100%","alignItems":"center","background":"url(http://codegen.caihongy.cn/20221231/7a3226bd0dfc41549fbee764c9f6552d.jpg) no-repeat center top / 100% 100%","justifyContent":"center","display":"flex"}'>
			<form id="registerForm" class="layui-form login-form" :style='{"padding":"20px","boxShadow":"0 0px 0px rgba(0, 0, 0, .1)","margin":"0","borderRadius":"30px","flexWrap":"wrap","background":"rgba(255,255,255,.0)","display":"flex","width":"800px","justifyContent":"center","height":"auto"}' lay-filter="myForm">
				<div v-if="true" :style='{"width":"100%","margin":"0 0 4px","fontSize":"24px","color":"#3086b9","textAlign":"center","textShadow":"0px 0px 0px rgba(64, 158, 255, .5)"}'>USER / REGISTER</div>
				<div v-if="true" :style='{"margin":"0 auto 20px","borderColor":"#c4deee","color":"#3086b9","textAlign":"center","background":"none","borderWidth":"4px 0px","width":"80%","lineHeight":"44px","fontSize":"22px","borderStyle":"dotted dashed","textShadow":"0px 0px 0px rgba(64, 158, 255, .5)"}'>普通管理员注册</p></div>
			

				<div :style='{"width":"80%","padding":"0","margin":"0 auto 15px","height":"auto"}' class="form-item">
					<div v-if="false" :style='{"width":"64px","lineHeight":"44px","fontSize":"14px","color":"rgba(64, 158, 255, 1)"}'>账号：</div>
					<input :style='{"padding":"0 10px","boxShadow":"0 0 0px rgba(64, 158, 255, .5)","outline":"none","borderColor":"#c4deee","color":"#333","borderRadius":"0px","borderWidth":"0 0 2px","width":"100%","fontSize":"14px","borderStyle":"dotted","height":"40px"}' type="text"   id="zhanghao" name="zhanghao" placeholder="请输入账号" autocomplete="off" class="layui-input">
				</div>
                <div :style='{"width":"80%","padding":"0","margin":"0 auto 15px","height":"auto"}' class="form-item">
					<div v-if="false" :style='{"width":"64px","lineHeight":"44px","fontSize":"14px","color":"rgba(64, 158, 255, 1)"}'>密码：</div>
					<input :style='{"padding":"0 10px","boxShadow":"0 0 0px rgba(64, 158, 255, .5)","outline":"none","borderColor":"#c4deee","color":"#333","borderRadius":"0px","borderWidth":"0 0 2px","width":"100%","fontSize":"14px","borderStyle":"dotted","height":"40px"}' type="password" name="mima" required lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
				</div>
                <div :style='{"width":"80%","padding":"0","margin":"0 auto 15px","height":"auto"}' class="form-item">
                    <div v-if="false" :style='{"width":"64px","lineHeight":"44px","fontSize":"14px","color":"rgba(64, 158, 255, 1)"}'>确认密码：</div>
                    <input :style='{"padding":"0 10px","boxShadow":"0 0 0px rgba(64, 158, 255, .5)","outline":"none","borderColor":"#c4deee","color":"#333","borderRadius":"0px","borderWidth":"0 0 2px","width":"100%","fontSize":"14px","borderStyle":"dotted","height":"40px"}' type="password" name="mima2" required lay-verify="required" placeholder="请再次输入密码" autocomplete="off" class="layui-input">
                </div>
				<div :style='{"width":"80%","padding":"0","margin":"0 auto 15px","height":"auto"}' class="form-item">
					<div v-if="false" :style='{"width":"64px","lineHeight":"44px","fontSize":"14px","color":"rgba(64, 158, 255, 1)"}'>头像：</div>
                    <div :style='{"alignItems":"center","display":"flex"}'>
						<img id="touxiangImg" :style='{"minHeight":"80px","width":"80px","margin":"0 10px 0 0","objectFit":"cover","height":"auto"}' src="../../img/avator.png">
						<input type="hidden" id="touxiang" name="touxiang" />
						<button :style='{"cursor":"pointer","border":"0","padding":"0px 15px","margin":"0","borderColor":"#c4deee","color":"#3086b9","outline":"none","borderRadius":"0px","background":"#f6f6f6","borderWidth":"0 0 2px","width":"auto","fontSize":"14px","lineHeight":"40px","borderStyle":"dotted","height":"40px"}' type="button" class="layui-btn btn-theme" id="touxiangUpload">
							<i :style='{"color":"#3086b9","margin":"0 10px 0 0","fontSize":"14px"}' class="layui-icon">&#xe67c;</i>上传图片
						</button>
					</div>
                </div>
				<div :style='{"width":"80%","padding":"0","margin":"0 auto 15px","height":"auto"}' class="form-item">
					<div v-if="false" :style='{"width":"64px","lineHeight":"44px","fontSize":"14px","color":"rgba(64, 158, 255, 1)"}'>姓名：</div>
					<input :style='{"padding":"0 10px","boxShadow":"0 0 0px rgba(64, 158, 255, .5)","outline":"none","borderColor":"#c4deee","color":"#333","borderRadius":"0px","borderWidth":"0 0 2px","width":"100%","fontSize":"14px","borderStyle":"dotted","height":"40px"}' type="text"   id="xingming" name="xingming" placeholder="请输入姓名" autocomplete="off" class="layui-input">
				</div>

				<button :style='{"border":"0","cursor":"pointer","padding":"0 10px","boxShadow":"0 0 0px rgba(64, 158, 255, .5)","margin":"20px 20px 10px 0","color":"#fff","display":"block","outline":"none","borderRadius":"8px","background":"linear-gradient(320deg, rgba(48,134,185,1) 0%, rgba(197,230,250,1) 80%, rgba(48,134,185,1) 100%)","width":"140px","fontSize":"16px","height":"40px"}' class="layui-btn btn-submit" lay-submit lay-filter="register">注册</button>
				<button :style='{"border":"0","cursor":"pointer","padding":"0 10px","boxShadow":"0 0 0px rgba(64, 158, 255, .5)","margin":"20px 0 10px","color":"#333","display":"block","outline":"none","borderRadius":"8px","background":"linear-gradient(320deg, rgba(204,204,204,1) 0%, rgba(255,255,255,1) 80%, rgba(204,204,204,1) 100%),#999","width":"140px","fontSize":"16px","height":"40px"}' type="reset" class="layui-btn layui-btn-primary">重置</button>
				<a :style='{"cursor":"pointer","padding":"0 10%","color":"#333","textAlign":"left","display":"inline-block","width":"100%","lineHeight":"1ppx","fontSize":"12px","textDecoration":"none"}' style="color: inherit;" href="javascript:window.location.href='../login/login.jsp'">已有账号？去登录</a>
			</form>
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
        <script src="../../js/xm-select.js"></script>
				<script>
			var vue = new Vue({
			  el: '#register',
              data: {
              },
              updated: function() {
                  layui.form.render(null, 'myForm');
              },
			  methods: {
				
			  }
			});
			
            layui.use(['layer', 'element', 'carousel', 'http', 'jquery', 'form', 'upload', 'laydate'], function() {
                var layer = layui.layer;
                var element = layui.element;
                var carousel = layui.carousel;
                var http = layui.http;
                var jquery = layui.jquery;
                var form = layui.form;
                var upload = layui.upload;
                var laydate = layui.laydate;
				var tablename = http.getParam('tablename');

                // 上传图片
                var touxiangUpload = upload.render({
                    //绑定元素
                    elem: '#touxiangUpload',
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
                            jquery('#touxiang').val(url);
                            jquery('#touxiangImg').attr('src', http.baseurl+url)
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
				// 注册
				form.on('submit(register)', function(data) {
					data = data.field;
                    if(!data.zhanghao){
                        layer.msg('账号不能为空', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!data.mima){
                        layer.msg('密码不能为空', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!data.touxiang){
                        layer.msg('头像不能为空', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!data.xingming){
                        layer.msg('姓名不能为空', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(data.mima!=data.mima2) {
                        layer.msg('两次密码输入不一致', {
							time: 2000,
							icon: 5
                        });
                        return false
                    }
                    var url = tablename + '/register';
                    http.requestJson(url, 'post', data, function(res) {
						layer.msg('注册成功', {
							time: 2000,
							icon: 6
						},function(){
							// 路径访问设置
							window.location.href = '../login/login.jsp';
						});
					});
					return false
				});
			});
		</script>
	</body>
</html>
