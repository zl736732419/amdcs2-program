<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<base href="<%=basePath%>" />

<div style="height:40%;margin-bottom:20%;">
	<ul class="tabs">
		<li style="width: 32%;"><a href="javascript:void(0)"
			title="pageProperties">页面属性</a></li>
		<li style="width: 32%;"><a href="javascript:void(0)"
			title="allPages">所有页面</a></li>
	</ul>

	<div class="content">
		<div id="pageProperties">
			<table class="table table-condensed" >
				<tr>
					<td>页面名称</td>
					<td><input type="text" style="width:110px;"/></td>
				</tr>
				<tr>
					<td>背景颜色</td>
					<td>
						<div class="bgColorUI"></div>
					</td>
				</tr>
				<tr>
					<td>分辨率</td>
					<td>
						<select style="width:110px;height:22px;">
						  <option value="1920x1080">1920x1080</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>背景图片</td>
					<td>
			           <div class="fileContainer">
			           		<input id="filelabel" type="text" style="width:85px;">
			           		<button class="btn btn-xs btn-default" onclick="document.getElementById('file').click();">浏览</button>
			           		<input id="file" onchange="document.getElementById('filelabel').value=this.value;" type="file" style="display: none;">
			           </div>
					</td>
				</tr>
				<tr>
					<td>页面时长</td>
					<td>
						<input type="text" style="width:50px;">&nbsp;<span>分</span>
					</td>
				</tr>
				<tr>
					<td>切换效果</td>
					<td>
						<select style="width:110px;height:22px;">
						  <option value="0">跳转</option>
						  <option value="1">往右滑动</option>
						  <option value="2">往左滑动</option>
						  <option value="3">放大</option>
						  <option value="4">缩小</option>
						</select>
					</td>
				</tr>
			</table>
		</div>
		<div id="allPages">
			<h2>Vivamus fringilla suscipit justo</h2>
			<p>Aenean dui nulla, egestas sit amet auctor vitae, facilisis id
				odio. Donec dictum gravida feugiat.</p>
			<p>Class aptent taciti sociosqu ad litora torquent per conubia
				nostra, per inceptos himenaeos. Cras pretium elit et erat
				condimentum et volutpat lorem vehicula</p>
			<p>Morbi tincidunt pharetra orci commodo molestie. Praesent ut
				leo nec dolor tempor eleifend.</p>
		</div>
	</div>
</div>
<div style="height:50%;">
	<ul class="tabs">
		<li style="width: 32%;"><a href="javascript:void(0)"
			title="elementProperties">样式属性</a></li>
		<li style="width: 32%;"><a href="javascript:void(0)"
			title="stufflist">素材列表</a></li>
		<li style="width: 32%;"><a href="javascript:void(0)"
			title="interactive">交互</a></li>
	</ul>

	<div class="content">
		<div id="elementProperties">
			<h2>Lorem ipsum sit amet</h2>
			<p>Praesent risus nisi, iaculis nec condimentum vel, rhoncus vel
				dolor. Aenean nisi lectus, varius nec tempus id, dapibus non quam.</p>
			<p>Suspendisse ac libero mauris. Cras lacinia porttitor urna,
				vitae molestie libero posuere et. Mauris turpis tortor, mollis non
				vulputate sit amet, rhoncus vitae purus.</p>
			<p>Praesent risus nisi, iaculis nec condimentum vel, rhoncus vel
				dolor. Aenean nisi lectus, varius nec tempus id, dapibus non quam.</p>
			<p>Suspendisse ac libero mauris. Cras lacinia porttitor urna,
		</div>
		<div id="stufflist">
			<h2>Vivamus fringilla suscipit justo</h2>
			<p>Aenean dui nulla, egestas sit amet auctor vitae, facilisis id
				odio. Donec dictum gravida feugiat.</p>
			<p>Class aptent taciti sociosqu ad litora torquent per conubia
				nostra, per inceptos himenaeos. Cras pretium elit et erat
				condimentum et volutpat lorem vehicula</p>
			<p>Morbi tincidunt pharetra orci commodo molestie. Praesent ut
				leo nec dolor tempor eleifend.</p>
		</div>
		<div id="interactive">
			<h2>Vivamus fringilla suscipit justo</h2>
			<p>Aenean dui nulla, egestas sit amet auctor vitae, facilisis id
				odio. Donec dictum gravida feugiat.</p>
			<p>Class aptent taciti sociosqu ad litora torquent per conubia
				nostra, per inceptos himenaeos. Cras pretium elit et erat
				condimentum et volutpat lorem vehicula</p>
			<p>Morbi tincidunt pharetra orci commodo molestie. Praesent ut
				leo nec dolor tempor eleifend.</p>
		</div>
	</div>
</div>