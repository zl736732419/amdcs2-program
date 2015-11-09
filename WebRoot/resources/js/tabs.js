$(function() {
	showFirstMenuTab();
	
	
	
	//选项卡点击事件
	var tabs = $('.tabs:not(.pages)');
	$(tabs).find('a').each(function() {
		$(this).click(function(e) {
	        e.preventDefault();
	        var content = $(this).parent().parent().siblings('.content');
	        var tabs = $(content).siblings('.tabs');
	        $(content).children('div').hide(); //隐藏所有面板，重新显示被选中的选项卡内容
	        $(tabs).find('li').attr("id",""); //取消选项卡选中标记
	        $(this).parent().attr("id","current"); //设置当前点击的选项卡被选中
	        $('#' + $(this).attr('title')).fadeIn(); //显示当前被选中选项卡的面板内容
	    });
	});
});

//显示选项卡菜单的第一页
function showFirstMenuTab() {
	var contents = $(".content:not(.pages)");
	
	$(contents).children('div').hide();// 初始化面板状态，先隐藏所有面板
	for(var i = 0; i < contents.length; i++) {
		var content =  contents[i];
		var tabs = $(content).siblings('.tabs');
		$(tabs).find("li:first").attr("id","current");//选中第一个选项卡
		$(content).children("div:first").fadeIn();//显示第一个选项卡对应的面板内容
	}
	
	
}