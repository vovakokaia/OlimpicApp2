<?php

@define('D_R', $_SERVER['DOCUMENT_ROOT']);

if (strpos(D_R, 'Acrochamp')) {
    @define(ACROCHAMP, "");
} else {
    @define(ACROCHAMP, "/Acrochamp");
}

@define('SERVERNAME', 'localhost');
@define('USERNAME', 'root');
@define('PASSWORD', '');
@define('DB_TABLE', 'onavt_25130514_acrochamp');

//vlad privet
//david *****