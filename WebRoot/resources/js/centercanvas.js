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
	
	$('.hideIcon').click(function() {
		//判断当前点击的左边按钮还是右边按钮
		var isLeft = $(this).hasClass('hideIconLeft');
		var menu = null;
		var isShow = null;
		if(isLeft) { //处理左边菜单伸缩
			menu = $('#leftMenu');
		}else { //处理右边菜单伸缩
			menu = $('#rightMenu');
		}
		var display = $(menu).css('display');
		if(display == 'block') {
			isShow = true;
		}else {
			isShow = false;
		}
		//得到当前中央区域的大小
		var cls = $('#centerCanvas').attr('class');
		var num = Number(cls.substring(cls.lastIndexOf('-')+1));
		
		if(isShow) {
			//如果当前是显示出来的就隐藏
			$(menu).css({
				display: 'none'
			});
			
			//扩大画布区域
			$('#centerCanvas').attr('class', 'col-sm-' + (num + 2));
			
		}else {
			//如果是隐藏的就显示出来
			$(menu).css({
				display: 'block'
			});
			
			//缩小画布区域
			$('#centerCanvas').attr('class', 'col-sm-' + (num - 2));
		}
		
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
	
	$('.hideIcon').mouseover(function() {
		$(this).css({
			backgroundColor: '#a6a6a6',
			cursor: 'pointer'
		});
		
		popCollapseTip($(this));//折叠提示
	});
	
	$('.hideIcon').mouseout(function() {
		$(this).css({
			backgroundColor: '#ddd',
			cursor: 'default'
		});
		
		$(this).popover('destroy');
	});
}

//弹出折叠菜单提示
function popCollapseTip(hideIcon) {
	//判断当前菜单状态
	var isLeft = $(hideIcon).hasClass('hideIconLeft');
	var menu = null;
	var isShow = null;
	var direction = null;
	var menuStr = null;
	if(isLeft) { //处理左边菜单伸缩
		menu = $('#leftMenu');
		direction = 'right';
		menuStr = '左菜单';
	}else { //处理右边菜单伸缩
		menu = $('#rightMenu');
		direction = 'left';
		menuStr = '右菜单';
	}
	var display = $(menu).css('display');
	if(display == 'block') {
		isShow = true;
	}else {
		isShow = false;
	}
	var msg = '';
	if(isShow) {
		msg += '隐藏';
	}else {
		msg += '显示';
	}
	msg += menuStr;
	
	$(hideIcon).popover({
	    html: false,
	    animation: true,
	   	container: 'body',
	   	trigger: 'mouseover',
	    content: msg,
		placement : direction
	});

	$(hideIcon).popover('show');
	
}

function active_btn(btn) {
	var activedBtn = $(btn).siblings('button.btn-primary');
	$(activedBtn).removeClass('btn-primary');
	$(activedBtn).addClass('btn-default');
	$(btn).removeClass('btn-default');
	$(btn).addClass('btn-primary');
}