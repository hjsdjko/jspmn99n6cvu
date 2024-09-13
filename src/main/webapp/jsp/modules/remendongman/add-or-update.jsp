<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cn">

<head>
	<%@ include file="../../static/head.jsp"%>
	<link href="http://www.bootcss.com/p/bootstrap-datetimepicker/bootstrap-datetimepicker/css/datetimepicker.css" rel="stylesheet">
	<script type="text/javascript" charset="utf-8">
	    window.UEDITOR_HOME_URL = "${pageContext.request.contextPath}/resources/ueditor/"; //UEDITOR_HOME_URL、config、all这三个顺序不能改变
	</script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/ueditor/ueditor.config.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/ueditor/ueditor.all.min.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
  	<style>
		label.error{
			color: red !important;
			width: auto !important;
		}
	</style>
<body>
	<div id="main-container">
		<!-- Top Navigation -->
		<%@ include file="../../static/topNav.jsp"%>
		
		<!-- Menu -->
		<div id="menu-container" class="navbar">
			<ul class="navbar-nav navbar-vertical" id="navUl">
				
			</ul>
		</div>
		<!-- /Menu -->
		
		<!-- Breadcrumb -->
		<div id="breadcrumb-container">
			<h3 class="breadcrumb-title">编辑热门动漫</h3>
			<ol class="breadcrumb-list">
				<li class="breadcrumb-item-home">
					<a href="#">
						<span class="ti-home"></span>
					</a>
				</li>
				<li class="breadcrumb-item-one"><span>热门动漫管理</span></li>
				<li class="breadcrumb-item-two"><span>编辑热门动漫</span></li>
			</ol>
		</div>

		<!-- Main Content -->
		<div id="add-container">
			<form id="addOrUpdateForm">
				<input id="updateId" name="id" type="hidden">
				<div class="form-item">
					<label>动漫名称</label>
					<input name="dongmanmingcheng" id="dongmanmingcheng" name="dongmanmingcheng" class="form-control" placeholder="请输入动漫名称">
				</div>
				<div class="form-item">
					<label>视频分类</label>
					<select id="shipinfenleiSelect" name="shipinfenlei" class="form-control">
							<option value="">请选择视频分类</option>
					</select>	
				</div>	
				<div class="form-item">
					<label>标签</label>
					<input name="biaoqian" id="biaoqian" name="biaoqian" class="form-control" placeholder="请输入标签">
				</div>
				<div class="form-item-img">
					<label>动漫图片</label>
                    <div style="display: flex;align-items: center;">
                        <div v-for="(item,index) in dongmantupianImgList" :key="index" style="position: relative;">
                            <div style="position: absolute;right: 10px;top: 0;width: 32px;height: 32px;background: #fff;padding: 6px;font-size: 0;cursor: pointer;border-radius: 0 20px 0 0;" @click="dongmantupianDelClick(index)">
                                <img src="../../../resources/images/shanchu.png" style="width: 20px;height: 20px;margin: 0;box-shadow: none;min-height:20px">
                            </div>
                            <img :src="baseUrl + item" width="100" height="100">
                        </div>
                    </div>
					<div class="upload btn-img">选择文件<input name="file" type="file" id="dongmantupianupload" class="form-control-file"></div>
					<input name="dongmantupian" id="dongmantupian-input" type="hidden">
				</div>

				<div class="form-item">
					<label>动漫作者</label>
					<input name="dongmanzuozhe" id="dongmanzuozhe" name="dongmanzuozhe" class="form-control" placeholder="请输入动漫作者">
				</div>
				<div class="form-item-file">
					<label>视频简介</label>
					<div class="upload btn-file">选择文件<input name="file" type="file" class="form-control-file" id="shipinjianjieupload"></div>
					<div id="shipinjianjieFileName" class="text"></div>
					<input name="shipinjianjie" id="shipinjianjie-input" type="hidden">
				</div>
				<div class="form-item">
					<label>发布日期</label>
					<input id="faburiqi-input" class="date" name="faburiqi" size="20" type="text" readonly placeholder="请选择发布日期">
				</div>
				<div class="form-item-file">
					<label>动漫下载</label>
					<div class="upload btn-file">选择文件<input name="file" type="file" class="form-control-file" id="dongmanxiazaiupload"></div>
					<div id="dongmanxiazaiFileName" class="text"></div>
					<input name="dongmanxiazai" id="dongmanxiazai-input" type="hidden">
				</div>
				<div class="form-item">
					<label>在线网址</label>
					<input name="zaixianwangzhi" id="zaixianwangzhi" name="zaixianwangzhi" class="form-control" placeholder="请输入在线网址">
				</div>
										
				<div class="form-item-file" >
					<label>简介</label>
					<div class="upload btn-file">
						插入图片
						<input id="jianjieupload" name="file" type="file">
					</div>
					<script id="jianjieEditor" type="text/plain"></script>
					<script type="text/javascript">
						//建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
					   //相见文档配置属于你自己的编译器
					 var jianjieUe = UE.getEditor('jianjieEditor', {
						toolbars: [
							[
								'undo', //撤销
								'bold', //加粗
								'redo', //重做
								'underline', //下划线
								'horizontal', //分隔线
								'inserttitle', //插入标题
								'cleardoc', //清空文档
								'fontfamily', //字体
								'fontsize', //字号
								'paragraph', //段落格式
								'inserttable', //插入表格
								'justifyleft', //居左对齐
								'justifyright', //居右对齐
								'justifycenter', //居中对
								'justifyjustify', //两端对齐
								'forecolor', //字体颜色
								'fullscreen', //全屏
								'edittip ', //编辑提示
								'customstyle', //自定义标题
								 ]
							]
						});
					</script>
					<input type="hidden" name="jianjie" id="jianjie-input">
				</div>
				<div class="form-btn">
					<button  id="submitBtn" type="button" class="btn btn-primary btn-add">提交</button>
					<button id="exitBtn" type="button" class="btn btn-primary btn-close">取消</button>
				</div>
			</form>
		</div>
	</div>
	
	<!-- Back to Top -->
	<a id="back-to-top" href="#" class="back-to-top">Top</a>
	<!-- /Back to Top -->
	
	<%@ include file="../../static/foot.jsp"%>
	<script src="${pageContext.request.contextPath}/resources/js/vue.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.ui.widget.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.fileupload.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/validate/jquery.validate.min.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/validate/messages_zh.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/validate/card.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/datetimepicker/bootstrap-datetimepicker.min.js"></script>
	<script>
		<%@ include file="../../utils/menu.jsp"%>
		<%@ include file="../../static/setMenu.js"%>
		<%@ include file="../../static/utils.js"%>
		<%@ include file="../../utils/baseUrl.jsp"%>   	

		var tableName = "remendongman";
		var pageType = "add-or-update";
		var updateId = "";
		var crossTableId = -1;
		var crossTableName = '';
		var ruleForm = {};
		var crossRuleForm = {};

		var shipinfenleiOptions = [];


		function shipinfenleiSelect(){
			http("option/shipinfenlei/shipinfenlei","GET",{},(res)=>{
				if(res.code == 0){
					shipinfenleiOptions = res.data;
					var shipinfenleiSelect = document.getElementById('shipinfenleiSelect');
					for(var i=0;i<shipinfenleiOptions.length;i++){
						var shipinfenleiOption = document.createElement('option');
						shipinfenleiOption.setAttribute('name','shipinfenleiOption');
						shipinfenleiOption.setAttribute('value',shipinfenleiOptions[i]);
						shipinfenleiOption.innerHTML = shipinfenleiOptions[i];									
						if(ruleForm.shipinfenlei == shipinfenleiOptions[i]){
							shipinfenleiOption.setAttribute('selected','selected');
						}
						shipinfenleiSelect.appendChild(shipinfenleiOption);
					}
				}
			});
		}	

		var ruleForm = {};
		var vm = new Vue({
		  el: '#addOrUpdateForm',
		  data:{
			  ruleForm : {},
              dongmantupianImgList:[],
              baseUrl:baseUrl,
			},
		  beforeCreate: function(){
			  var id = window.sessionStorage.getItem("id");
				if(id != null && id != "" && id != "null"){
					$.ajax({ 
		                type: "GET",
		                url: baseUrl + "remendongman/info/" + id,
		                beforeSend: function(xhr) {xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));},
		                success: function(res){               	
		                	if(res.code == 0){
		                		vm.ruleForm = res.data;
				    		}else if(res.code == 401) {
				    			<%@ include file="../../static/toLogin.jsp"%>    
				    		}else{ alert(res.msg)}
		                },
		            });
				}
			},
			methods: { 
                dongmantupianDelClick(index){
                    var mymessage = confirm("确定移除图片？");
                    if (mymessage == true) {
                        this.dongmantupianImgList.splice(index,1)  
                    }
                    
                },
            }
	  	});		

		// 文件上传
		function upload(){
			$('#dongmantupianupload').fileupload({
				url: baseUrl + 'file/upload',
				headers:{ token: window.sessionStorage.getItem("token")},
				dataType: 'json',
				done: function (e, data) {				
					document.getElementById('dongmantupian-input').setAttribute('value',"upload/"+data.result.file);
					if(document.getElementById('dongmantupianFileName') != null){
						document.getElementById('dongmantupianFileName').innerHTML = "上传成功!";
					}				
                    vm.dongmantupianImgList.push("upload/"+data.result.file)
				}
			});
			$('#shipinjianjieupload').fileupload({
				url: baseUrl + 'file/upload',
				headers:{ token: window.sessionStorage.getItem("token")},
				dataType: 'json',
				done: function (e, data) {				
					document.getElementById('shipinjianjie-input').setAttribute('value',"upload/"+data.result.file);
					if(document.getElementById('shipinjianjieFileName') != null){
						document.getElementById('shipinjianjieFileName').innerHTML = "上传成功!";
					}				
					$("#shipinjianjieImg").attr("src",baseUrl+"upload/"+data.result.file);												
				}
			});
			$('#dongmanxiazaiupload').fileupload({
				url: baseUrl + 'file/upload',
				headers:{ token: window.sessionStorage.getItem("token")},
				dataType: 'json',
				done: function (e, data) {							
					document.getElementById('dongmanxiazai-input').setAttribute('value','file/download?fileName='+data.result.file);
					if(document.getElementById('dongmanxiazaiFileName') != null){
						document.getElementById('dongmanxiazaiFileName').innerHTML = "上传成功!";
					}		
					$("#dongmanxiazaiImg").attr("src",data.result.file);												
				}
			});
			$('#jianjieupload').fileupload({
				url: baseUrl + 'file/upload',
				headers:{ token: window.sessionStorage.getItem("token")},
				dataType: 'json',
				done: function (e, data) {	
					UE.getEditor('jianjieEditor').execCommand('insertHtml','<img src=\"'+ baseUrl +'upload/'+ data.result.file + '\" width=900 height=560>');					
				}
			});
		}  
		//取消 
		function cancel() {
            window.location.href = "list.jsp";
		}
		function getQueryString(name) { 
			var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i"); 
			var r = window.location.search.substr(1).match(reg); 
			if (r != null) return unescape(r[2]); 
			return null; 
		}

		// 表单提交
		function submit() {

			var crossFlag = getQueryString("cross");
			if(validform() ==true && compare() == true){
				if(crossFlag) {
				}
				let data = {};
				getContent();
				let value = $('#addOrUpdateForm').serializeArray();
				$.each(value, function (index, item) { 
							data[item.name] = item.value;
						});
                if(vm.dongmantupianImgList.length){
                    data.dongmantupian = vm.dongmantupianImgList.join(',')
                }else{
					data.dongmantupian = ''
				}
				let json = JSON.stringify(data);
				var urlParam;
				var successMes = '';
				if(updateId!=null && updateId!="null" && updateId!=''){
					urlParam = 'update';
					successMes = '修改成功';
				}else{		
					urlParam = 'save';
					successMes = '添加成功';
				}
				//更新跨表属性
			       var crossuserid;
			       var crossrefid;
			       var crossoptnum;
				if(crossFlag) {
					var statusColumnName = window.sessionStorage.getItem('statusColumnName'); 
					var statusColumnValue = window.sessionStorage.getItem('statusColumnValue'); 
					var obj = JSON.parse(window.sessionStorage.getItem('crossObj'));
					if(statusColumnName!='') {
						if(!statusColumnName.startsWith("[")) {
							for (var o in obj){
								if(o==statusColumnName){
									obj[o] = statusColumnValue;
								}
							}
							var table = window.sessionStorage.getItem('crossTableName');
							httpJson(crossTableName + "/update","POST",obj,(res)=>{
								if(res.code == 0){
									console.log('更新属性成功');
								}
							});   
						} else  {
							crossuserid = Number(window.sessionStorage.getItem('userid'));
							crossrefid = obj["id"];
							crossoptnum = window.sessionStorage.getItem('statusColumnName');
							crossoptnum=crossoptnum.replace(/\[/,"").replace(/\]/,"");
						}
					}
				}
				if(crossrefid && crossuserid) {
					data.crossuserid=crossuserid;
					data.crossrefid=crossrefid;
					http("remendongman/page","GET",{
						page:1,
						limit:10,
						crossuserid:data.crossuserid,
						crossrefid:data.crossrefid,			
					},(res)=>{
						if(res.data.total >= crossoptnum){
							alert(window.sessionStorage.getItem('tips'));
							return false;
						} else {
							httpJson("remendongman/"+urlParam,"POST",data,(res)=>{
								if(res.code == 0){
									window.sessionStorage.removeItem('id');
									let flag = true;
									if(crossFlag) {
									}

									if(flag){
										alert(successMes);
									}
									if(window.sessionStorage.getItem('onlyme') != null && window.sessionStorage.getItem('onlyme') == "true"){
										window.sessionStorage.removeItem('onlyme');
										window.location.href="${pageContext.request.contextPath}/index.jsp";
									}else{
                                        window.location.href = "list.jsp";
									}
									
								}
							});
						}
					});
				} else {
					httpJson("remendongman/"+urlParam,"POST",data,(res)=>{
						if(res.code == 0){
							window.sessionStorage.removeItem('id');
							let flag = true;
							if(crossFlag) {
							}

							if(flag){
								alert(successMes);
							}
							if(window.sessionStorage.getItem('onlyme') != null && window.sessionStorage.getItem('onlyme') == "true"){
								window.sessionStorage.removeItem('onlyme');
								window.location.href="${pageContext.request.contextPath}/index.jsp";
							}else{
                                        window.location.href = "list.jsp";
							}
							
						}
					});
				}
			}else{
				alert("表单未填完整或有错误");
			}
		}

		// 填充富文本框
		function setContent(){
			if(ruleForm.jianjie != null && ruleForm.jianjie != 'null' && ruleForm.jianjie != ''){
				var jianjieMes = '' + ruleForm.jianjie;
				var jianjieUeditor = UE.getEditor('jianjieEditor');
				jianjieUeditor.ready(function() {
					jianjieUeditor.setContent(jianjieMes);
				});
			}
		}  

		// 获取富文本框内容
		function getContent(){
			if(UE.getEditor('jianjieEditor').hasContents()){
				$('#jianjie-input').attr('value',UE.getEditor('jianjieEditor').getContent());
			}
		}

		// 表单校验
		function validform() {
			return $("#addOrUpdateForm").validate({ 
				rules: {
				    dongmanmingcheng: {
					required: true,
					},
				    shipinfenlei: {
					required: true,
					},
				    biaoqian: {
					required: true,
					},
				    dongmantupian: {
					},
				    dongmanzuozhe: {
					},
				    shipinjianjie: {
					},
				    faburiqi: {
					},
				    dongmanxiazai: {
					},
				    jianjie: {
					},
				    zaixianwangzhi: {
					required: true,
					url: true,
					},
				    clicktime: {
					},
				    clicknum: {
					digits: true,
					},
				},
				messages: {
					shipinfenlei: {
						required: "视频分类不能为空",
					},
					biaoqian: {
						required: "标签不能为空",
					},
					dongmantupian: {
					},
					dongmanzuozhe: {
					},
					shipinjianjie: {
					},
					faburiqi: {
					},
					dongmanxiazai: {
					},
					jianjie: {
					},
					zaixianwangzhi: {
						required: "在线网址不能为空",
					},
					clicktime: {
					},
					clicknum: {
						digits: "请输入整数",
					},
				}
			}).form();
		}
		// 添加表单校验方法
		function addValidation(){
			jQuery.validator.addMethod("isPhone", function(value, element) {
					var length = value.length;
					var mobile = /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1})|(19[0-9]{1})|(17[0-9]{1}))+\d{8})$/;
					return this.optional(element) || (length == 11 && mobile.test(value));
			}, "请填写正确的手机号码");
                        jQuery.validator.addMethod("isIdCardNo", function(value, element) {
                                return this.optional(element) || value.length == 18;
                        }, "请正确输入您的身份证号码");
                        jQuery.validator.addMethod("isTel", function(value, element) {
                          var length = value.length;
                          var phone = /(^(\d{3,4}-)?\d{6,8}$)|(^(\d{3,4}-)?\d{6,8}(-\d{1,5})?$)|(\d{11})/;
                          return this.optional(element) || (phone.test(value));
                         }, "请填写正确的固定电话");//可以自定义默认提示信息
		}
		// 获取当前详情
		function getDetails() {
			var id = window.sessionStorage.getItem("id");
			if(id != null && id != "" && id != "null"){
				updateId = id;
				window.sessionStorage.removeItem('id');
				http("remendongman/info/" + id,"GET",{},(res)=>{
					if(res.code == 0){
						ruleForm = res.data
						// 是/否下拉框回显
						setSelectOption();
						// 设置图片src
						showImg();
						// 数据填充
						dataBind();
						// 富文本框回显	
						setContent();
												shipinfenleiSelect();
						//注册表单验证
						$(validform());	
					}
				});
			}else{
				shipinfenleiSelect();	



		 		fill()
				//注册表单验证
		    		$(validform());
			}
		}	
		// 下拉框选项回显
		function setSelectOption(){
		}			
		// 关联下拉框改变
		function lvSelectChange(level){
			let data = {};
			let value = $('#addOrUpdateForm').serializeArray();
			$.each(value, function (index, item) { 
			            data[item.name] = item.value;
			        });
			
		}		
		// 清除可能会重复渲染的selection
		function clear(className){
			var elements = document.getElementsByClassName(className);
        	for(var i = elements.length - 1; i >= 0; i--) { 
        	  elements[i].parentNode.removeChild(elements[i]); 
        	}
		}		
		function dateTimePick(){
			$.fn.datetimepicker.dates['zh-CN'] = { 
		            days: ["星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六", "星期日"],
		            daysShort: ["周日", "周一", "周二", "周三", "周四", "周五", "周六", "周日"],
		            daysMin:  ["日", "一", "二", "三", "四", "五", "六", "日"],
		            months: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],
		            monthsShort: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],
		            today: "今天",
		            suffix: [],
		            meridiem: ["上午", "下午"]
		    };
			$("#faburiqi-input").val(getCurDateTime());
			$("#faburiqi-input").datetimepicker({ 
				autoclose: true,
				format:'yyyy-mm-dd hh:ii:00',
				minuteStep:1,
				language:'zh-CN',
			});
			$("#clicktime-input").datetimepicker({ 
				autoclose: true,
				format:'yyyy-mm-dd hh:ii:00',
				minuteStep:1,
				language:'zh-CN',
			});

		}		
		
		function calculation(){
			//积
			var x = 0;
			//和
			var y = 0;
			var flag = 0;



		}		
		function calculationSE(colName){
			//单列求和接口
			http("remendongman"+colName,"GET",{
				tableName: "remendongman",
				columnName: colName
			},(res)=>{
				if(res.code == 0){
					$("#"+colName).attr("value",res.data);
				}
			});
		}	
		function calculationPre(){
			//进入该页面就填充"单列求和"的列
		}			
		
		
			//新增时填充字段
			function fill(){
				var username = window.sessionStorage.getItem('username');
				var accountTableName = window.sessionStorage.getItem('accountTableName');
				http(accountTableName+'/session','GET',{},(res)=>{
					if(res.code == 0){
						var myId = res.data.id;
						$(validform());
					}
				});
							
			}	
			
		function dataBind(){
			$("#updateId").val(ruleForm.id);	
			$("#dongmanmingcheng").val(ruleForm.dongmanmingcheng);	
			var shipinfenleiOptions = document.getElementsByClassName("shipinfenleiOption");
			for(var shipinfenleiCount = 0; shipinfenleiCount < shipinfenleiOptions.length;shipinfenleiCount++){
				if(shipinfenleiOptions[shipinfenleiCount].getAttribute('value') == ruleForm.shipinfenlei){
					shipinfenleiOptions[shipinfenleiCount].setAttribute('selected','selected');
				}
			}
			$("#biaoqian").val(ruleForm.biaoqian);	
            if(ruleForm.dongmantupian){
                vm.dongmantupianImgList = ruleForm.dongmantupian.split(',')
            }
			$("#dongmantupian-input").val(ruleForm.dongmantupian);
			$("#dongmanzuozhe").val(ruleForm.dongmanzuozhe);	
			$("#shipinjianjie-input").val(ruleForm.shipinjianjie);
			$("#shipinjianjieFileName").html(ruleForm.shipinjianjie);
			$("#faburiqi-input").val(ruleForm.faburiqi);
			$("#dongmanxiazai-input").val(ruleForm.dongmanxiazai);
			$("#dongmanxiazaiFileName").html(ruleForm.dongmanxiazai);
			$("#jianjie").val(ruleForm.jianjie);	
			$("#zaixianwangzhi").val(ruleForm.zaixianwangzhi);	

		}		
		//图片显示
		function showImg(){
		}		
		//跨表

        //跨表
        function crossTable(){
		crossTableName = window.sessionStorage.getItem('crossTableName');
		crossTableId = window.sessionStorage.getItem('crossTableId');
		if(crossTableName != null && crossTableName != '' && crossTableId != null && crossTableId != '' && crossTableId != -1){
			http(crossTableName + "/info/" + crossTableId,"GET",{},(res)=>{
				if(res.code == 0){
					crossRuleForm = res.data;
					$('#updateId').val(crossTableId);
					if(res.data != null && res.data != '' && res.data.dongmanmingcheng != null && res.data.dongmanmingcheng != ''){

						$("#dongmanmingcheng").val(res.data.dongmanmingcheng);
						$("#dongmanmingcheng").attr('readonly','readonly');
					}
					if(res.data != null && res.data != '' && res.data.shipinfenlei != null && res.data.shipinfenlei != ''){

						var shipinfenleiOptions = document.getElementsByClassName("shipinfenleiOption");
						for(var shipinfenleiCount = 0; shipinfenleiCount < shipinfenleiOptions.length;shipinfenleiCount++){
							if(shipinfenleiOptions[shipinfenleiCount].getAttribute('value') == res.data.shipinfenlei){
								shipinfenleiOptions[shipinfenleiCount].setAttribute('selected','selected');
							}
						}
					}
					if(res.data != null && res.data != '' && res.data.biaoqian != null && res.data.biaoqian != ''){

						$("#biaoqian").val(res.data.biaoqian);
						$("#biaoqian").attr('readonly','readonly');
					}
					if(res.data != null && res.data != '' && res.data.dongmantupian != null && res.data.dongmantupian != ''){

                        vm.dongmantupianImgList = res.data.dongmantupian.split(',')
					}
					if(res.data != null && res.data != '' && res.data.dongmanzuozhe != null && res.data.dongmanzuozhe != ''){

						$("#dongmanzuozhe").val(res.data.dongmanzuozhe);
						$("#dongmanzuozhe").attr('readonly','readonly');
					}
					if(res.data != null && res.data != '' && res.data.shipinjianjie != null && res.data.shipinjianjie != ''){

						$("#shipinjianjie-input").val(res.data.shipinjianjie);
						$('#shipinjianjieFileName').val(res.data.shipinjianjie)
					}
					if(res.data != null && res.data != '' && res.data.faburiqi != null && res.data.faburiqi != ''){

						$("#faburiqi-input").val(res.data.faburiqi);
						$('#faburiqiFileName').val(res.data.faburiqi)
					}
					if(res.data != null && res.data != '' && res.data.dongmanxiazai != null && res.data.dongmanxiazai != ''){

						$("#dongmanxiazai-input").val(res.data.dongmanxiazai);
						$('#dongmanxiazaiFileName').val(res.data.dongmanxiazai)
					}
					if(res.data != null && res.data != '' && res.data.jianjie != null && res.data.jianjie != ''){

						$("#jianjie").val(res.data.jianjie);
                        var jianjieMes = '' + res.data.jianjie;
                        var jianjieUeditor = UE.getEditor('jianjieEditor');
                        jianjieUeditor.ready(function() {
                            jianjieUeditor.setContent(jianjieMes);
                        });
					}
					if(res.data != null && res.data != '' && res.data.zaixianwangzhi != null && res.data.zaixianwangzhi != ''){

						$("#zaixianwangzhi").val(res.data.zaixianwangzhi);
						$("#zaixianwangzhi").attr('readonly','readonly');
					}
					if(res.data != null && res.data != '' && res.data.clicktime != null && res.data.clicktime != ''){

					}
					if(res.data != null && res.data != '' && res.data.clicknum != null && res.data.clicknum != ''){

					}
				}
			});  
            }
		window.sessionStorage.removeItem('crossTableName');
		window.sessionStorage.removeItem('crossTableId');
        }
		
		//跨表更新字段
		function crossTableUpdate(){
			let flag = crossTableUpdateValidation();
			if(flag){
				httpJson(crossTableName + "/update","POST",{
					id: crossTableId,
				},(res)=>{
					if(res.code == 0){
						console.log('跨表更新成功');
						return true;
					}
				});   
			}
			return false;
		}

		//跨表更新前验证
		function crossTableUpdateValidation(){
			//防止减法导致库存负值
			return true;
		}
		$(document).ready(function() { 
			//设置右上角用户名
            $('.dropdown-menu h5').html(window.sessionStorage.getItem('username')+'('+window.sessionStorage.getItem('role')+')')
			//设置项目名
			$('.sidebar-header h3 a').html(projectName)
			//设置导航栏菜单
			setMenu();
			//初始化时间插件
			dateTimePick();
			//添加表单校验信息文本
			addValidation();
			getDetails();
			//初始化上传按钮
			upload();
			//单列求和
			calculationPre();
			//跨表
			crossTable();
			<%@ include file="../../static/myInfo.js"%>
			$('#submitBtn').on('click', function(e) {
			    e.preventDefault();
			    //console.log("点击了...提交按钮");
			    submit();
			});
			$('#exitBtn').on('click', function(e) {
			    cancel();
			});
			readonly();
		});		

		function readonly(){
            if(window.sessionStorage.getItem('role')!="管理员") {
				$('#money').attr('readonly','readonly');
            }
		}

		//比较大小
		function compare(){
			var largerVal = null;
			var smallerVal = null;
			if(largerVal !=null && smallerVal != null){
				if(parseInt(largerVal)<=parseInt(smallerVal)){
					alert(smallerName+'不能大于等于'+largerName);
					return false;
				}
			}
			return true;
		}


		// 用户登出
        <%@ include file="../../static/logout.jsp"%>		
	</script>
</body>

</html>
