<template>
<div class="container m-5 pb-5">
    <div class="row">
        <form class="form-group" id="contact_form" v-on:submit="submitForm">
            <div v-if="currentPage === 1">
                <h1 class="text-sm-center text-primary"><u>Assigment Form</u></h1>
                <br />
                <h2 class="text-danger">Page 1: Student General Information :</h2>
                <br />
                <div class="container mt-4">
                    <div class="row">
                        <div class="col-sm-3">
                            <label for="fname">First Name :</label>
                            <input type="text" class="form-control" id="fname" name="fname" placeholder="First Name"  v-model="student.First_Name" required />
                        </div>
                        <div class="col-sm-3 offset-sm-2">
                            <label for="lname">Last Name :</label>
                            <input type="text" class="form-control" id="lname" name="lname" placeholder="Last Name" v-model="student.Last_Name" required />
                        </div>
                    </div>
                </div>
                <div class="container mt-4">
                    <!-- date -- start, gender-- start  -->
                    <div class="row">
                        <div class="col-sm-3">
                            <label for="date">Date of Birth:</label>
                            <input type="date" id="date" class="form-control" v-model="student.date" />
                        </div>
                        <div class="col-sm-4 offset-sm-2">
                            <div class="container">
                                <div class="row">
                                    <div class="gender col-sm-3">
                                        <label>Gender:</label>
                                    </div>
                                    <div class="radio col-sm-6">
                                        <div class="form-check">
                                            <label class="form-check-label" style="font-weight: 400" for="male">:Male</label>
                                            <input type="radio" class="form-check-input" id="male" name="gender" value="male" v-model="student.Gender" />
                                        </div>
                                        <div class="form-check">
                                            <label class="form-check-label" style="font-weight: 400" for="female">:Female</label>
                                            <input type="radio" class="form-check-input" id="female" name="gender" value="female" v-model="student.Gender" />
                                        </div>
                                        <div class="form-check">
                                            <label class="form-check-label" style="font-weight: 400" for="transgender">:Transgender</label>
                                            <input type="radio" class="form-check-input" id="transgender" name="gender" value="transgender" v-mode="student.Gender" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- date--end , gender---end -->
                <div class="container mt-4">
                    <div class="row">
                        <div class="col-sm-3">
                            <label for="email">Email :</label>
                            <input type="text" class="form-control" id="email" name="email" placeholder="****@gmail.com" v-model="student.Email_Address" required />
                        </div>
                        <div class="col-sm-3 offset-sm-2">
                            <label for="lname">Contact Number :</label>
                            <input type="text" class="form-control" id="lname" name="lname" placeholder="Contact Number" v-model="student.Contact_Number" required />
                        </div>
                    </div>
                </div>
                <!-- EMail_--------&&--------contact number  -->
                <!-- address -->
                <div class="container mt-6">
                    <div class="row">
                        <div class="col-sm-7 p-3">
                            <label for="Address">Address :</label>
                            <textarea class="form-control" id="Address" name="Address" placeholder="H.no : / Gali No : / Near By:" v-model="student.Address" cols="50" rows="3"></textarea>
                        </div>
                    </div>
                </div>
                <!-- Address -->
                <!-- city ---state-----country -->
                <div class="container mt-4">
                    <div class="row">
                        <div class="col-sm-3">
                            <label for="City">City :</label>
                            <input type="text" class="form-control" id="City" name="City" placeholder="Select Your City" v-model="student.City" />
                        </div>
                        <div class="col-sm-3 offset-sm-1">
                            <label for="State" class="form-label">State</label>
                            <select id="State" class="custom-select d-block w-100 form-select" name="State" v-model="student.State">
                                <!-- <select id="State" class="custom-select d-block w-100 form-select" name="State" v-model="student.State"> -->
                                <option value="" selected>Select Your State</option>
                                <option  value="Haryana">Haryana</option>
                                <option value="Utar Pardesh">Utar Pardesh</option>
                                <option value="M. Pardesh">M. Pardesh</option>
                                <option value="Bihar">Bihar</option>
                                <option value="Rajasthan">Rajasthan</option>
                            </select>
                        </div>
                        <div class="col-sm-3 offset-sm-1">
                            <label for="Country" class="form-label">Country</label>
                            <select id="Country" class="form-select" name="Country" v-model="student.Country">
                                <option value="" selected>Select Your Country</option>
                                <option  value="India">India</option>
                                <option value="Pakistan">Pakistan</option>
                                <option value="U.S.A">U.S.A</option>
                                <option value="england">england</option>
                                
                            </select>
                        </div>
                    </div>
                </div>
                <!-- city === State ===== Country -->
                <!-- Nationality ====== Language -->
                <div class="container mt-4">
                    <div class="row">
                        <div class="col-sm-5">
                            <label for="Preferred_Language" class="form-label">Preferred Language:</label>
                            <select id="Preferred_Language" class="form-select" name="Preferred_Language" v-model="student.Preferred_Language">
                                <option value="" selected>Select Your Language</option>
                                <option value="English">English</option>
                                <option value="Hindi">Hindi</option>
                                <option value="German">German</option>
                            </select>
                        </div>
                        <div class="col-sm-5 offset-sm-2">
                            <label for="Nationality" class="form-label">Nationality:</label>
                            <select id="Nationality" class="form-select" name="Nationality" v-model="student.Nationality">
                                <option value="" selected>Select Your Nationality</option>
                                <option value="INDIAN">INDIAN</option>
                                <option value="ALBANIAN">ALBANIAN</option>
                                <option value="ALGERIAN">ALGERIAN</option>
                                <option value="AMERICAN">AMERICAN</option>
                                <option value="ANDORRAN">ANDORRAN</option>
                            </select>
                        </div>
                    </div>
                </div>
                <!-- Nationality ====== Language ------END-->
                <div class="container mt-4">
                    <div class="row">
                        <div class="col-sm-5">
                            <label for="Emergency_Contact_Name">Emergency_Contact_Name :</label>
                            <input type="text" class="form-control" id="Emergency_Contact_Name" name="Emergency_Contact_Name" placeholder="Contact Name" v-model="student.Emergency_Contact_Name" />
                        </div>
                        <div class="col-sm-5 offset-sm-2">
                            <label for="lname">Emergency_Contact_Number :</label>
                            <input type="text" class="form-control" id="Emergency_Contact_Number" name="Emergency_Contact_Number" placeholder="Contact Number" v-model="student.Emergency_Contact_Number" />
                        </div>
                    </div>
                </div>
                <div class="container mt-5 col-sm-4">
                    <div class="row">
                        <button v-on:click="nextPage" class="btn btn-warning">
                            Next Page
                        </button>
                    </div>
                </div>
            </div>
            <div v-if="currentPage === 2">
                <h2 class="text-danger">Page 2: Academic and Awards Qualifications :</h2>
                <div class="container mt-4">
                    <div class="row">
                        <div class="col-sm-3 ">
                            <label for="Current_Educational_Institution">Current_Educational_Institution:</label>
                            <input type="text" id="Current_Educational_Institution" class="form-control" v-model="quali.Current_Educational_Institution" />
                        </div>
                        <div class="col-sm-3 offset-sm-1">
                            <label for="Field" class="form-label">Field of Study:</label>
                            <input list="Field_of_Study" class="form-control" name="Field_of_Study" id="Field" placeholder="Type to search..." v-model="quali.Field_of_Study" />
                            <datalist id="Field_of_Study">
                                <option value="computer science" />
                                <option value="physic" />
                                <option value="chemistry" />
                                <option value="english" />
                                <option value="hindi" />
                            </datalist>
                        </div>
                        <div class="col-sm-3 offset-sm-1">
                            <label for="Expected_Graduation_Date">Expected_Graduation_Date:</label>
                            <input type="date" id="Expected_Graduation_Date" class="form-control" v-model="quali.Expected_Graduation_Date" />
                        </div>

                    </div>
                </div>
                <!-- achivement input fields -->
                <div class="container mt-5">
                    <div class="row">
                        <div class="col-sm-3 ">
                            <label for="percent">Percentage %:</label>
                            <input type="text" class="form-control " id="percent" name="percent" placeholder=" CGPA/Percent %" v-model="quali.Percentage" required />
                        </div>
                        <div class="col-sm-3 offset-sm-1">
                            <label for="Achievement_Title">Achievement_Title :</label>
                            <input type="text" class="form-control" id="Achievement_Title" name="Achievement_Title" placeholder="Your Achievement " v-model="achiv.detail_title" required />
                        </div>
                        <div class="col-sm-3 offset-sm-1">
                            <label for="Passout_Year">Passout_Year :</label>
                            <input type="date" class="form-control" id="Passout_Year" name="Passout_Year" v-model="achiv.year" required />
                        </div>
                    </div>
                </div>
                <!-- achivement input fields END-->
                <!-- address ----start -->
                <div class="container mt-6">
                    <div class="row">
                        <div class="col-sm-7 p-3">
                            <label for="Description">Description :</label>
                            <textarea class="form-control" id="Description" name="Description" placeholder="Description......" v-model="achiv.description" cols="50" rows="3"></textarea>
                        </div>
                    </div>
                </div>
                <!-- address ----END -->
                <!-- award title     start -->
                <div class="container mt-5">
                    <div class="row">
                        <div class="col-sm-3 ">
                            <label for="Award_Title">Award_Title:</label>
                            <input type="text" class="form-control " id="Award_Title" name="Award_Title" placeholder="Titles" v-model="awards.detail_title" />
                        </div>
                        <div class="col-sm-3 offset-sm-1">
                            <label for="Awarding_Body">Awarding_Body :</label>
                            <input type="text" class="form-control" id="Awarding_Body" name="Awarding_Body" placeholder="Awarding Body " v-model="awards.description" />
                        </div>
                        <div class="col-sm-3 offset-sm-1">
                            <label for="Year">Year :</label>
                            <input type="date" class="form-control" id="Year" name="Passout_Year" v-model="awards.year" />
                        </div>
                    </div>
                </div>
                <!-- award title     END -->
                <!-- activites----&& skills -->
                <div class="container mt-4">
                    <div class="row">
                        <div class="col-sm-5">
                            <label for="Emergency_Contact_Name">Skills :</label>
                            <input type="text" class="form-control" id="Skills" name="Skills" placeholder="Your Skills....." v-model="quali.Skills" />
                        </div>
                        <div class="col-sm-5 offset-sm-2">
                            <label for="Extracurricular_Activities">Extracurricular_Activities :</label>
                            <input type="text" class="form-control" id="Extracurricular_Activities" name="Extracurricular_Activities" placeholder="Write Your Activities " v-model="quali.Extracurricular_Activities" />
                        </div>
                    </div>
                </div>
                <!-- activites----&& skills END -->
                <!-- Additional Information -->
                <div class="container mt-6">
                    <div class="row">
                        <div class="col-sm-7 p-3">
                            <label for="Any_Additional_Information">Any_Additional_Information :</label>
                            <textarea class="form-control" id="Any_Additional_Information" name="Any_Additional_Information" placeholder="If You want to give any additional information ,then you can add .... " v-model="quali.Any_Additional_Information" cols="50" rows="3"></textarea>
                        </div>
                    </div>
                </div>


                <div class="container mt-4">
                    <div class="row">
                        <div class="container">
                            <button v-on:click="prevPage" class="btn btn-secondary mt-5 col-sm-3 offset-sm-2">Previous</button>
                            <input type="button" v-on:click="submitForm" value="Submit" class="btn btn-primary mt-5 col-sm-3 offset-sm-2"/>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
</template>

<script>
import axios from "axios";
export default {
    name: "StudentForm",
    data() {
        return {
            currentPage: 1,
            student: {
                tag: "register_student",
                First_Name: "Amit ",
                Last_Name: "Kumar",
                Date_of_Birth: "02/09/1998",
                Gender: "male",
                Email_Address: "amyrao42021@gmail.com",
                Contact_Number: "9466076046",
                Address: "jant",
                City: "mahendragarh",
                State: "Haryana",
                Country: "India",
                Preferred_Language: "English",
                Nationality: "ALBANIAN",
                Emergency_Contact_Name: "ajay",
                Emergency_Contact_Number: "9518049495"

            },
            quali: {
                tag: "insert_qualifications",
                Student_Id: "",
                Current_Educational_Institution: "central university of haryana",
                Field_of_Study: "computer",
                Expected_Graduation_Date: "04/04/2022",
                Percentage: "76%",
                Extracurricular_Activities: "vollyball player",
                Skills: "html",
                Any_Additional_Information: "National cadet core (NCC)"
                
          },
          achiv: {
            tag: "insert_details",
              qualifications_id: "",
              detail_type:"achieve",
              detail_title: "One book public",
              year: "09/09/2023",
              description: "computer fundamental book",
            
          },
          awards: {
            tag: "insert_details",
              qualifications_id: "",
              detail_type:"award",
              detail_title: "Golden Award",
              year: "09/09/2023",
              description: " Ist position",
            
            },
        };
    },
    methods: {
        nextPage() {
            if (this.currentPage < 2) {
                this.currentPage++;
            }
        },
        prevPage() {
            if (this.currentPage > 1) {
                this.currentPage--;
            }
        },
      async submitForm(e) {
        e.preventDefault()
        console.log(this.quali)
        console.log(this.achiv)
        console.log(this.awards)

        let myQuali = this.quali;
        let myAchiv = this.achiv;
        let myWards = this.awards;
            // Submit form data (you can implement this)
            console.log("Form submitted:", this.student);

            // Make a request for a user with a given ID
           await axios.post("http://localhost/myapi/student/", JSON.stringify(this.student))
             .then(function (response) {
                  console.log("response",response)
                  if (response.data.code == "1") {
                      console.log("id",response.data.response_data.insert_id)
                      myQuali['Student_Id'] = response.data.response_data.insert_id;
                      console.log(myQuali)
                        //add qualification
                        axios.post("http://localhost/myapi/student/", JSON.stringify(myQuali))
                            .then(function (response1) {
                                if (response1.data.code == "1") {
                                    myAchiv['qualifications_id']=response1.data.response_data.insert_id;
                                    myWards['qualifications_id']=response1.data.response_data.insert_id;
                                    //add achievement and award
                                    axios.post("http://localhost/myapi/student/", JSON.stringify(myAchiv))
                                     .then(function (response2) {
                                if (response2.data.code == "1") {
                                    console.log("response2", response2);
                                }
                                // console.log(response);
                            })
                            .catch(function (error3) {
                                console.log(error3);
                            });
                            axios.post("http://localhost/myapi/student/", JSON.stringify(myWards))
                                     .then(function (response3) {
                                if (response3.data.code == "1") {
                                    console.log("response3", response3);
                                }
                                // console.log(response);
                            })
                            .catch(function (error4) {
                                console.log(error4);
                            });




                                  console.log(response1);
                                }
                                // console.log(response);
                            })
                            .catch(function (error1) {
                                console.log(error1);
                            });
                    }
                    // console.log(response);
                })
                .catch(function (error) {
                    console.log(error);
                });
        },
    },
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->

<style scoped>
* {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
}

label {
    margin-bottom: 8px;
    font-weight: bolder;
}

#gender {
    padding: 4px;
}
</style>
