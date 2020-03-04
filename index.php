<?php
require_once 'require.php';
?>
<!DOCTYPE html>
<html>
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
		<link rel="shortcut icon" type="image/png" href="/images/logo.png"/>

		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js" defer></script>
		<script src="/includes/bootstrap-sweetalert-master/dist/sweetalert.js" defer></script>
		<link rel="stylesheet" href="styles/basic.css">
		<script src="scripts/basic.js"></script>
<?php
		require_once 'includes/view/nav.php'; 
		require_once 'page_url.php'; 	
?>
		<title><?= bsc :: get_bsc('web_site_name')?></title>
	</head>
	<body>
		<style>
			#text {
				display: none;
			}
		</style>
		<div id="current_sportsmen" style="display: none"></div>
		<div id="pause"></div>
<?php 			
		if(PAGE_URL) {
			require_once PAGE_URL;
		}
//			
//		require($_SERVER['DOCUMENT_ROOT'].'/PHPExcel-1.8/Classes/PHPExcel.php');
//		$excel = PHPExcel_IOFactory::load('db.xlsx');
//	
//		Foreach($excel ->getWorksheetIterator() as $worksheet) {
//		 $lists[] = $worksheet->toArray();
//		}
//	
//		foreach($lists as $list) { 
//			$i = 0;
//			foreach($list as $row) {
//				if(!empty($row[0])) {
//					mysql :: insert('sportsmens',
//								    "name, country, sportsmen_category, action", 
//								    "'".$row[0]."', '".$row[1]."', '".$row[2]."', '".$row[3]."'");
//				}
//				$i++;
//			}
//		}
?>
	</body>
</html>