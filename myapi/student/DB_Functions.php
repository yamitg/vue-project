<?php
class DB_Functions {
     private $db,$con;
	    function __construct() {
        require_once '../api_connect/DB_Connect.php';
        // connecting to database
       $this->db = new DB_Connect();
        $this->con = $this->db->connect();
    }

    // destructor
    function __destruct() {}
/*------------------------------------------- Api Common Methods Starting--------------------------------------------------------------------*/ 
    //escape string function
	public function e($in){
		return mysqli_real_escape_string($this->con,$in);
	}
	
	//Method for retrieve Data input SQL Query
	public function select_query($query){
		    $result = $this->con->query($query);
            $no_of_rows = mysqli_num_rows($result);           
			if ($no_of_rows>0) {
            while($row = $result->fetch_assoc()) {
              $lr[]=$row;}
		    return $lr;       
            }else if(!mysqli_error($this->con)){
                return 'No Data Available!';
    		} else {$error =mysqli_error($this->con);
            return $error;}
	}
	
	//Method for insert Data input SQL Query
	public function insert_query($query){
	    $this->con->query($query);
	    if(mysqli_affected_rows($this->con)>0){
	        $id = $this->con->insert_id;
	        return $id=array('insert_id'=>$id);
	    } else {$error =mysqli_error($this->con);
            return $error;}
	}
	
	//Method for update Data input SQL Query
    public function update_query($query){
		    $update_result = $this->con->query($query); 
            if(mysqli_affected_rows($this->con)>0){	
               return $result=array();
              } else {$error =mysqli_error($this->con);
            return $error;}
	}
	
/*------------------------------------ Api Common Methods Ending (Start Work Below Line)---------------------------------------------------*/
public function register_student($First_Name,$Last_Name,$Date_of_Birth,$Gender,$Email_Address,$Contact_Number,$Address,$City,$State,$Country,$Preferred_Language,$Nationality,$Emergency_Contact_Name,$Emergency_Contact_Number)
{ 
	 $qr="INSERT INTO `student`(`First_Name`,`Last_Name`,`Date_of_Birth`,`Gender`,`Email_Address`,`Contact_Number`,`Address`,`City`,`State`,`Country`,`Preferred_Language`,`Nationality`,`Emergency_Contact_Name`,`Emergency_Contact_Number`) VALUES('$First_Name','$Last_Name','$Date_of_Birth','$Gender','$Email_Address','$Contact_Number','$Address','$City','$State','$Country','$Preferred_Language','$Nationality','$Emergency_Contact_Name','$Emergency_Contact_Number')";
	      $result1 = $this->insert_query($qr);
			if(is_array($result1)){
				return $result1;
			}
			else{
	            $error =mysqli_error($this->con);
	            return 'error_true_'.$error;
	        }
	    
	}
//  insert into qualyfication
	public function insert_qualifications($Student_Id,$Current_Educational_Institution,$Field_of_Study,$Percentage,$academic_achievements,$awards,$Extracurricular_Activities,$Relevant_Certifications,$Skills,$Any_Additional_Information)
{ 
	 $qr="INSERT INTO `qualifications`(`student_id`,`current_educational_institution`,`field_of_study`,`percentage`,`academic_achievements`,`awards`,`extracurricular_activities`,`relevant_certifications`, `skills`, `any_additional_information`)VALUES('$Student_Id','$Current_Educational_Institution','$Field_of_Study','$Percentage','$academic_achievements','$awards','$Extracurricular_Activities','$Relevant_Certifications','$Skills','$Any_Additional_Information')";
	      $result1 = $this->insert_query($qr);
			if(is_array($result1)){
				return $result1;
			}
			else{
	            $error =mysqli_error($this->con);
	            return 'error_true_'.$error;
	        }
	    
	}

	public function insert_details($qualifications_id,$detail_type,$detail_title,$year,$description)
{ 
	 $qr="INSERT INTO `studentmoredetail`(`qualifications_id`,`detail_type`,`detail_title`,`year`,`description`) VALUES('$qualifications_id','$detail_type','$detail_title','$year','$description')";
	      $result1 = $this->insert_query($qr);
			if(is_array($result1)){
				return $result1;
			}
			else{
	            $error =mysqli_error($this->con);
	            return 'error_true_'.$error;
	        }
	    
	}
	
}


?>