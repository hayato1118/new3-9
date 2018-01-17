$(function(){
	var modal = $(".modal");
	var opacity = 0.6;
	var button = $(".close_modal");
	var limit = 120;
	var cookie = $.cookie("modal");
	if(cookie !== "off"){
		console.log("!!!")
		var overlay = $("<div></div>");
		overlay.css({
			"position":"fixed",
			"z-index":100,
			"top":0,
			"left":0,
			"height":100+"%",
			"width":100+"%",
			"background":"#000",
			"opacity":opacity
		});
		$("body").append(overlay);
		modal.css("display", "block");
		console.log("b")
	}
	button.click(function(){
		$(overlay).fadeOut("slow");
		$(modal).hide();
		var clearTime = new Date();
		clearTime.setTime(clearTime.getTime()+(limit*60*1000));
		$.cookie("modal", "off", {expires:clearTime, path:"/"});
	});
	$(".remove_cookie").click(function(){
		$.removeCookie("modal", {expires:-1, path:"/"});
		location.reload();
	});
});