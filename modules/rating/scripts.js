$(window).ready( function() {
	$('#ra0.owl-carousel').owlCarousel({
		loop: true,
		nav: false,		
		navElement: 'div class="col_padding" role="presentation"',
		navContainerClass: 'ol2',
		navClass: [
			'ol3',
			'ol4'
		],
		dots:false,
		dotsClass: 'ol5 col_padding',
		dotClass: 'ol6',
		smartSpeed: 1000,
		mouseDrag:false,
		autoplay: true,
	//	animateIn: true,
		autoplayTimeout: 8000,
		items: 1,
		margin:50
	});
});