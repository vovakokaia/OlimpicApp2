<?php
require_once $_SERVER['DOCUMENT_ROOT'].'/Acrochamp/includes/basic/defines.php';
require_once $_SERVER['DOCUMENT_ROOT'].'/Acrochamp/classes/mysql/mysql.php';
$sportmsen = mysql :: select_one('sportsmens',
							 	 "id = '".$_POST['datas']['CURRENT_SPORTSMEN']."'");
//var_dump($sportmsen);
		$A_score_1 = $sportmsen['cas_score_1'] + $sportmsen['cas_score_2'] + $sportmsen['cas_score_3'] + $sportmsen['cas_score_4'];
		$E_score_1 = $sportmsen['cas_score_5'] + $sportmsen['cas_score_6'] + $sportmsen['cas_score_7'] + $sportmsen['cas_score_8'];
?>
	<div class="federation">
		<img src="https://scontent.ftbs6-1.fna.fbcdn.net/v/t1.0-9/33980228_1871163019571684_4810207567286370304_n.jpg?_nc_cat=106&_nc_oc=AQnJkoAkfXtzdHj0Sc60tvh7DPlixG1zFfue4g0f8wb0xIJKKXmpf_O7R-DKaSFDZFE&_nc_ht=scontent.ftbs6-1.fna&oh=e08bbabe3efce6a3be940d5e5faf60c1&oe=5DB9CE31" alt="">

		<h1 class="page_title">United Georgian Gymnastics Federation</h1>
	</div>
	<div class="category">
 
		<h1 class="page_title">Category</h1>
		<div class="category_name">
			<h1 class="page_title sportsmen_category" data-category="<?= $sportmsen['sportsmen_category']?>"><?= $sportmsen['sportsmen_category']?></h1>
		</div>

	</div> 

	<div class="contestants">
<?php
		if(count(explode(',', $sportmsen['name']))) {
			for($i = 0; $i < count(explode(',', $sportmsen['name'])); $i++) {
?>
				<h1 class="page_title"><?= explode(',', $sportmsen['name'])[$i] ?></h1>
<?php
			}
		} else {
?>
				<h1 class="page_title"><?= $sportmsen['name'] ?></h1>
<?php
		}
?>
	</div>

	<div class="scores_div">

		<div class="country">
			<img src="/Acrochamp/countries/<?= $sportmsen['country'] ?>.jpg" alt="<?= $sportmsen['country'] ?>">
			<h1 class="page_title"><?= $sportmsen['country'] ?></h1>
		</div>

		<div class="scores">

			<div class="e">
				<h1 class="big_title">E</h1>
				<h1 class="score_title"><?= $sportmsen['cas_score_1'] ?></h1>
			</div>

			<div class="a">
				<h1 class="big_title">A</h1>
				<h1 class="score_title"><?= $sportmsen['cas_score_2'] ?></h1>
			</div>

			<div class="diff">
				<h1 class="big_title">Difficulty</h1>
				<h1 class="score_title"><?= $sportmsen['difficulty'] ?></h1>
			</div>

			<div class="cjp">
				<h1 class="big_title">CJP</h1>
				<h1 class="score_title"><?= $sportmsen['penalty'] ?></h1>
			</div>

		</div> 

		<div class="total_score">
			<div class="total">
				<h1 class="pass_title"><?= $sportmsen['action']?></h1>
				<h1 class="pass_score"><?= $sportmsen['super_score']?></h1>
			</div>

			<div class="total">
				<h1 class="pass_title">Total</h1>
				<h1 class="pass_score">32.00</h1>
			</div>

		</div>

	</div>

	<div class="place">
		<h1>Place: <span class="result">6</span></h1>
	</div>