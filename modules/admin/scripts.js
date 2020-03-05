let count = 0;
let simple_row = {};
let table_arr = [];
let dot_used = false;
let checked_amount = 0;
let paused = false;

let say = (x) => {console.log(x);}

let styles = ".table_block h3{color: #fff;margin-bottom: 30px;}.table_block{margin:auto;width:max-content;top:50px;display:block;position:relative;margin-left:300px;}.table_block h1{color:#fff;margin-bottom:30px;}.database{width:100%;color:#000;display:flex;flex-direction:column;}.database.thead{background-color:#F26430;z-index:5;display:flex;width:max-content;padding-right:9px;}.table{display:flex;flex-direction:column;}.tbody{/*border:1pxsolid#fff;*/border-radius:10px;border-top:none;display:flex;flex-direction:column;position:relative;margin-top:-10px;padding-top:10px;z-index:0;max-height:500px;background:rgba(255,255,255,0.05);width:max-content;}.tr,.trh{border-top:1px solid black;width:max-content;display:flex;align-items:center;}.td,.th{text-align:center;;padding:10px;word-wrap:break-word;display:flex;align-items:center;justify-content:flex-start;text-align:left;flex-direction: column;}::-webkit-scrollbar{width:5px;position:fixed;}/*Track*/::-webkit-scrollbar-track{background:rgba(255,255,255,0.3);opacity:1;height:99%}/*Handle*/::-webkit-scrollbar-thumb{background:#F26430;}/*Handleonhover*/::-webkit-scrollbar-thumb:hover{background:#FF8A16;}.check{display:none}.check~label{display:none;}.before{content:'';display: none}.td:nth-child(3){width:30px!important;}.td:nth-child(4){width:150px!important;}.td:nth-child(5){width:150px!important;}.td:nth-child(6){width:60px!important;}.td:nth-child(7){width:60px!important;}.td:nth-child(8){width:60px!important;}.td:nth-child(9){width:60px!important;}.td:nth-child(10){width:60px!important;}.td:nth-child(11){width:70px!important;}.td:nth-child(12){width:70px!important;}.header{display:flex;justify-content:space-around;align-items:center;color:#fff;font-size:18px;}.header p{width:50%;margin:auto;color:#000}.header img{width:100px;height:auto;}hr{width:100%;margin-top:30px;margin-bottom:30px;}";
 
let event_1,r_id,national_federation,participant,event_2,diff_2,diff_1,A_2,A_1,E_2,E_1,P_2,P_1,score_2,score_1,total;

let cas_score_1_1,
	cas_score_1_2,
	cas_score_2_1,
	cas_score_2_2,
	cas_score_3_1,
	cas_score_3_2,
	cas_score_4_1,
	cas_score_4_2,
	cas_score_5_1,
	cas_score_5_2,
	cas_score_6_1,
	cas_score_6_2,
	cas_score_7_1,
	cas_score_7_2,
	cas_score_8_1,
	cas_score_8_2,
	return_judge_1,
	return_judge_2,
	return_judge_3,
	return_judge_4,
	return_judge_5,
	return_judge_6,
	return_judge_7,
	return_judge_8,
	final,
	rang,
	pause_db, 
	total_db;

let start_from_id = () => {
	if(paused) {		
		get_ajax({'ADMIN_START_FROM' : $('#start_id').val()},'/includes/basic/current_sportsmen.php','#admin_data','POST', 0);
		let available = false;
		let entered_id = $('#start_id').val();
		for(let row of $('.tr')){
			for(let column of $(row).find('.td')){
				let count = 0;
				if($(column).data('value') == 'id' && $(column).html() == entered_id){
					$('.tr').css('background-color', '');
					$(row).css('background-color', 'rgba(254, 241, 96, 0.6)');
					available = true;
					$('.sidebar').css('width', '0');
					$('.start_functions').removeClass('slideUp');
					setTimeout(function() {
						$('.start_functions').css('display', 'none');
					}, 300);
					break;
				}
				if(count == 5){ 
					count = 0;
					break;
				}
				count ++;
			}
		}

		if(available) {
			swal({
				icon: 'success',
				title: 'SUCCESS',
				text: 'Row #' + entered_id + " Activated, click 'RESUME' to continue",
				button: {
					text: 'OK',
					className: 'btn-success'
				}
			}).then(function() {
				$('#current_sportsmen').html(entered_id);
				$('.admin_overlay').fadeIn();
			});
		} else {
			let wrapper = document.createElement('div');
			let title = document.createElement('h2');
			let text = document.createElement('p');
			$(text).html('Row #' + entered_id + " is not available");
			$(title).css({'color':'red','margin-bottom': '15px'});
			title.innerHTML = "ERROR";
			wrapper.appendChild(title);
			wrapper.appendChild(text);
			swal({
				icon: 'error',
				content: wrapper,
				titleColor: 'red',
				button: {
					text: 'OK',
					className: 'btn-error'
				}
			});
		}
	} else {
		alert('To change anything, please press "PAUSE" button');
	}
}

let delete_row = () => {
	$('#delete').on('click', () => {
		let arr = document.getElementsByClassName('check');
		for(let x of arr) {
			setTimeout(() => {
				if(x.checked) {
					console.log($(x).attr('id'));
					$(x).parent().remove();
				}
			},10);		
		}
	});
}

let mark_all = () => {
	$('#mark_all').off();
	
	$('#mark_all').on('click', () => {
		let checkboxes = $('.check');

		for(let y of checkboxes) {
			if($(y).prop('checked') == true){
				checked_amount ++;
			}
		}
		
		checked_amount < checkboxes.length ? count = 0 : count = 1;
		checked_amount = 0;
		
		if(count == 0) {
			for(let y of checkboxes) {
				$(y).prop('checked', 'true');
			}
			$('.before').fadeIn(1);
			count = 1;
		} else {
			for(let y of checkboxes) {
				$(y).prop('checked', '');
			}
			$('.before').fadeOut(1);
			count = 0;
		}
	});
}

let print = () => {
	$('#print').on('click', function() {
	  let divToPrint = document.getElementById('DivToPrint');
	  let newWin = window.open('','Print-Window','_top');

	  newWin.document.open();

	  newWin.document.write('<html><body onload="window.print()">'
							+ "<style>" + styles + "</style>"
							+ divToPrint.innerHTML +
							'</body></html>');

	  newWin.document.close();

	  setTimeout(function(){newWin.close();},300);
	});
}

let get_full_data = () => {
	simple_row = {};
	table_arr = [];
	let rows = $('.tr');
	let row_cells = $(rows).find('.td');
	console.log($(row_cells).length)
	for(let row of rows) {	
		for(let col of $(row).find('.td')){
			
			if($(col).data('value') == 'id') {
				r_id = ($(col).html());			
			}
			
			if($(col).data('value') == 'Participant') {
				participant = ($(col).html());			
			}
			
			if($(col).data('value') == 'National_federation') {
				national_federation = ($(col).html());			
			}
			
			if($(col).data('value') == 'Event') {
				if($(col).find('div').eq(0).data('event') == 'BALANCE') {
					event_1 = ($(col).find('div').eq(0).html());
					event_2 = ($(col).find('div').eq(1).html());
				}
				else if($(col).find('div').eq(0).data('event') == 'DYNAMIC') {
					event_1 = ($(col).find('div').eq(0).html());
					event_2 = ($(col).find('div').eq(1).html());
				}
			}
			
			if($(col).data('value') == 'Diff') {
				if($(col).find('div').eq(0).data('event') == 'BALANCE') {
					diff_1 = ($(col).find('div').eq(0).html());
					diff_2 = ($(col).find('div').eq(1).html());
				}
				else if($(col).find('div').eq(0).data('event') == 'DYNAMIC') {
					diff_1 = ($(col).find('div').eq(0).html());
					diff_2 = ($(col).find('div').eq(1).html());
				}
			}
			
			if($(col).data('value') == 'A') {
				if($(col).find('div').eq(0).data('event') == 'BALANCE') {
					A_1 = ($(col).find('div').eq(0).html());
					A_2 = ($(col).find('div').eq(1).html());
				}
				else if($(col).find('div').eq(0).data('event') == 'DYNAMIC') {
					A_1 = ($(col).find('div').eq(0).html());
					A_2 = ($(col).find('div').eq(1).html());
				}
			}
			
			if($(col).data('value') == 'E') {
				if($(col).find('div').eq(0).data('event') == 'BALANCE') {
					E_1 = ($(col).find('div').eq(0).html());
					E_2 = ($(col).find('div').eq(1).html());
				}
				else if($(col).find('div').eq(0).data('event') == 'DYNAMIC') {
					E_1 = ($(col).find('div').eq(0).html());
					E_2 = ($(col).find('div').eq(1).html());
				}
			}
			
			if($(col).data('value') == 'P') {
				if($(col).find('div').eq(0).data('event') == 'BALANCE') {
					P_1 = ($(col).find('div').eq(0).html());
					P_2 = ($(col).find('div').eq(1).html());
				}
				else if($(col).find('div').eq(0).data('event') == 'DYNAMIC') {
					P_1 = ($(col).find('div').eq(0).html());
					P_2 = ($(col).find('div').eq(1).html());
				}
			}
			
			if($(col).data('value') == 'Score') {
				if($(col).find('div').eq(0).data('event') == 'BALANCE') {
					score_1 = ($(col).find('div').eq(0).html());
					score_2 = ($(col).find('div').eq(1).html());
				}
				else if($(col).find('div').eq(0).data('event') == 'DYNAMIC') {
					score_1 = ($(col).find('div').eq(0).html());
					score_2 = ($(col).find('div').eq(1).html());
				}
			}
			
			if($(col).data('value') == 'cas_score_1') {
				if($(col).find('input[type="hidden"]').eq(0).data('event') == 'BALANCE') {
					cas_score_1_1 = ($(col).find('input[type="hidden"]').eq(0).val());
					cas_score_1_2 = ($(col).find('input[type="hidden"]').eq(1).val());
				}
				else if($(col).find('input[type="hidden"]').eq(0).data('event') == 'DYNAMIC') {
					cas_score_1_1 = ($(col).find('input[type="hidden"]').eq(0).val());
					cas_score_1_2 = ($(col).find('input[type="hidden"]').eq(1).val());
				}
			}
			
			if($(col).data('value') == 'cas_score_2') {
				if($(col).find('input[type="hidden"]').eq(0).data('event') == 'BALANCE') {
					cas_score_2_1 = ($(col).find('input[type="hidden"]').eq(0).val());
					cas_score_2_2 = ($(col).find('input[type="hidden"]').eq(1).val());
				}
				else if($(col).find('input[type="hidden"]').eq(0).data('event') == 'DYNAMIC') {
					cas_score_2_1 = ($(col).find('input[type="hidden"]').eq(0).val());
					cas_score_2_2 = ($(col).find('input[type="hidden"]').eq(1).val());
				}
			}
			
			if($(col).data('value') == 'cas_score_3') {
				if($(col).find('input[type="hidden"]').eq(0).data('event') == 'BALANCE') {
					cas_score_3_1 = ($(col).find('input[type="hidden"]').eq(0).val());
					cas_score_3_2 = ($(col).find('input[type="hidden"]').eq(1).val());
				}
				else if($(col).find('input[type="hidden"]').eq(0).data('event') == 'DYNAMIC') {
					cas_score_3_1 = ($(col).find('input[type="hidden"]').eq(0).val());
					cas_score_3_2 = ($(col).find('input[type="hidden"]').eq(1).val());
				}
			}
			
			if($(col).data('value') == 'cas_score_4') {
				if($(col).find('input[type="hidden"]').eq(0).data('event') == 'BALANCE') {
					cas_score_4_1 = ($(col).find('input[type="hidden"]').eq(0).val());
					cas_score_4_2 = ($(col).find('input[type="hidden"]').eq(1).val());
				}
				else if($(col).find('input[type="hidden"]').eq(0).data('event') == 'DYNAMIC') {
					cas_score_4_1 = ($(col).find('input[type="hidden"]').eq(0).val());
					cas_score_4_2 = ($(col).find('input[type="hidden"]').eq(1).val());
				}
			}
			
			if($(col).data('value') == 'cas_score_5') {
				if($(col).find('input[type="hidden"]').eq(0).data('event') == 'BALANCE') {
					cas_score_5_1 = ($(col).find('input[type="hidden"]').eq(0).val());
					cas_score_5_2 = ($(col).find('input[type="hidden"]').eq(1).val());
				}
				else if($(col).find('input[type="hidden"]').eq(0).data('event') == 'DYNAMIC') {
					cas_score_5_1 = ($(col).find('input[type="hidden"]').eq(0).val());
					cas_score_5_2 = ($(col).find('input[type="hidden"]').eq(1).val());
				}
			}
			
			if($(col).data('value') == 'cas_score_6') {
				if($(col).find('input[type="hidden"]').eq(0).data('event') == 'BALANCE') {
					cas_score_6_1 = ($(col).find('input[type="hidden"]').eq(0).val());
					cas_score_6_2 = ($(col).find('input[type="hidden"]').eq(1).val());
				}
				else if($(col).find('input[type="hidden"]').eq(0).data('event') == 'DYNAMIC') {
					cas_score_6_1 = ($(col).find('input[type="hidden"]').eq(0).val());
					cas_score_6_2 = ($(col).find('input[type="hidden"]').eq(1).val());
				}
			}
			
			if($(col).data('value') == 'cas_score_7') {
				if($(col).find('input[type="hidden"]').eq(0).data('event') == 'BALANCE') {
					cas_score_7_1 = ($(col).find('input[type="hidden"]').eq(0).val());
					cas_score_7_2 = ($(col).find('input[type="hidden"]').eq(1).val());
				}
				else if($(col).find('input[type="hidden"]').eq(0).data('event') == 'DYNAMIC') {
					cas_score_7_1 = ($(col).find('input[type="hidden"]').eq(0).val());
					cas_score_7_2 = ($(col).find('input[type="hidden"]').eq(1).val());
				}
			}
			
			if($(col).data('value') == 'cas_score_8') {
				if($(col).find('input[type="hidden"]').eq(0).data('event') == 'BALANCE') {
					cas_score_8_1 = ($(col).find('input[type="hidden"]').eq(0).val());
					cas_score_8_2 = ($(col).find('input[type="hidden"]').eq(1).val());
				}
				else if($(col).find('input[type="hidden"]').eq(0).data('event') == 'DYNAMIC') {
					cas_score_8_1 = ($(col).find('input[type="hidden"]').eq(0).val());
					cas_score_8_2 = ($(col).find('input[type="hidden"]').eq(1).val());
				}
			}
			
			if($(col).data('value') == 'return_score') {
				return_score = ($(col).find('input[type="hidden"]').eq(0).val());
			}
			
			if($(col).data('value') == 'return_judge_1') {
				return_judge_1 = ($(col).find('input[type="hidden"]').eq(0).val());
			}
			
			if($(col).data('value') == 'return_judge_2') {
				return_judge_2 = ($(col).find('input[type="hidden"]').eq(0).val());
				
			}
			
			if($(col).data('value') == 'return_judge_3') {
				return_judge_3 = ($(col).find('input[type="hidden"]').eq(0).val());
			}
			
			if($(col).data('value') == 'return_judge_4') {
				return_judge_4 = ($(col).find('input[type="hidden"]').eq(0).val());
			}
			
			if($(col).data('value') == 'return_judge_5') {
				return_judge_5 = ($(col).find('input[type="hidden"]').eq(0).val());
			}
			
			if($(col).data('value') == 'return_judge_6') {
				return_judge_6 = ($(col).find('input[type="hidden"]').eq(0).val());
			}
			
			if($(col).data('value') == 'return_judge_7') {
				return_judge_7 = ($(col).find('input[type="hidden"]').eq(0).val());
			}
			
			if($(col).data('value') == 'return_judge_8') {
				return_judge_8 = ($(col).find('input[type="hidden"]').eq(0).val());
			}
			
			if($(col).data('value') == 'final') {
				final = ($(col).find('input[type="hidden"]').eq(0).val());
			}
			
			if($(col).data('value') == 'rang') {
				rang = ($(col).find('input[type="hidden"]').eq(0).val());
			}
			
			if($(col).data('value') == 'pause') {
				pause_db = ($(col).find('input[type="hidden"]').eq(0).val());
			}
			
			if($(col).data('value') == 'Total') {
				$(col).html(+score_1 + (+score_2));	
				total = +($(col).html());			
			}
			
			simple_row = {
				'id': r_id,
				'participant': participant,
				'national_federation': national_federation,
				'event_1' : event_1,
				'event_2' : event_2,
				'diff_1' : diff_1,
				'diff_2' : diff_2,
				'A_1' : A_1,
				'A_2' : A_2,
				'E_1' : E_1,
				'E_2' : E_2,
				'P_1' : P_1,
				'P_2' : P_2,
				'score_1' : score_1,
				'score_2' : score_2,
				'total' : total,
				'cas_score_1_1' : cas_score_1_1,
				'cas_score_1_2' : cas_score_1_2,
				'cas_score_2_1' : cas_score_2_1,
				'cas_score_2_2' : cas_score_2_2,
				'cas_score_3_1' : cas_score_3_1,
				'cas_score_3_2' : cas_score_3_2,
				'cas_score_4_1' : cas_score_4_1,
				'cas_score_4_2' : cas_score_4_2,
				'cas_score_5_1' : cas_score_5_1,
				'cas_score_5_2' : cas_score_5_2,
				'cas_score_6_1' : cas_score_6_1,
				'cas_score_6_2' : cas_score_6_2,
				'cas_score_7_1' : cas_score_7_1,
				'cas_score_7_2' : cas_score_7_2,
				'cas_score_8_1' : cas_score_8_1,
				'cas_score_8_2' : cas_score_8_2,
				'return_judge_1' : return_judge_1,
				'return_judge_2' : return_judge_2,
				'return_judge_3' : return_judge_3,
				'return_judge_4' : return_judge_4,
				'return_judge_5' : return_judge_5,
				'return_judge_6' : return_judge_6,
				'return_judge_7' : return_judge_7,
				'return_judge_8' : return_judge_8,
				'final' : final,
				'rang' : rang,
				'pause_db' :  pause_db
			};
			
		}	
		table_arr.push(simple_row);
	}
	
	console.log(table_arr);
	return(table_arr);
}

let sort_by_rank = () => {
	let j = 0;
	let list = get_full_data();	
	let newList = list.sort(compare);
	for(let item of newList) {
		setTimeout(function () {
			if($('#row_' + item.id).length){
				$("#row_" + item.id).css('order', j);
				j++;
			}
		}, 10);
	}
	
}

let sort_by_id = () => {
	let k = 0;
	let list = get_full_data();	
	let newList = list.sort(compare_id);
	for(let item of newList) {
		$('#row_'+item.id).css('order', k);	
		k++;
	}
}

function compare(a, b) {
    const totalA = +a.total;
    const totalB = +b.total;

    let comparison = 0;
    if (totalA > totalB) {
      comparison = -1;
    } else if (totalB > totalA) {
      comparison = 1;
    }
    return comparison;
}

let filter = (country,category) => {
	
	if(!country) {
		country = '';
	}
	
	if(!category) {
		category = '';
	}
	
	let arguments = [country,category];
	
	let data = $('.for_filter');
	let count = 0;
	let arr = [];
	
	for(let arg of arguments) {
		if(arg != '') {
			arr.push(arg);
		}
	}
	
	if(arr.length != 0) {
		for(let x of data) {
			let a = $(x).data('country');
			let b = $(x).data('category');
			for(let j of arr) {
				if(j) {
					if(j.toLowerCase() != a.toLowerCase() && j.toLowerCase() != b.toLowerCase()) {
						$(x).parents('.tr').css('display', 'none');
					} else if(j.toLowerCase() == a.toLowerCase() || j.toLowerCase() == b.toLowerCase()) {
						count++;
					}
				}
			}
			
			if(count == arr.length) {
				$(x).parents('.tr').css('display', 'flex');
			} else {
				$(x).parents('.tr').css('display', 'none');
			}
			
			count = 0;
		}
	}
}

let trigger_filter = () => {
	$('#filter_submit').on('click', () => {
		let country = $('.countries input[type="radio"]:checked').val();
		let category = $('.categories input[type="radio"]:checked').val();
		filter(country,category);
	});
}

function compare_id(a, b) {
    const totalA = +a.id;
    const totalB = +b.id;

    let comparison = 0;
    if (totalA > totalB) {
      comparison = 1;
    } else if (totalB > totalA) {
      comparison = -1;
    }
    return comparison;
}

function isNumber(evt) {
    evt = (evt) ? evt : window.event;
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    if (charCode > 31 && (charCode < 48 || charCode > 57) && charCode != 46) {
        return false;
    } 
	if(dot_used && charCode == 46) {
		return false;
	}
	if(charCode == 46){
		dot_used = true;
	}
    return true;
}
 
let dropdown = () => {
	$('.toClick').on('click', (e) => {
		if($(e.target).parent().find('.db_functions').css('display') == 'none'){	
			$('.db_functions').slideUp();
			$('.sidebar').css('width', '0');
			$('.add_options').removeClass('slideUp');	
			$('.add_options').slideUp();	
			$('.filter_options').removeClass('slideUp');	
			$('.filter_options').slideUp();	
			$('.sidebar').css('width', '0');
			$('.start_functions').removeClass('slideUp');
			setTimeout(function() {
				$('.start_functions').css('display', 'none');
			}, 300);
			$(e.target).parent().find('.db_functions').slideDown();
		} else {
			$('.db_functions').slideUp();
			$('.sidebar').css('width', '0');
			$('.add_options').removeClass('slideUp');	
			$('.filter_options').removeClass('slideUp');	
			$('.start_functions').removeClass('slideUp');
			setTimeout(function() {
				$('.add_options').css('display', 'none');
				$('.filter_options').css('display', 'none');
				$('.start_functions').css('display', 'none');
			}, 300);
		}
	});
} 

let addRow = () => {
	let name = $('#add_name').val();
	let nf = $('#add_nf').val();
	let cn = $('#add_cn').val();
	let ct = $('#add_ct').val();
	
	if(name.length > 0 && nf.length > 0) {
		let all = get_full_data();
		let arr = [];
		for(let x of all) {
			arr.push(x.id);
		}

		let number = Math.max(...arr) + 1;
		
		if(number == 0) {
			number = 1;
		}
		
		if(+number < 0 || !number || number == '') {
			number = 0;
		} 
		
		let row = `
					<div style="order: ${number}" class="tr" id="row_${number}">
					  <input id="c${number}" class="col_padding check" type="checkbox"/>
					  <label for="c${number}">
						  <div class="before"></div>
					  </label>
					  <div class="td line_max_3" data-value="id">${number}</div>
					  <div contenteditable="true" class="td line_max_3" data-value="Participant">${name}</div>
					  <div data-country="${cn}" data-category="${ct}" contenteditable="true" class="for_filter td line_max_3" data-value="National_federation">${nf}</div>
					  <div contenteditable="true" class="td line_max_3" data-value="Event"><div class="col_padding">balance</div><div>dynamic</div></div>
					  <div contenteditable="true" class="td line_max_3" data-value="Diff"><div class="col_padding">0</div><div>0</div></div>
					  <div contenteditable="true" class="td line_max_3" data-value="A"><div class="col_padding">0</div><div>0</div></div>
					  <div contenteditable="true" class="td line_max_3" data-value="E"><div class="col_padding">0</div><div>0</div></div>
					  <div contenteditable="true" class="td line_max_3" data-value="P"><div class="col_padding">0</div><div>0</div></div>
					  <div contenteditable="true" class="td line_max_3" data-value="Score"><div class="col_padding">0</div><div>0</div></div>
					  <div contenteditable="true" class="td line_max_3" data-value="Total">${Math.round(Math.random() * 1000)}</div>
					</div>`;

		$('.tbody').append(row);
		$('.sidebar').css('width', 0);
		setTimeout(function() {
			$('.add_options').css('display', 'none');
		}, 300);
		
		$('#filter_submit').off();
		$('#filter_submit').on('click', () => {
			let country = $('.countries input[type="radio"]:checked').val();
			let category = $('.categories input[type="radio"]:checked').val();
			filter(country,category);

		});
	
		$('#unset_filter').off();
		$('#unset_filter').on('click', unset_filter);
		
		mark_all();
		
		$('label').off();
		$('label').on('click', (e)=> {
			console.log($(e.target).find('.before').css('width'));
			$(e.target).find('.before').fadeToggle();
		});
		
		$('#add_name').val('');
		$('#add_nf').val('');
	} else {
		alert("Write correct information");
	}
	
}

let unset_filter  = () => {
	$('.tr').css('display', 'flex');
	let radio =$('.filter_options input[type = "radio"]');
	for(let x of radio) {
		$(x).prop('checked', false);
	}
	
	$('#filter_title').html('Qualifying results');
	sort_by_id();
}

let start_from = () => {
	if(paused) {
		let start_id = $('#start_id').val();  
		$('.admin_overlay').fadeIn();
		my_interval = setInterval(load_data, 1000);

		if(start_id.length && +start_id <= $('.tr').length - 1) {
			alert(start_id);
		} else {
			alert('Write correct ID');
		}
		
		paused = false;
	}
}

let my_interval,load_data;

let check_one = () => {
	$('.tr label').off();
	$('.tr label').on('click', (e)=> {
		$(e.target).find('.before').fadeToggle();
		if($(e.target).find('input[type="checkbox]').prop('checked')){
			$(e.target).find('input[type="checkbox]').prop('checked', '');
		} else {
			$(e.target).find('input[type="checkbox]').prop('checked', 'true');
		}
	});
}

$(document).ready(function() {
	load_data = () => {
		get_ajax({  'CURRENT_SPORTSMEN' : $('#current_sportsmen').html()},
					'/modules/admin/ajax/admin_data.php',
					'#admin_data',
					'POST',
					 1);	
		
		let count = 0;
		
		for(let row of $('.tr')) {
			for(let column of $(row).find('.td')){
				if($(column).data('value') == 'id' && $(column).html() == $('#current_sportsmen').html()) {
					$('.tr').css('background-color', '');
					$(row).css('background-color', 'rgba(254, 241, 96, 0.6)');
					available = true;
					break;
				}
				
				if(count == 5){ 
					count = 0;
					break;
				}
				count ++;
			}
		}
	}
	
	my_interval = setInterval(load_data, 1000);
}); 

$(window).on('load', () => {
	
	setTimeout(function() {
	
	$('.bg').css('height', $(window).innerHeight() + 'px');
	
	check_one();
		
	$('#save').on('click', () => {
		get_ajax({'full_data' : get_full_data()},'/modules/admin/ajax/save_data.php','#admin_data','POST', 0);	
	});
	
	$('#start').on('click', function() {
		if(paused) {
			$('.admin_pause_block').fadeIn();
			get_ajax({'PAUSE' : 0, 'CURRENT_SPORTSMEN' : $('#current_sportsmen').html(), 'JUDGE_ID' : $('#judge_id').val(), 'all' : true},'/modules/admin/ajax/set_pause.php','#calc_value','POST', 0);
			my_interval = setInterval(load_data, 1000);
			$('.admin_overlay').fadeIn();
			paused = false;
			$('label').off();
			$('#add').off();
			$('#unset_filter').off();
			$('#add_submit').off();
			$('#sort').off();
			$('sortID').off();
			$('.td').off();
			$('#filter').off();
			$('#start_from_id').off();
			$('#startFrom').off();
		}
	});
			
	trigger_filter();
	dropdown();

	
	$('#admin_pause').on('click', function() {
		$('.admin_pause_block').fadeOut();
		
		if(!paused) {
			let count = 0;
			let entered_id = $('#start_id').val();
			for(let row of $('.tr')){
				for(let column of $(row).find('.td')){
					console.log("IM in");
					if($(column).data('value') == 'id' && $(column).html() == entered_id){
						$('.tr').css('background-color', '');
						$(row).css('background-color', 'rgba(254, 241, 96, 0.6)');
						available = true;
						break;
					}
					
					if(count == 5){ 
						count = 0;
						break;
					}
					count++;
				}
			}
			
			paused = true;
			get_ajax({'PAUSE' : 1, 'CURRENT_SPORTSMEN' : $('#current_sportsmen').html(), 'all' : true},'/modules/admin/ajax/set_pause.php','#calc_value','POST', 0);
			clearInterval(my_interval);
			$('label').off();

			$('label').on('click', (e)=> {
				$(e.target).find('.before').fadeToggle();
			});

			$('.admin_overlay').fadeOut();

			delete_row();
			mark_all();
			print();
			
			$('#add').off();
			$('#add').on('click', function() {
				if($('.sidebar').width() > 0) {
					$('.sidebar').css('width', '0');
					$('.add_options').removeClass('slideUp');
					setTimeout(function() {
						$('.add_options').css('display', 'none');
					}, 300);

				} else {
					$('.add_options').css('display', 'block');
					setTimeout(function() {
						$('.sidebar').css('width', '300px');
						$('.add_options').addClass('slideUp');
					}, 10);
				}
			});

			$('#unset_filter').off();
			$('#unset_filter').on('click', unset_filter);

			$('#sort').off();
			$('#sort').on('click',sort_by_rank);

			$('sortID').off();
			$('#sortID').on('click', sort_by_id);

			$('.td').off();
			$('.td').on('keypress',function(e){
				let current = $(e.target).data('value');
				if(current == 'Diff' || current == 'A' || current == 'E' || current == 'P' || current == 'Score' || current == 'Total') {
					if($(e.target).html().indexOf('.') == -1) {
						dot_used = false;
					}
					if(!isNumber(e)) {
						return false;
					}
				}	
			});

			$('#filter').off();
			$('#filter').on('click', function() {
				if($('.sidebar').width() > 0) {
					$('.sidebar').css('width', '0');
					$('.filter_options').removeClass('slideUp');
					setTimeout(function() {
						$('.filter_options').css('display', 'none');
					}, 300);

				} else {
					$('.filter_options').css('display', 'block');
					setTimeout(function() {
						$('.sidebar').css('width', '300px');
						$('.filter_options').addClass('slideUp');
					}, 10);
				}
			});

			$('#add_submit').off();
			$('#add_submit').on('click', addRow);

			$('#start_from_id').off();
			$('#start_from_id').on('click', start_from_id);

			$('#startFrom').off();
			$('#startFrom').on('click', function(){
		if($('.sidebar').width() > 0) {
			$('.sidebar').css('width', '0');
			$('.start_functions').removeClass('slideUp');
			setTimeout(function() {
				$('.start_functions').css('display', 'none');
			}, 300);

		} else {
			$('.start_functions').css('display', 'block');
			setTimeout(function() {
				$('.sidebar').css('width', '300px');
				$('.start_functions').addClass('slideUp');
			}, 10);
		}
	});
		}
	});
		
 }, 10);
});
