<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<base href="<%=basePath%>" />
<div style="height: 100%;">
	<ul class="tabs pages">
		<li><a href="javascript:void(0)">页面1</a></li>
		<li><a href="javascript:void(0)">页面2</a></li>
		<li class="addpage"><a href="javascript:void(0)" title="addpage">+</a></li>
	</ul>
	<div class="content pages" style="padding: 0;">
		<div class="toolbar">
			<div class="container-fluid">
				<div class="row">
					<div class="col-sm-4">
						<button type="button" class="btn btn-default btn-sm btn-hover">预览</button>
						<button type="button" class="btn btn-default btn-sm btn-hover">撤销</button>
						<button type="button" class="btn btn-default btn-sm btn-hover">返回</button>
						<button type="button" class="btn btn-default btn-sm btn-hover">删除</button>
						<button type="button" class="btn btn-default btn-sm btn-hover">清空</button>
					</div>
					<div class="col-sm-6">
						<button type="button" class="btn btn-default btn-hover"
							data-container="body" data-toggle="popover"
							data-placement="bottom" data-content="左对齐" onclick="">
							<span class="icon icon-alignLeft"></span>
						</button>
						<button type="button" class="btn btn-default btn-hover" data-container="body"
							data-toggle="popover" data-placement="bottom" data-content="右对齐"
							onclick="">
							<span class="icon icon-alignRight"></span>
						</button>
						<button type="button" class="btn btn-default btn-hover" data-container="body"
							data-toggle="popover" data-placement="bottom" data-content="上对齐"
							onclick="">
							<span class="icon icon-alignTop"></span>
						</button>
						<button type="button" class="btn btn-default btn-hover" data-container="body"
							data-toggle="popover" data-placement="bottom" data-content="下对齐"
							onclick="">
							<span class="icon icon-alignBottom"></span>
						</button>
						<button type="button" class="btn btn-default btn-hover" data-container="body"
							data-toggle="popover" data-placement="bottom" data-content="水平居中"
							onclick="">
							<span class="icon icon-alignHorizontalCenter"></span>
						</button>
						<button type="button" class="btn btn-default btn-hover" data-container="body"
							data-toggle="popover" data-placement="bottom" data-content="垂直居中"
							onclick="">
							<span class="icon icon-alignVerticalCenter"></span>
						</button>
						<button type="button" class="btn btn-default btn-hover" data-container="body"
							data-toggle="popover" data-placement="bottom" data-content="匹配宽度"
							onclick="">
							<span class="icon icon-alignMatchWidth"></span>
						</button>
						<button type="button" class="btn btn-default btn-hover" data-container="body"
							data-toggle="popover" data-placement="bottom" data-content="匹配高度"
							onclick="">
							<span class="icon icon-alignMatchHeight"></span>
						</button>
						<button type="button" class="btn btn-default btn-hover" data-container="body"
							data-toggle="popover" data-placement="bottom" data-content="匹配宽高"
							onclick="">
							<span class="icon icon-alignMatchWidthAndHeight"></span>
						</button>
	
					</div>
					<div class="col-sm-2">
						<div class="btn-group" role="group" aria-label="...">
							<button id="list-btn" type="button" class="btn btn-primary"
								data-container="body" data-toggle="popover"
								data-placement="bottom" data-content="隐藏网格" onclick="">
								<span class="glyphicon glyphicon-stop" aria-hidden="true"></span>
							</button>
							<button type="button" class="btn btn-default"
								data-container="body" data-toggle="popover"
								data-placement="bottom" data-content="显示网格" onclick="">
								<span class="glyphicon glyphicon-th" aria-hidden="true"></span>
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
