<?php

@define('D_R', $_SERVER['DOCUMENT_ROOT']);

if (strpos(D_R, 'Acrochamp')) {
    @define(ACROCHAMP, "");
} else {
    @define(ACROCHAMP, "/Acrochamp");
}

//require_once $_SERVER['DOCUMENT_ROOT'].'/Acrochamp/includes/basic/current_sportsmen.php';
if(empty($_POST['datas']['all'])) {
require_once $_SERVER['DOCUMENT_ROOT'].ACROCHAMP.'/includes/basic/defines.php';
require_once $_SERVER['DOCUMENT_ROOT'].ACROCHAMP.'/classes/mysql/mysql.php';
//require_once $_SERVER['DOCUMENT_ROOT'].ACROCHAMP.'/includes/basic/current_sportsmen.php';
	if(empty($_POST['datas']['all'])) {
		if($_POST['datas']['PAUSE'] != 0) {
			
			if($_POST['datas']['JUDGE_ID']) {
				mysql :: update('sportsmens',
							"pause = ".$_POST['datas']['PAUSE'],
							"id = '".$_POST['datas']['CURRENT_SPORTSMEN']."'");
			} else {
				
				mysql :: update('users',
								"pause = ".$_POST['datas']['PAUSE'],
								"name = '".$_POST['datas']['JUDGE_ID']."'");
			}
		} else {
			mysql :: update('users',
								"pause = ".$_POST['datas']['PAUSE'],
								"name = '".$_POST['datas']['JUDGE_ID']."'");

			mysql :: update('sportsmens',
							"pause = ".$_POST['datas']['PAUSE'],
							"id = '".$_POST['datas']['CURRENT_SPORTSMEN']."'");
		}
	} else {
		$sportsmens = mysql :: select('sportsmens');
		
		foreach($sportsmens as $sportsmens) {
			mysql :: update('sportsmens',
						"pause = ".$_POST['datas']['PAUSE'],
						"id = '".$sportsmens['id']."'");
		}
		
		$users = mysql :: select('users');
		
		foreach($users as $users) {
			mysql :: update('users',
						"pause = ".$_POST['datas']['PAUSE'],
						"name = '".$users['id']."'");
		}
	}
}