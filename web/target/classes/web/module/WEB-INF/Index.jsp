<!DOCTYPE html>
<html lang="en">
   <head>
      <title>Patient Records Application</title>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
           <link rel="stylesheet" href="/resources/demos/style.css">
      <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
      <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
      <script type='text/javascript' src = "resources/js/custom.js"></script>
   </head>
   <body>
   <div class="container">
   <ul id = "myTab" class="nav nav-tabs">
      <li class = "active">
         <a href = "#patient" data-toggle = "tab">Patient</a>
      </li>
      <li>
         <a href = "#county" data-toggle = "tab">County</a>
      </li>
      <li>
         <a href = "#subcounty" data-toggle = "tab">Sub County</a>
      </li>
      <li>
         <a href = "#ward" data-toggle = "tab">ward</a>
      </li>
      <li>
         <a href = "#village" data-toggle = "tab">Village</a>
      </li>
      <li>
         <a href = "#relationshipType" data-toggle = "tab">Relationship Types</a>
      </li>

   </ul>
   <div id = "myTabContent" class = "tab-content">
       <div class = "tab-pane fade in active" id = "patient">
         <h2>Patient Registration</h2>
      <form class="form-inline" >
       <div class="form-group">
         <label for="search_next_of_kin">Search Person</label>
         <input type="text" class="form-control" id="search_next_of_kin" name="search_next_of_kin" placeholder="Type the name to search">
       </div>
     </form>
       <form id="patientFrm" name="patientFrm">
        <div class="form-group">
          <label for="fname">First Name:</label>
          <input type="hidden" id="person_id" name="person_id">
          <input type="text" class="form-control" id="fname" name="fname" required>
        </div>
        <div class="form-group">
           <label for="lname">Last Name:</label>
           <input type="text" class="form-control" id="lname" name="lname" required>
           </div>
        <div class="form-group">
          <label for="gender">Gender:</label>
          <select class="form-control" id="gender" name="gender">
            <option>Male</option>
            <option>Female</option>
          </select>
        </div>
        <div class="form-group">
         <label for="person_county">County:</label>
         <select class="form-control" id="person_county" name="person_county"></select>
        </div>
        <div class="form-group">
         <label for="person_subcounty">Sub-County:</label>
          <select class="form-control" id="person_subcounty" name="person_subcounty"></select>
        </div>
        <div class="form-group">
         <label for="person_ward">Ward:</label>
          <select class="form-control" id="person_ward" name="person_ward"></select>
        </div>
        <div class="form-group">
         <label for="person_village">Village:</label>
          <select class="form-control" id="person_village" name="person_village"></select>
        </div>
        <div class="form-group">
         <label for="cellphone">Cell Phone:</label>
          <input type="text" class="form-control" id="cellphone" name="cellphone" required>
        </div>
        <div class="form-group">
         <label for="email">Email:</label>
          <input type="text" class="form-control" id="email" name="email" required>
        </div>
        <div class="form-group">
         <label for="other_number">Alternative Cell Phone:</label>
          <input type="text" class="form-control" id="other_number" name="other_number" required>
        </div>
        <div class="form-group">
         <label for="birthdate">Birth Date:</label>
          <input type="date" class="form-control" id="birthdate" name="birthdate" required>
        </div>
        <div class="form-group">
         <label for="enrollment_number">Enrollment Number:</label>
          <input type="text" class="form-control" id="enrollment_number" name="enrollment_number" required>
        </div>
        <div class="form-group">
         <label for="void">Void Patient:</label>
          <input type="checkbox" id="void" name="void">
        </div>

       <h2>Next of Kin Details</h2>
        <div class="form-group">
          <label for="next_of_kin_fname">First Name:</label>
          <input type="text" class="form-control" id="next_of_kin_fname" name="next_of_kin_fname" required>
        </div>
        <div class="form-group">
           <label for="next_of_kin_lname">Last Name:</label>
           <input type="text" class="form-control" id="next_of_kin_lname" name="next_of_kin_lname" required>
           </div>
        <div class="form-group">
          <label for="next_of_kin_gender">Gender:</label>
          <select class="form-control" id="next_of_kin_gender" name="next_of_kin_gender">
            <option>Male</option>
            <option>Female</option>
          </select>
        </div>
        <div class="form-group">
         <label for="next_of_kin_county">County:</label>
         <select class="form-control" id="next_of_kin_county" name="next_of_kin_county"></select>
        </div>
        <div class="form-group">
         <label for="next_of_kin_subcounty">Sub-County:</label>
          <select class="form-control" id="next_of_kin_subcounty" name="next_of_kin_subcounty"></select>
        </div>
        <div class="form-group">
         <label for="next_of_kin_ward">Ward:</label>
          <select class="form-control" id="next_of_kin_ward" name="next_of_kin_ward"></select>
        </div>
        <div class="form-group">
         <label for="next_of_kin_village">Village:</label>
          <select class="form-control" id="next_of_kin_village" name="next_of_kin_village"></select>
        </div>
        <div class="form-group">
         <label for="next_of_kin_cellphone">Cell Phone:</label>
          <input type="text" class="form-control" id="next_of_kin_cellphone" name="next_of_kin_cellphone" required>
        </div>
        <div class="form-group">
         <label for="next_of_kin_email">Email:</label>
          <input type="text" class="form-control" id="next_of_kin_email" name="next_of_kin_email" required>
        </div>
        <div class="form-group">
         <label for="next_of_kin_other_number">Alternative Cell Phone:</label>
          <input type="text" class="form-control" id="next_of_kin_other_number" name="next_of_kin_other_number" required>
        </div>
        <div class="form-group">
         <label for="relationship_type">Relationship Type:</label>
          <select class="form-control" id="relationship_type" name="relationship_type"></select>
        </div>
       <button type="submit" class="btn btn-default" id="patientBtn">Save</button>
      </form>
      <h2>Patient List</h2>
      <table id="patients_table" class="display" width="100%"></table>
      </div>

   <div class = "tab-pane fade" id = "county">
   <h2>County Details</h2>
    <form id="countyFrm" name="countyFrm">
     <div class="form-group">
       <label for="county">County:</label>
       <input type="text" class="form-control" id="county" name="county" required>
     </div>
       <button type="submit" class="btn btn-default" id="countyBtn">Save</button>
   </form>
   <h2>County List</h2>
   <table id="counties_table" class="display" width="100%"></table>
   </div>

   <div class = "tab-pane fade" id = "subcounty">
   <h2>Sub County Details</h2>
    <form id="subCountyFrm" name="subCountyFrm">
     <div class="form-group">
       <label for="subcounty">Sub County:</label>
       <input type="text" class="form-control" id="subcounty" name="subcounty" required>
     </div>
       <button type="submit" class="btn btn-default" id="subCountyBtn">Save</button>
   </form>
   <h2>Sub-County List</h2>
   <table id="subcounties_table" class="display" width="100%"></table>
   </div>

   <div class = "tab-pane fade" id = "relationshipType">
   <h2>Relationship Types</h2>
       <form id="relationshipTypeFrm" name="relationshipTypeFrm">
     <div class="form-group">
       <label for="a_to_b">Relationship A:</label>
       <input type="text" class="form-control" id="a_to_b" name="a_to_b" required>
     </div>
     <div class="form-group">
       <label for="b_to_a">Relationship B:</label>
       <input type="text" class="form-control" id="b_to_a" name="b_to_a" required>
     </div>
     <button type="submit" class="btn btn-default" id="relationshipType">Save</button>
    </form>
    <h2>Relationship Types</h2>
    <table id="relationship_type_table" class="display" width="100%"></table>
   </div>

  <div class = "tab-pane fade" id = "ward">
   <h2>Ward Details</h2>
   <form id="wardFrm" name="wardFrm">
    <div class="form-group">
      <label for="ward">Ward:</label>
      <input type="text" class="form-control" id="ward" name="ward" required>
    </div>
      <button type="submit" class="btn btn-default" id="wardBtn">Save</button>
  </form>
  <h2>Ward List</h2>
  <table id="wards_table" class="display" width="100%"></table>
   </div>


   <div class = "tab-pane fade" id = "village">
   <h2>Village Details</h2>
   <form id="villageFrm" name="villageFrm">
    <div class="form-group">
      <label for="village">Village:</label>
      <input type="text" class="form-control" id="village" name="village" required>
    </div>
      <button type="submit" class="btn btn-default" id="villageBtn">Save</button>
  </form>
  <h2>Village List</h2>
  <table id="villages_table" class="display" width="100%"></table>
   </div>

      </div>

      <div id="success" class="modal fade" role="dialog" style="margin:0 auto;padding:10px;border: 1px solid gray;text-align: center;color:green;">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <h4 class="modal-title">Patient Saved</h4>
          </div>
          <div class="modal-body">
            <p>Patient saved successfully.</p>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
          </div>
        </div>
      </div>
    </div>
      </div>
   </body>
</html>
