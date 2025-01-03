/**
 * 页面跳转
 * @param {Object} url
 */
function jump(url) {
	if (!url || url == 'null' || url == null) {
		window.location.href = './index.html';
	}
	// 路径访问设置
	localStorage.setItem('iframeUrl', url.replace('../', './pages/'));
	window.location.href = url;
}

/**
 * 返回
 */
function back(num = -1) {
	window.history.go(num)
}

/**
 * 生成订单
 */
function genTradeNo() {
	var date = new Date();
	var tradeNo = date.getFullYear().toString() + (date.getMonth() + 1).toString() +
		date.getDate().toString() + date.getHours().toString() + date.getMinutes().toString() +
		date.getSeconds().toString() + date.getMilliseconds().toString();
	//for (var i = 0; i < 5; i++) //5位随机数，用以加在时间戳后面。
	//{
	//	tradeNo += Math.floor(Math.random() * 10);
	//}
	return tradeNo;
}
/**
 * * 获取当前时间（yyyy-MM-dd hh:mm:ss）
 * */
function getCurDateTime() {
        var currentTime = new Date(),
        year = currentTime.getFullYear(),
        month = currentTime.getMonth() + 1 < 10 ? '0' + (currentTime.getMonth() + 1) : currentTime.getMonth() + 1,
        day = currentTime.getDate() < 10 ? '0' + currentTime.getDate() : currentTime.getDate(),
        hour = currentTime.getHours(),
        minute = currentTime.getMinutes(),
        second = currentTime.getSeconds();
    return year + "-" + month + "-" + day + " " +hour +":" +minute+":"+second;
}

/**
 * * 获取当前日期（yyyy-MM-dd）
 * */
function getCurDate() {
        var currentTime = new Date(),
        year = currentTime.getFullYear(),
        month = currentTime.getMonth() + 1 < 10 ? '0' + (currentTime.getMonth() + 1) : currentTime.getMonth() + 1,
        day = currentTime.getDate() < 10 ? '0' + currentTime.getDate() : currentTime.getDate();
    return year + "-" + month + "-" + day;
}
/**
 * * 获取特定日期（yyyy-MM-dd）
 * */
function getDate(time) {
        var currentTime = new Date(time),
        year = currentTime.getFullYear(),
        month = currentTime.getMonth() + 1 < 10 ? '0' + (currentTime.getMonth() + 1) : currentTime.getMonth() + 1,
        day = currentTime.getDate() < 10 ? '0' + currentTime.getDate() : currentTime.getDate();
    return year + "-" + month + "-" + day;
}
/**
 * * 获取url的?后面的参数值与=后面的参数
 * */
function getRequest() {
    var url = location.search; //获取url中"?"符后的字串
    var theRequest = new Object();
    if (url.indexOf("?") != -1) {
        var str = url.substr(1);
        strs = str.split("&");
        for(var i = 0; i < strs.length; i ++) {
            theRequest[strs[i].split("=")[0]] = unescape(strs[i].split("=")[1]);
        }
    }
    return theRequest;
}
