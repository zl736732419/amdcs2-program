<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>节目制作</title>
<base href="<%=basePath%>" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="resources/images/favicon.ico" type="image/x-icon" />

<link rel="stylesheet" href="resources/css/plugins/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/plugins/bootstrap.slider.min.css">
<link rel="stylesheet" href="resources/css/bootstrap.slider.init.css">

<link href="resources/css/common.css" rel="stylesheet">
<link href="resources/css/header.css" rel="stylesheet">
<link href="resources/css/tabs.css" rel="stylesheet">
<link href="resources/css/centercanvas.css" rel="stylesheet">
<link href="resources/css/icon.css" rel="stylesheet">
<link href="resources/css/rightmenu.css" rel="stylesheet">

<script type="text/javascript" src="resources/js/plugins/jquery-1.9.1.js"></script>
<script type="text/javascript" src="resources/js/plugins/bootstrap.min.js"></script>
<script type="text/javascript" src="resources/js/plugins/bootstrap.slider.min.js"></script>

<script type="text/javascript" src="resources/js/bootstrap.init.js"></script>
<script type="text/javascript" src="resources/js/bootstrap.slider.init.js"></script>

<script type="text/javascript" src="resources/js/tabs.js"></script>
<script type="text/javascript" src="resources/js/centercanvas.js"></script>
<script type="text/javascript" src="resources/js/const.js"></script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="container-fluid" style="height:94%;">
	<div class="row" style="height:100%;">
		<div class="col-sm-2" style="height:100%;padding-right:0;">
			<jsp:include page="leftmenu.jsp"></jsp:include>
		</div>
		<div class="col-sm-8" style="height:100%;">
			<jsp:include page="centercanvas.jsp"></jsp:include>
		</div>
		<div class="col-sm-2" style="height:100%;padding-left:0;">
			<jsp:include page="rightmenu.jsp"></jsp:include>
		</div>
	</div>
</div>

</body>
</html>