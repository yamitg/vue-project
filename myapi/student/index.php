<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: Content-Type");
$data = json_decode(file_get_contents("php://input")); 
$data=json_decode(json_encode($data),true);
$_REQUEST=$data;
// print_r($_REQUEST);die;
date_default_timezone_set("Asia/Calcutta");
// include db handler
require_once 'DB_Functions.php';
// ini_set('display_errors', 0);
// ini_set('display_startup_errors', 0);
// error_reporting(E_ALL);
$db = new DB_Functions();
//$_REQUEST['tag']='select_about';
//$data= $db->insert_shiftstart(); die;
/***************************empty key value check***************************/
$empty_check=false;
$empty_key=array();
$int=1;
foreach($_REQUEST as $key =>  $val){
    if(strlen(trim($val)) == 0){
        $empty_check=true;
        $empty_key['key_'.$int]=$key;
        //array_push($empty_key,$key);
        $int++;
    }
}

if($empty_check){
    $json_key=json_encode($empty_key);
    $response = array("tag" => $_REQUEST['tag'], "error" => "TRUE", "code" => "0", "error_msg" => "Please Provide All Data", "empty_field" => $json_key);
    echo json_encode($response);die;
}
/**************************************************$_REQUEST['tag**='***********************/
// foreach($_REQUEST as $key =>  $val){
//     if(strlen(trim($val))==0){
//         $response = array("tag" => $_REQUEST['tag'], "error" => "TRUE", "code" => "0", "error_msg" => "Please Provide All Data", "empty_field" => "$key");
//         echo json_encode($response);
//         die;
//     }
// }

function dataReturn($data){
     if(is_array($data)){
           $response["error"] = "FALSE";
           $response["code"] = "1";
           $response["response_data"] = $data;
       } else {
             $response["error"] = "TRUE";
             $response["code"] = "0";
             $response["error_msg"] = $data; 
        }
      echo json_encode($response);
}
if (isset($_REQUEST['tag']) && $_REQUEST['tag'] != '') {
    
    $tag =$_REQUEST['tag'];
    
    $response = array("tag" => $tag, "error" => FALSE);
    $studentID=$_REQUEST['studentID'];
    $First_Name=$_REQUEST['First_Name'];
    $Last_Name=$_REQUEST['Last_Name'];
    $Date_of_Birth=$_REQUEST['Date_of_Birth'];
    $Gender=$_REQUEST['Gender'];
    $Email_Address=$_REQUEST['Email_Address'];
    $Contact_Number=$_REQUEST['Contact_Number'];
    $Address=$_REQUEST['Address'];
    $City=$_REQUEST['City'];
    $State=$_REQUEST['State'];
    $Country=$_REQUEST['Country'];
    $Preferred_Language=$_REQUEST['Preferred_Language'];
    $Nationality=$_REQUEST['Nationality'];
    $Emergency_Contact_Name=$_REQUEST['Emergency_Contact_Name'];
    $Emergency_Contact_Number=$_REQUEST['Emergency_Contact_Number'];

    $Student_Id = $_REQUEST['Student_Id'];
    $Current_Educational_Institution = $_REQUEST['Current_Educational_Institution'];
    $Field_of_Study = $_REQUEST['Field_of_Study'];
    $Percentage = $_REQUEST['Percentage'];
    $academic_achievements = $_REQUEST['academic_achievements'];
    $awards = $_REQUEST['awards'];
    $Extracurricular_Activities = $_REQUEST['Extracurricular_Activities'];
    $Relevant_Certifications = $_REQUEST['Relevant_Certifications'];
    $Skills = $_REQUEST['Skills'];
    $Any_Additional_Information = $_REQUEST['Any_Additional_Information'];

    $qualifications_id = $_REQUEST['qualifications_id'];
    $detail_type = $_REQUEST['detail_type'];
    $detail_title = $_REQUEST['detail_title'];
    $year = $_REQUEST['year'];
    $description = $_REQUEST['description'];
    
    
    switch($tag){
        case "register_student":
            $data=$db->register_student($First_Name,$Last_Name,$Date_of_Birth,$Gender,$Email_Address,$Contact_Number,$Address,$City,$State,$Country,$Preferred_Language,$Nationality,$Emergency_Contact_Name,$Emergency_Contact_Number);
           dataReturn($data);
            break;

            case "insert_qualifications":
                $data=$db->insert_qualifications($Student_Id,$Current_Educational_Institution,$Field_of_Study,$Percentage,$academic_achievements,$awards,$Extracurricular_Activities,$Relevant_Certifications,$Skills,$Any_Additional_Information);
               dataReturn($data);
                break;

            case "insert_details":
                $data=$db->insert_details($qualifications_id,$detail_type,$detail_title,$year,$description);
                dataReturn($data);
                break;

            // case "insert_awards":
            //     $data3=$db->insert_qualifications($qualifications_id,$ach_type,$Award_Title,$Awarding_Body,$Year,$academic_achievements);
            //     dataReturn($data3);
            //     break;
        default:
            $response["error"] = TRUE;
            $response["error_msg"] = "Unknown tag value.";
            $response["code"] = "0";
            echo json_encode($response);
     }
}
else {
    $response["error"] = TRUE;
    $response["error_msg"] = "No tag value sent.";
    $response["code"] = "0";
    echo json_encode($response);
}
?>