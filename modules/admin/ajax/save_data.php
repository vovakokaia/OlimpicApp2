<?php
require_once $_SERVER['DOCUMENT_ROOT'].'/Acrochamp/includes/basic/defines.php';
require_once $_SERVER['DOCUMENT_ROOT'].'/Acrochamp/classes/mysql/mysql.php';

var_dump($_POST);
//
//mysql :: delete('sportsmens',
//				"id != 0");
//
//foreach($_POST['datas']['full_data'] as $data) {
//	
//	mysql :: insert('sportsmens',
//				    "id",
//				    "'".$data['id']."'");
//	
//	mysql :: update('sportsmens',
//				   "name = '".$data['participant']."', country = '".substr($data['national_federation'], 0, 3)."', sportsmen_category = '".substr($data['national_federation'], 3, 0)."', difficulty = '".$data['diff_bal']."', penalty = '".$data['P_bal']."', super_score = '".$data['score_bal']."'",
//				   "id = '".$data['id']."'");
//}