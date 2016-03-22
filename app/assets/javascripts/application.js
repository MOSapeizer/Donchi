// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(function() {
	$(".login a:contains('sign in')").click(function(){
		$(".login-form").css("display", "block");
		// $(".login-from input[type='submit']").click(function() {
		// 	$(".login-form").css("display", "none");
		// });
	});

	$(".popup").fadeIn("slow");
	$(".popup").fadeOut(1500);

	lesson = {};
	height = lessonHeight(lesson);

	var width = $(window).width();
	$(window).resize(function(){
	   if($(this).width() != width){
	      width = $(this).width();
	      height = lessonHeight(lesson);
	      console.log(lesson);
	      for( i= 1 ; i < 7 ; i++){
			$('.aside div:nth-child(' + i + ')').height(lesson[i] +heightOf(i) );
			console.log(lesson[i]);
		  }
	   }
	});

	for( i= 1 ; i < 7 ; i++){
		$('.aside div:nth-child(' + i + ')').height(lesson[i] +heightOf(i) );
		console.log(lesson[i]);
	}

	$('.btn-custom').click(function() {
		button = $(this);
		span = button.next()
		p = span.next();
		index = button.parent().attr('id');
		div = $('.aside div:nth-child(' + index + ')');

		p.slideToggle( 500, "easeOutSine" );
		
		if(p.hasClass('active') && p.is(":visible")) {
			span.show();
			p.removeClass('active');
			console.log(height[index]);
			div.animate({ height: lesson[index] + heightOf(index) });
			button.text("more");
			
		}
		else {
			span.hide();
			p.addClass('active');
			div.animate({ height: height[index] });
			button.text("less");
		}
	});

	function heightOf(index) {
		offset = { 1: 24,  2: 0,    3: 0,
		  		   4: 0,   5: 0,  6: 20 };
		return offset[index];
	}

	function lessonHeight(lesson) {
		height = {};
		for( i = 1 ; i < 7 ; i++){
			thisLesson = $('.lesson#' + i);
			lesson[i] = thisLesson.height();
			p = thisLesson.find('p');
			h = p.show().height() + 10;
			if ( ! ($(window).width() > 767)) {
				console.log(1)
				p.hide();
			}
			height[i] = h + lesson[i] + heightOf(i);
		}
		console.log(height);
		return height;
	}

	// $(window).on('scroll', function () {
	//     var scrollTop = $(this).scrollTop();
	//     var h1_top = $('h1').offset().top;
	//     var half_height = $(this).outerHeight()/2;
	//     var range = 800;
	//     var ratio = 1- (h1_top - scrollTop) / (range);

	//    	console.log(ratio);
	//     $('h1').css({'opacity': ratio});

	//     if(ratio > 1) {
	//     	$('h1').css({'opacity': 1 });
	//     } else if(ratio < 0 ) { 
	//     	$('h1').css({'opacity': 0}) 
	// 	}
	// })
});