let current_sportsmen;
let counter = 0;

$(window).on('load', function() {
	setTimeout(function() {
		current_sportsmen = $('#current_sportsmen').html();
		get_ajax({'CURRENT_SPORTSMEN' : current_sportsmen},'/modules/rating/ajax/rating.php','#rate','POST',1);
	},2000)
	
    setInterval(function() {
    	get_ajax({'CURRENT_SPORTSMEN' : current_sportsmen},'/modules/table/ajax/sportsmen.php','#scoreboard','POST',1);
    }, 1000);
	

	
	  setInterval(function() {
    	


    }, 1000);
	
	setTimeout(function() {
		$('#rate').css('display','block');
		for(let i of $('.r_row')) {
			if($('.rating_header').find('h1').data('category_name') == $(i).data('category_val')) {
				$(i).css('display', 'block');
				counter++;
				$('.contestant_place_' + counter).html(counter);
			} else {
				$(i).css('display', 'none');
			}
		}

	},5000);
});