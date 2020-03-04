'use strict'

let is_focused;

if($('#email').val() != '' && $('#pwd').val() != '') {
	$('#login_form').submit();
} else {
	alert('Please fill all the required fields');
}



setTimeout(function() {
	
	$('input').focusin(function() {
		$('.logo_div').hide(300);
		is_focused = true;
	});
	
}, 500);



