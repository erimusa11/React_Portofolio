<?php 
 //header("Access-Control-Allow-Origin: *");
 include "dbconnect.php";
 
 $connection = mysqli_connect(DB_HOSTNAME, DB_USERNAME, DB_PASSWORD, DB_DATABASE);
 
 $query_show = "SELECT * , COUNT(track_ip) AS TotalTime ,MAX(track_time) AS EnterLAst FROM trackpeople GROUP BY track_ip ORDER BY EnterLAst DESC";
 $result_show = mysqli_query($connection, $query_show);
$data = array();
 
    while ($row_show = mysqli_fetch_array($result_show)) {
        $data[] = array(
            
    
            'track_ip' => $row_show['track_ip'],
            'track_city' => $row_show['track_city'] ." / ". $row_show['track_country']." / " . $row_show['track_continent'],
            'EnterLAst' => date("d-m-Y H:m:s", strtotime($row_show['EnterLAst'])) ,
            'track_net' => $row_show['track_net'],
            'TotalTime' => $row_show['TotalTime'],
            
 
        );
    }
 
echo json_encode($data);