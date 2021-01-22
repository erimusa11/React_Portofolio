<?php 
 //header("Access-Control-Allow-Origin: *");
 
//../../../public/projectimg
include "dbconnect.php";
 
 
if (isset($_POST['loginuser'])) {

    global $connection;
    $username = $_POST['username'];
    $password = $_POST['password'];

    $username = mysqli_real_escape_string($connection, $username);
    $password = mysqli_real_escape_string($connection, $password);

    //query to get users from studio
    $query = "SELECT * from person WHERE person_username = '$username' AND person_password = '$password'";
    $result = mysqli_query($connection, $query);
    $count = mysqli_num_rows($result);
    if ($count == 0) {
  echo "dont exist";
    } else { 

        $row = mysqli_fetch_assoc($result);
       
        if ($username === $row['person_username'] && $password === $row['person_password']) {
         
            $data[] = array(
            
                'person_id' =>    $row['person_id'] , 
                'person_name' => $row['person_name'],
                'person_subname' => $row['person_subname'],
    
            );
           
        }
        
         echo json_encode($data);
}

}


if (isset($_POST['user_id'])) {

    $project_name = mysqli_real_escape_string($connection, $_POST['project_name']);
    $project_tools = mysqli_real_escape_string($connection, $_POST['project_tools']);
    $project_desc = mysqli_real_escape_string($connection, $_POST['project_desc']);
    $project_link = mysqli_real_escape_string($connection, $_POST['project_link']);
    $user_id = mysqli_real_escape_string($connection, $_POST['user_id']);
    $project_category = mysqli_real_escape_string($connection, $_POST['project_category']);

    $photo = mysqli_real_escape_string($connection, $_FILES['img_one']['name']);
    $photoLocationFolder = 'projectimg/';
    $photoPath = $photoLocationFolder . $photo;
    $extArrPhoto = array("jpg", "jpeg", "png");
    $extPhoto = pathinfo($photoPath, PATHINFO_EXTENSION);
    $extPhoto = strtolower($extPhoto);
    $photoTimestampTitle = time() . '.' . $extPhoto;
    $photoPathNew = $photoLocationFolder . $photoTimestampTitle;


    $photo2 = mysqli_real_escape_string($connection, $_FILES['img_two']['name']);
    $photoLocationFolder2 = 'projectimg/';
    $photoPath2 = $photoLocationFolder2 . $photo2;
    $extPhoto2 = pathinfo($photoPath2, PATHINFO_EXTENSION);
    $extPhoto2 = strtolower($extPhoto);
    $photoTimestampTitle2 = time() . '135.' . $extPhoto2;
    $photoPathNew2 = $photoLocationFolder2 . $photoTimestampTitle2;

    if (in_array($extPhoto, $extArrPhoto) && in_array($extPhoto2, $extArrPhoto)) {
        if (move_uploaded_file($_FILES['img_one']['tmp_name'], $photoPathNew) && move_uploaded_file($_FILES['img_two']['tmp_name'], $photoPathNew2) ) {
            $insert_upload = "INSERT INTO portofolio(project_name,project_tools,img_one,project_desc,project_category,project_link,user_id,img_two) VALUES ('$project_name','$project_tools','$photoTimestampTitle','$project_desc','$project_category','$project_link','$user_id','$photoTimestampTitle2')";

            $result_insert= mysqli_query($connection, $insert_upload);
            
            if($result_insert){
                echo "success";
            }
        }
    } 
}


if(isset($_POST['personId'])){
    global $connection;
    $personId = $_POST['personId'];
   
    //query to get users from studio
    $query = "SELECT * from person WHERE person_id='$personId'";
    $result = mysqli_query($connection, $query);
    $row = mysqli_fetch_assoc($result);
       
      $data[] = array(
            
                'person_id' =>    $row['person_id'] , 
                'person_name' => $row['person_name'],
                'person_subname' => $row['person_subname'],
                'person_password' => $row['person_password'],
                'person_username' => $row['person_username'],
    
            );

         echo json_encode($data);
 
}

if(isset($_POST['track_ip'])){
    global $connection;
    $track_ip = mysqli_real_escape_string($connection, $_POST['track_ip']);
    $track_city = mysqli_real_escape_string($connection, $_POST['track_city']);
    $track_country = mysqli_real_escape_string($connection, $_POST['track_country']);
    $track_continent = mysqli_real_escape_string($connection, $_POST['track_continent']);
    $track_time =  date("Y-m-d H:m:s");
    $track_net = mysqli_real_escape_string($connection, $_POST['track_net']);
    $track_position = mysqli_real_escape_string($connection, $_POST['track_position']);
 
   
    //query to get users from studio
    $query = "INSERT INTO trackpeople(track_ip,track_city,track_country,track_continent,track_time,track_net,track_position) VALUES ('$track_ip','$track_city','$track_country','$track_continent','$track_time','$track_net','$track_position')";
    $result = mysqli_query($connection, $query);
  
}

?>