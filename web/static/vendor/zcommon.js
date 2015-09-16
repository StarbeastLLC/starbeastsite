$(document).ready(function(){		
	// IE9 placeholder code
	/*
	$('[placeholder]').each(function() {  
		var input = $(this);
					
		$(input).focus(function(){
			if (input.val() == input.attr('placeholder')) {
			   input.val('').removeClass("placeholder");
			}
		});
			
		$(input).blur(function(){
		   if (input.val() == '' || input.val() == input.attr('placeholder')) {
			   input.val(input.attr('placeholder')).addClass("placeholder");
		   }
		});
	}).blur();
	*/

	// Contact on-click scroll
	$(".contact-scroll").click(function() {
		$('html, body').animate({
			scrollTop: $(".contact-wrap").offset().top},
			'slow');
	});

	// Services on-click scroll
	$(".services-scroll").click(function() {
		$('html, body').animate({
			scrollTop: $(".design").offset().top},
			'slow');
	});

	// Jobs on-click scroll
	$(".jobs-scroll").click(function() {
		$('html, body').animate({
			scrollTop: $(".openings").offset().top},
			'slow');
	});

	// Events on-click scroll
	$(".events-scroll").click(function() {
		$('html, body').animate({
			scrollTop: $(".events").offset().top},
			'slow');
	});

	//Make Apply form visible
	$(".apply").click(function() {
		$(".application").removeClass("secret");
		$(".apply").addClass("secret");
	});

	// Hide Apply form again
	$(".hide-form").click(function() {
		console.log("hjkhkjhkjh");
		$(".application").addClass("secret");
		$(".apply").removeClass("secret");
	});
	
});
