//面板右下角缩放控件
$(function() {
	$("#slider").slider();
	$("#slider-enabled").click(function() {
		if(this.checked) {
			$("#slider").slider("enable");
		}
		else {
			$("#slider").slider("disable");
		}
	});
	
	$('#slider').change(function(data){
		console.info(data.value.newValue);
	});
});