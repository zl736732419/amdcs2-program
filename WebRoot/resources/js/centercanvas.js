$(function() {
	//初始化样式
	init_style();
	
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
	
	$('.screen-type button').click(function() {
		var val = $(this).find('.value').text();
		//得到面板宽高
		var target = $('.panel-container');
		var width = $(target).width();
		var height = $(target).height();
		var wValue = null;//宽度
		var hValue = null;//高度
		if(val == window.Const.screen.HORIZENTAL) {//横屏
			wValue = width > height ? width : height;
			hValue = width > height ? height : width;
		}else { //竖屏
			wValue = width > height ? height : width;
			hValue = width > height ? width : height;
		}
		
		$(target).css({
			width : wValue + 'px',
			height : hValue + 'px'
		});
		
		init_panel_style();
	});
}


function init_style() {
	//初始化按钮样式
	init_btn_style();
	
	//初始化
	init_panel_style();
}

//初始化
function init_panel_style() {
	var parent = $('.drawpanel');
	var container = $('.panel-container');
	
	var pHeight = $(parent).height();
	var height = $(container).height();
	if(height < pHeight) {
		var top = (pHeight - height) / 2;
		
		$(container).css({
			top : top + 'px'
		});
	}
	
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
	var activedBtn = $(btn).siblings('button.btn-primary');
	$(activedBtn).removeClass('btn-primary');
	$(activedBtn).addClass('btn-default');
	$(btn).removeClass('btn-default');
	$(btn).addClass('btn-primary');
}