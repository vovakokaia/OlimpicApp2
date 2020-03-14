'use strict';
function get_ajax(datas,ajax_file_path,div_id,method,html = 1,succesfunction = 0) {
	$.ajaxSetup({cache: false});
	let root = $("#documentRoot").val();
	
	$.ajax({
		'type': method,
		'url': root + ajax_file_path,
		'data': {'datas': datas},
		'success': function(data) {
			if(!succesfunction) {
				if(html === 1) {
					$(div_id).html(data);
				} else {
					
				}
			} else {
				swal({
				  title: "Success!",
				  text: false,
				  showCancelButton: true,
				  confirmButtonClass: "btn-success",
				  confirmButtonText: "OK!",
				  closeOnConfirm: true
				});
			}
		}
	});
}

setInterval(function () {
	get_ajax({'true' : 'true'},'includes/basic/current_sportsmen.php','#current_sportsmen','POST', 1);
}, 1000);

setInterval(function () {
	get_ajax({'CURRENT_SPORTSMEN' : $('#current_sportsmen').html(), 'JUDGE_ID' : $('#judge_id').val()},'/includes/basic/pause.php','#pause','POST', 1);
}, 3000);

$(document).ready(function() {
	get_ajax({'CURRENT_SPORTSMEN' : $('#current_sportsmen').html(), 'JUDGE_ID' : $('#judge_id').val()},'/includes/basic/pause.php','#pause','POST', 1);
	
//	window.onbeforeunload = function() {
//        return false;
//	};  
});
