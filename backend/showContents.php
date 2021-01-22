<?php 
 //header("Access-Control-Allow-Origin: *");

 include "dbconnect.php";
 
 $connection = mysqli_connect(DB_HOSTNAME, DB_USERNAME, DB_PASSWORD, DB_DATABASE);
 $id_post=$_POST['id_post'];
 $query_show = "SELECT * FROM portofolio WHERE id_post='$id_post'";
 $result_show = mysqli_query($connection, $query_show);
$data = array();
 
    while ($row_show = mysqli_fetch_array($result_show)) {
        $data[] = array(
            
            'id_post' =>    $row_show['id_post'] , 
            'project_name' => $row_show['project_name'],
            'project_tools' => $row_show['project_tools'],
            'img_one' => $row_show['img_one'],
            'img_two' => $row_show['img_two'],
            'project_desc' => $row_show['project_desc'],
            'project_category' => $row_show['project_category'],
            'project_link' => $row_show['project_link'],

        );
    }
 
echo json_encode($data);