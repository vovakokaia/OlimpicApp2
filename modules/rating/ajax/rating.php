<?php
require_once $_SERVER['DOCUMENT_ROOT'].'/Acrochamp/includes/basic/defines.php';
require_once $_SERVER['DOCUMENT_ROOT'].'/Acrochamp/classes/mysql/mysql.php';
?>
<link rel="stylesheet" href="/Acrochamp/modules/rating/owlcarousel/dist/assets/owl.carousel.min.css">
<link rel="stylesheet" href="/Acrochamp/modules/rating/owlcarousel/dist/assets/owl.theme.default.min.css">
<link rel="stylesheet" href="/Acrochamp/styles/basic.css"> 
<link rel="stylesheet" href="/Acrochamp/modules/rating/styles.css">
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> -->

<script src="/Acrochamp/modules/rating/scripts.js" defer></script>
<?php
	$sportmsen = mysql :: select('sportsmens',
								 "id != 0",
								 'super_score DESC');

	$sportmsen_in = mysql :: select_one('sportsmens',
							 	 	 	"id = '".$_POST['datas']['CURRENT_SPORTSMEN']."'");
?>  

<div class="rating">
	<div class="rating_header content_div col_padding">
		<img class="col_padding" src="/Acrochamp/images/logo1.jfif" alt="logo">
		<h1 class="col_padding" class="category_name_rating" data-category_name="<?= $sportmsen_in['sportsmen_category'] ?>"><?= $sportmsen_in['sportsmen_category'] ?></h1>
		<img class="col_padding" src="/Acrochamp/images/logo2.jfif" alt="logo">
	</div>
	<div class="rating_box content_div col_padding">
		<div class="box_head">
			<h4 style="text-align: center;" class="r_place col_1">Place</h4>
			<h4 style="text-align: center;" class="r_country col_2">Country</h4>
			<h4 class="name col_7">Name</h4>
			<h4 style="text-align: center;" class="r_points col_2">Points</h4>
			<div class="clear"></div>
		</div>
		<div id="ra0" class="owl-carousel">
<?php
			for($k = 0; $k < count($sportmsen); $k++) {
				if($k%3!=0) {
					$c = $k;
					$sportmsen = mysql :: select('sportsmens',
												 "id != 0",
												 'super_score DESC',
												 '*',
												 $c.', '.$c+3);
?>
					<div class="box_body">
<?php
						$i = 1;
						foreach($sportmsen as $sportmsen) {
?>

							<div class="r_row" data-category_val="<?= $sportmsen['sportsmen_category'] ?>">
								<div style="text-align: center;" class="col_1 contestant_place_<?= $i ?>"><?php echo $i; ?></div>
								<div style="text-align: center;" class="r_country col_2">
									<div class="col_4 no_padding country_with_img">
										<img src="/Acrochamp/countries/<?= $sportmsen['country'] ?>.jpg" alt="<?= $sportmsen['country'] ?>">
									</div>
									<div class="col_4 no_padding"><?= $sportmsen['country'] ?></div>
								</div>
								<div class="name col_7"><?= $sportmsen['name']?></div>

								<div style="text-align: center;" class="points col_2"><?= $sportmsen['super_score'] ?></div>
								<div class="clear"></div>
							</div>			

<?php
						$i++;
						}
?>
					</div>
<?php
					//$c = 0;
				} else {
					$b = $k;
					$sportmsen = mysql :: select('sportsmens',
												 "id != 0",
												 'super_score DESC',
												 '*',
												 $b.', '.$b+3);
?>
					<div class="box_body">
<?php
						$i = 1;
						foreach($sportmsen as $sportmsen) {
?>

							<div class="r_row" data-category_val="<?= $sportmsen['sportsmen_category'] ?>">
								<div style="text-align: center;" class="col_1 contestant_place_<?= $i ?>"><?php echo $i; ?></div>
								<div style="text-align: center;" class="r_country col_2">
									<div class="col_4 no_padding country_with_img">
										<img src="/Acrochamp/countries/<?= $sportmsen['country'] ?>.jpg" alt="<?= $sportmsen['country'] ?>">
									</div>
									<div class="col_4 no_padding"><?= $sportmsen['country'] ?></div>
								</div>
								<div class="name col_7"><?= $sportmsen['name']?></div>

								<div style="text-align: center;" class="points col_2"><?= $sportmsen['super_score'] ?></div>
								<div class="clear"></div>
							</div>			

<?php
						$i++;
						}
?>
					</div>
<?php
					//$b = 0;
				}
			}
?>
		</div>
	</div>
</div>