<?php
if(!empty($_POST['datas']['CURRENT_SPORTSMEN']) && !empty($_POST['datas']['JUDGE_ID'])) {
	require_once $_SERVER['DOCUMENT_ROOT'].ACROCHAMP.'/includes/basic/defines.php';
	require_once $_SERVER['DOCUMENT_ROOT'].ACROCHAMP.'/classes/mysql/mysql.php';

	$pause = mysql :: select_one('sportsmens',
								"id = '".$_POST['datas']['CURRENT_SPORTSMEN']."'");

	$pause_judge = mysql :: select_one('users',
										"name = '".$_POST['datas']['JUDGE_ID']."'");

	if($pause['pause'] == 1 || $pause_judge['pause'] == 1) {
		$_SESSION['pause'] = true;
	} else { 
		$_SESSION['pause'] = false; 
	}

	if(!empty($_SESSION['pause'])) {
?>
		<style>
			body {
				overflow: hidden !important;
			}
		</style>

		<div class="pause_div">
			<div class="wait">Please wait...</div>
			<div class="circle_big"></div>
			<div class="circle_small"></div>
			<div class="circle_mini"></div>
			<div class="circle_low"></div>

			<img src="<?= ACROCHAMP ?>//images/logo1.jfif" alt="">
		</div>
	<?php
	}
}