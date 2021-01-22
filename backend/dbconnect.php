<?php
 

// the conection of database local host  where the datas are stored
DEFINE ('DB_HOSTNAME', 'localhost');
DEFINE ('DB_DATABASE', 'interna5_savecom');
DEFINE ('DB_USERNAME', 'inter_ussavcom');
DEFINE ('DB_PASSWORD', 'ixU%2k97');
 
$connection = mysqli_connect(DB_HOSTNAME, DB_USERNAME, DB_PASSWORD, DB_DATABASE);
 
mysqli_set_charset($connection, "utf8");
date_default_timezone_set('Europe/Rome');
?>