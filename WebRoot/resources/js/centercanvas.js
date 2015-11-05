$(function() {
	//初始化按钮样式
	init_btn_style();
	
	//初始化点击事件
	init_event();
});

//初始化点击事件
function init_event() {
	//初始化添加页面按钮事件，点击则动态创建一个新页面
	
	$('.addpage').click(function() {
		//新增li代表刚创建的页面
		var html = '<li><a href="javascript:void(0)">页面2</a></li>';
		$(this).before($(html));
	});
}

//初始化按钮样式
function init_btn_style() {
	//修改按钮点击样式
	$('.btn-group button').each(function() {
		$(this).click(function(){
			active_btn($(this));
		});
	});
	
	$('.toolbar button.btn-hover').mouseover(function() {
		$(this).removeClass('btn-default');
		$(this).addClass('btn-primary');
	});
	
	$('.toolbar button.btn-hover').mouseout(function() {
		$(this).removeClass('btn-primary');
		$(this).addClass('btn-default');
	});
}

function active_btn(btn) {
	var activedBtn = $('.btn-group button.btn-primary');
	$(activedBtn).removeClass('btn-primary');
	$(activedBtn).addClass('btn-default');
	$(btn).removeClass('btn-default');
	$(btn).addClass('btn-primary');
}