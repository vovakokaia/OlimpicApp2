<?php
@define('D_R', $_SERVER['DOCUMENT_ROOT'].'/Acrochamp/');
//Basic
require_once D_R.'/includes/basic/ini_set.php';
require_once D_R.'/includes/basic/session.php';
require_once D_R.'/includes/basic/defines.php';
//Classes -> Mysql
require_once D_R.'/classes/mysql/mysql.php';
//Classes -> System words and configurations
require_once D_R.'/classes/sys_words_and_configs/bsc.php';
require_once D_R.'/classes/sys_words_and_configs/bsw.php';
require_once D_R.'/classes/sys_words_and_configs/msc.php';
require_once D_R.'/classes/sys_words_and_configs/msw.php';
//Classes -> Password
require_once D_R.'/classes/password/password.php';
//Classes -> Modules
require_once D_R.'/classes/modules/module.php';
//Basic -> Current -> Sportsmen
require_once D_R.'/includes/basic/current_sportsmen.php';