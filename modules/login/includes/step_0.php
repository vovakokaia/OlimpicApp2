<link rel="stylesheet" href="<?= ACROCHAMP ?>/styles/basic.css">
<link rel="stylesheet" href="<?= ACROCHAMP ?>/modules/login/styles.css">
<script type="text/javascript" src="<?= ACROCHAMP ?>/modules/login/scripts.js"></script>

<style>
	#pause {
		display: none !important;
	}
</style>

<div class="login_wrapper">
	<div class="logo_div">
		<img src="<?= ACROCHAMP ?>/images/logo1.jfif" alt="">
		<h3>The First International Tournament in Acrobatic Gymnastics “GURGENIDZE ACRO CUP” 10-14 August 2019 Tbilisi. Georgia</h3>
	</div>
  
<?php
	if(isset($_GET['res']) && $_GET['res'] == 0) {
?>
		<h1>ERROR UNDEFINED USER</h1>
<?php
	}
?>
	<div class="login_form_wrapper">
		<div class="login_title">
			<h2><?= bsw :: get_bsw('login_title')?></h2>
		</div>
		
		
	  <form method="post" class="login_form" id="login_form">
		<div class="input_div">
		  <label for="name"><?= bsw :: get_bsw('name_label')?></label>
		  <input type="text" class="input_name" id="email" placeholder="Enter ID" name="name">
		</div>
		<div class="input_div">
		  <label for="pwd"><?= bsw :: get_bsw('password_label')?></label>
		  <input type="password" class="input_psw" id="pwd" placeholder="Enter Password" name="password">
		</div>
		<input type="hidden" name="login_submit" value="a">
		<div class="input_div input_button">
			<button type="submit" class="form_button" ><?= bsw :: get_bsw('submit')?></button>
		</div>
<?php
		$users = mysql :: select('users');
?>
		
		  <input type="hidden" id="users_data" value="<?= $users ?>">
	  </form>
	</div>
</div>