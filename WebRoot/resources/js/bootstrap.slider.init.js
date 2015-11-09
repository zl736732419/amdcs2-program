//面板右下角缩放控件
$(function() {
	$(".sliderui").slider();
	$(".slider-enabled").click(function() {
		if(this.checked) {
			$(this).siblings(".sliderui").slider("enable");
		}
		else {
			$(this).siblings(".sliderui").slider("disable");
		}
	});
	
	$('.sliderui').change(function(data){
		console.info(data.value.newValue);
	});
});