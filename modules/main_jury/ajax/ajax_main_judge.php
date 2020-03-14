<?php
require_once $_SERVER['DOCUMENT_ROOT'].ACROCHAMP.'/includes/basic/defines.php';
require_once $_SERVER['DOCUMENT_ROOT'].ACROCHAMP.'/classes/mysql/mysql.php';
//require_once $_SERVER['DOCUMENT_ROOT'].ACROCHAMP.'/includes/basic/current_sportsmen.php'; 
//mysql :: connect();

$select = mysql :: select_one('sportsmens',
						 	  "id = '".$_POST['datas']['CURRENT_SPORTSMEN']."'");

for($b = 1; $b <= 8; $b++) {
	$judges = mysql :: select_one('users',
								  "id = ".$b);
		if($b <= 4) {
?>
		<div id="" class="low_jury">
			<div class="return" data-id="A" data-judge_id="<?= $judges['id'] ?>">Return</div>

			<div class="a low_point">
				<h5 class="page_title_h1"><?= $judges['judge_category'] ?></h5>
				<span><?= $select['cas_score_'.$b]?></span>
			</div>
		</div>
<?php	
	} else {
?>
		<div id="" class="low_jury">
			<div class="return" data-id="E" data-judge_id="<?= $judges['id'] ?>">Return</div>

			<div class="e low_point">
				<h5 class="page_title_h1"><?= $judges['judge_category'] ?></h5>
				<span><?= $select['cas_score_'.$b]?></span>
			</div>
		</div>

<?php
	}
}
?>
<script>
	$('.return').on('click', function() {
		get_ajax({'judge_id' : $(this).data('judge_id'),'CURRENT_SPORTSMEN' : $('#current_sportsmen').html()},'/Acrochamp/modules/main_jury/ajax/ajax_return.php','#ajax_load_div','POST', 0);
	});
	
	$('.return').on('click', function() {
		get_ajax({'PAUSE' : 0,'JUDGE_ID' : $(this).data('judge_id'),'CURRENT_SPORTSMEN' : $('#current_sportsmen').html()},'/Acrochamp/modules/admin/ajax/set_pause.php','#ajax_load_div','POST', 0);
	});
</script>