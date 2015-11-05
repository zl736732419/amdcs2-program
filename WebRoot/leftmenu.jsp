<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<base href="<%=basePath%>" />
<div style="height:100%;">
<ul class="tabs">
	<li><a href="javascript:void(0)" title="tab1">模版</a></li>
	<li><a href="javascript:void(0)" title="tab2">素材</a></li>
	<li><a href="javascript:void(0)" title="tab3">拼接</a></li>
</ul>
<div class="content">
	<div id="tab1">
		<h2>Lorem ipsum sit amet</h2>
		<p>Praesent risus nisi, iaculis nec condimentum vel, rhoncus vel
			dolor. Aenean nisi lectus, varius nec tempus id, dapibus non quam.</p>
		<p>Suspendisse ac libero mauris. Cras lacinia porttitor urna,
			vitae molestie libero posuere et. Mauris turpis tortor, mollis non
			vulputate sit amet, rhoncus vitae purus.</p>
		<p>Praesent risus nisi, iaculis nec condimentum vel, rhoncus vel
			dolor. Aenean nisi lectus, varius nec tempus id, dapibus non quam.</p>
		<p>Suspendisse ac libero mauris. Cras lacinia porttitor urna,
			vitae molestie libero posuere et. Mauris turpis tortor, mollis non
			vulputate sit amet, rhoncus vitae purus.</p>
		<p>Praesent risus nisi, iaculis nec condimentum vel, rhoncus vel
			dolor. Aenean nisi lectus, varius nec tempus id, dapibus non quam.</p>
		<p>Suspendisse ac libero mauris. Cras lacinia porttitor urna,
			vitae molestie libero posuere et. Mauris turpis tortor, mollis non
			vulputate sit amet, rhoncus vitae purus.</p>
		<p>Praesent risus nisi, iaculis nec condimentum vel, rhoncus vel
			dolor. Aenean nisi lectus, varius nec tempus id, dapibus non quam.</p>
		<p>Suspendisse ac libero mauris. Cras lacinia porttitor urna,
			vitae molestie libero posuere et. Mauris turpis tortor, mollis non
			vulputate sit amet, rhoncus vitae purus.</p>
		<p>Praesent risus nisi, iaculis nec condimentum vel, rhoncus vel
			dolor. Aenean nisi lectus, varius nec tempus id, dapibus non quam.</p>
		<p>Suspendisse ac libero mauris. Cras lacinia porttitor urna,
			vitae molestie libero posuere et. Mauris turpis tortor, mollis non
			vulputate sit amet, rhoncus vitae purus.</p>
		<p>Praesent risus nisi, iaculis nec condimentum vel, rhoncus vel
			dolor. Aenean nisi lectus, varius nec tempus id, dapibus non quam.</p>
		<p>Suspendisse ac libero mauris. Cras lacinia porttitor urna,
			vitae molestie libero posuere et. Mauris turpis tortor, mollis non
			vulputate sit amet, rhoncus vitae purus.</p>
		<h3>Pellentesque habitant</h3>
		<p>Vestibulum ante ipsum primis in faucibus orci luctus et
			ultrices posuere cubilia curae.</p>
	</div>
	<div id="tab2">
		<h2>Vivamus fringilla suscipit justo</h2>
		<p>Aenean dui nulla, egestas sit amet auctor vitae, facilisis id
			odio. Donec dictum gravida feugiat.</p>
		<p>Class aptent taciti sociosqu ad litora torquent per conubia
			nostra, per inceptos himenaeos. Cras pretium elit et erat condimentum
			et volutpat lorem vehicula</p>
		<p>Morbi tincidunt pharetra orci commodo molestie. Praesent ut leo
			nec dolor tempor eleifend.</p>
	</div>
	<div id="tab3">
		<h2>Phasellus non nibh</h2>
		<p>Non erat laoreet ullamcorper. Pellentesque magna metus, feugiat
			eu elementum sit amet, cursus sed diam. Curabitur posuere porttitor
			lorem, eu malesuada tortor faucibus sed.</p>
		<h3>Duis pulvinar nibh vel urna</h3>
		<p>Donec purus leo, porttitor eu molestie quis, porttitor sit amet
			ipsum. Class aptent taciti sociosqu ad litora torquent per conubia
			nostra, per inceptos himenaeos. Donec accumsan ornare elit id
			imperdiet.</p>
		<p>Suspendisse ac libero mauris. Cras lacinia porttitor urna,
			vitae molestie libero posuere et.</p>
	</div>
</div>
</div>
