
var projectName = '基于Web的动漫网站的设计与实现';
/**
 * 轮播图配置
 */
var swiper = {
	// 设定轮播容器宽度，支持像素和百分比
	width: '100%',
	height: '400px',
	// hover（悬停显示）
	// always（始终显示）
	// none（始终不显示）
	arrow: 'none',
	// default（左右切换）
	// updown（上下切换）
	// fade（渐隐渐显切换）
	anim: 'default',
	// 自动切换的时间间隔
	// 默认3000
	interval: 2000,
	// 指示器位置
	// inside（容器内部）
	// outside（容器外部）
	// none（不显示）
	indicator: 'outside'
}

/**
 * 个人中心菜单
 */
var centerMenu = [{
	name: '个人中心',
	url: '../' + localStorage.getItem('userTable') + '/center.jsp'
}, 
{
	name: '我的收藏',
	url: '../storeup/list.jsp?storeupType=1'
},
]


var indexNav = [

{
	name: '热门动漫',
	url: './pages/remendongman/list.jsp'
}, 
{
	name: '论坛帖子',
	url: './pages/luntantiezi/list.jsp'
}, 

{
	name: '动漫资讯',
	url: './pages/news/list.jsp'
},
]

var adminurl =  "http://localhost:8080/jspmn99n6cvu/index.jsp";

var cartFlag = false

var chatFlag = false




var menu = [{"backMenu":[{"child":[{"allButtons":["新增","查看","修改","删除","首页总数"],"appFrontIcon":"cuIcon-form","buttons":["新增","查看","修改","删除","首页总数"],"menu":"用户","menuJump":"列表","tableName":"yonghu"}],"menu":"用户管理"},{"child":[{"allButtons":["新增","查看","修改","删除"],"appFrontIcon":"cuIcon-camera","buttons":["新增","查看","修改","删除"],"menu":"视频分类","menuJump":"列表","tableName":"shipinfenlei"}],"menu":"视频分类管理"},{"child":[{"allButtons":["新增","查看","修改","删除","动漫分类","查看评论","首页总数","首页统计"],"appFrontIcon":"cuIcon-similar","buttons":["新增","查看","修改","删除","动漫分类","查看评论","首页总数","首页统计"],"menu":"热门动漫","menuJump":"列表","tableName":"remendongman"}],"menu":"热门动漫管理"},{"child":[{"allButtons":["新增","查看","修改","删除"],"appFrontIcon":"cuIcon-phone","buttons":["新增","查看","修改","删除"],"menu":"帖子分类","menuJump":"列表","tableName":"tiezifenlei"}],"menu":"帖子分类管理"},{"child":[{"allButtons":["新增","查看","修改","删除","审核","分类占比","发贴统计","查看评论","首页总数","首页统计"],"appFrontIcon":"cuIcon-form","buttons":["查看","修改","删除","审核","分类占比","发贴统计","查看评论","首页总数","首页统计"],"menu":"论坛帖子","menuJump":"列表","tableName":"luntantiezi"}],"menu":"论坛帖子管理"},{"child":[{"allButtons":["新增","查看","修改","删除"],"appFrontIcon":"cuIcon-pay","buttons":["查看","修改","删除"],"menu":"普通管理员","menuJump":"列表","tableName":"putongguanliyuan"}],"menu":"普通管理员管理"},{"child":[{"allButtons":["查看","修改"],"appFrontIcon":"cuIcon-goodsnew","buttons":["查看","修改"],"menu":"关于我们","tableName":"aboutus"},{"allButtons":["查看","修改"],"appFrontIcon":"cuIcon-discover","buttons":["查看","修改"],"menu":"系统简介","tableName":"systemintro"},{"allButtons":["新增","查看","修改","删除"],"appFrontIcon":"cuIcon-vip","buttons":["查看","修改","删除"],"menu":"轮播图管理","tableName":"config"},{"allButtons":["新增","查看","修改","删除"],"appFrontIcon":"cuIcon-news","buttons":["新增","查看","修改","删除"],"menu":"动漫资讯","tableName":"news"}],"menu":"系统管理"}],"frontMenu":[{"child":[{"allButtons":["新增","查看","修改","删除","动漫分类","查看评论","首页总数","首页统计"],"appFrontIcon":"cuIcon-addressbook","buttons":["查看","查看评论"],"menu":"热门动漫列表","menuJump":"列表","tableName":"remendongman"}],"menu":"热门动漫模块"},{"child":[{"allButtons":["新增","查看","修改","删除","审核","分类占比","发贴统计","查看评论","首页总数","首页统计"],"appFrontIcon":"cuIcon-send","buttons":["查看","查看评论"],"menu":"论坛帖子列表","menuJump":"列表","tableName":"luntantiezi"}],"menu":"论坛帖子模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"allButtons":["新增","查看","修改","删除","审核","分类占比","发贴统计","查看评论","首页总数","首页统计"],"appFrontIcon":"cuIcon-form","buttons":["新增","查看","修改","删除"],"menu":"论坛帖子","menuJump":"列表","tableName":"luntantiezi"}],"menu":"论坛帖子管理"}],"frontMenu":[{"child":[{"allButtons":["新增","查看","修改","删除","动漫分类","查看评论","首页总数","首页统计"],"appFrontIcon":"cuIcon-addressbook","buttons":["查看","查看评论"],"menu":"热门动漫列表","menuJump":"列表","tableName":"remendongman"}],"menu":"热门动漫模块"},{"child":[{"allButtons":["新增","查看","修改","删除","审核","分类占比","发贴统计","查看评论","首页总数","首页统计"],"appFrontIcon":"cuIcon-send","buttons":["查看","查看评论"],"menu":"论坛帖子列表","menuJump":"列表","tableName":"luntantiezi"}],"menu":"论坛帖子模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"用户","tableName":"yonghu"},{"backMenu":[{"child":[{"allButtons":["新增","查看","修改","删除"],"appFrontIcon":"cuIcon-camera","buttons":["新增","查看","修改","删除"],"menu":"视频分类","menuJump":"列表","tableName":"shipinfenlei"}],"menu":"视频分类管理"},{"child":[{"allButtons":["新增","查看","修改","删除","动漫分类","查看评论","首页总数","首页统计"],"appFrontIcon":"cuIcon-similar","buttons":["新增","查看","修改","删除","查看评论","首页总数","首页统计","动漫分类"],"menu":"热门动漫","menuJump":"列表","tableName":"remendongman"}],"menu":"热门动漫管理"},{"child":[{"allButtons":["新增","查看","修改","删除"],"appFrontIcon":"cuIcon-phone","buttons":["新增","查看","修改","删除"],"menu":"帖子分类","menuJump":"列表","tableName":"tiezifenlei"}],"menu":"帖子分类管理"},{"child":[{"allButtons":["新增","查看","修改","删除","审核","分类占比","发贴统计","查看评论","首页总数","首页统计"],"appFrontIcon":"cuIcon-form","buttons":["查看","审核","分类占比","发贴统计","查看评论","首页总数","首页统计"],"menu":"论坛帖子","menuJump":"列表","tableName":"luntantiezi"}],"menu":"论坛帖子管理"}],"frontMenu":[{"child":[{"allButtons":["新增","查看","修改","删除","动漫分类","查看评论","首页总数","首页统计"],"appFrontIcon":"cuIcon-addressbook","buttons":["查看","查看评论"],"menu":"热门动漫列表","menuJump":"列表","tableName":"remendongman"}],"menu":"热门动漫模块"},{"child":[{"allButtons":["新增","查看","修改","删除","审核","分类占比","发贴统计","查看评论","首页总数","首页统计"],"appFrontIcon":"cuIcon-send","buttons":["查看","查看评论"],"menu":"论坛帖子列表","menuJump":"列表","tableName":"luntantiezi"}],"menu":"论坛帖子模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"普通管理员","tableName":"putongguanliyuan"}]


var isAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].backMenu.length;j++){
                for(let k=0;k<menus[i].backMenu[j].child.length;k++){
                    if(tableName==menus[i].backMenu[j].child[k].tableName){
                        let buttons = menus[i].backMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}

var isFrontAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].frontMenu.length;j++){
                for(let k=0;k<menus[i].frontMenu[j].child.length;k++){
                    if(tableName==menus[i].frontMenu[j].child[k].tableName){
                        let buttons = menus[i].frontMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}
