<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<base href="<%=basePath%>" />

<nav class="navbar-toolbar navbar navbar-default navbar-fixed-top">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="javascript:void(0)">
				<img alt="Brand" src="resources/images/logo.png" style="width:30px;height:40px;">
			</a>
			<div class="txtdiv">
				<h4>SKY云发布</h4>
				<h5>cloud.skyids.com</h5>
			</div>
		</div>

		<div class="collapse navbar-collapse">
			<ul class="nav navbar-nav navbar-left toolbar-left">
				<li>
					<span class="box box-element">视频</span>
					<span class="box box-element">音乐</span>
					<span class="box box-element">字幕</span>
					<span class="box box-element">混播</span>
				</li>
			</ul>
			<ul class="nav navbar-nav navbar-right toolbar-right">
				<li>
					<span class="box box-control">设置</span>
					<span class="box box-control">保存</span>
					<span class="box box-control">发布</span>
					<span class="box box-control">退出</span>
				</li>
			</ul>
		</div>
	</div>
</nav>