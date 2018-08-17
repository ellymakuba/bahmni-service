
$(document).ready(function(){
$( "#countyFrm" ).submit(function( event ) {
  event.preventDefault();
  var form = $(this).serializeArray();
 console.log("county form data +++++++++++++"+JSON.stringify(form));
 $.ajax({
            type: "POST",
            url: "saveCounty.form",
            data:{form:JSON.stringify(form)},
            success: function (result) {
              console.log("response from saveCounty "+result);
              document.getElementById("county").value="";
            }
        })
});

$( "#subCountyFrm" ).submit(function( event ) {
  event.preventDefault();
  var form = $(this).serializeArray();
 console.log("sub county form data +++++++++++++"+JSON.stringify(form));
 $.ajax({
            type: "POST",
            url: "saveSubCounty.form",
            data:{form:JSON.stringify(form)},
            success: function (result) {
              console.log("response from save subcounty "+result);
              $("#subcounty").val("");
            }
        })
});


$( "#wardFrm" ).submit(function( event ) {
  event.preventDefault();
  var form = $(this).serializeArray();
 console.log("ward form data +++++++++++++"+JSON.stringify(form));
 $.ajax({
            type: "POST",
            url: "saveWard.form",
            data:{form:JSON.stringify(form)},
            success: function (result) {
              console.log("response from save ward "+result);
              $("#ward").val("");
            }
        })
});

$( "#villageFrm" ).submit(function( event ) {
  event.preventDefault();
  var form = $(this).serializeArray();
 console.log("village form data +++++++++++++"+JSON.stringify(form));
 $.ajax({
            type: "POST",
            url: "saveVillage.form",
            data:{form:JSON.stringify(form)},
            success: function (result) {
              console.log("response from save village "+result);
              $("#village").val("");
            }
        })
});

$( "#relationshipTypeFrm" ).submit(function( event ) {
  event.preventDefault();
  var form = $(this).serializeArray();
 console.log("relationship type form data +++++++++++++"+JSON.stringify(form));
 $.ajax({
            type: "POST",
            url: "saveRelationshipType.form",
            data:{form:JSON.stringify(form)},
            success: function (result) {
              console.log("response from save relationship type "+result);
              $("#a_to_b").val("");
              $("#b_to_a").val("");
            }
        })
});

$( "#patientFrm" ).submit(function( event ) {
  event.preventDefault();
  var form = $(this).serializeArray();
 console.log("patient form data +++++++++++++"+JSON.stringify(form));
 $.ajax({
            type: "POST",
            url: "savePatient.form",
            data:{form:JSON.stringify(form)},
            success: function (result) {
              console.log("response from save patient"+result);
              $('#success').modal('show');
              setTimeout(function(){
                 $('#success').modal('hide');
              },3000);
            }
        })
});

function getAllCounties(){
  $.ajax({
             type: "GET",
             url: "getAllCounties.form",
             success: function (result) {
               var result=JSON.parse(result);
               var counties=result.counties;
               var counties_table=[];
               console.log("response from get all counties "+JSON.stringify(counties));
               var i;
               for(i=0; i<counties.length; i++){
                 var row=[];
                 row.push(counties[i].id);
                 row.push(counties[i].name);
                 counties_table.push(row);
                 $('#person_county').append($('<option value="'+counties[i].name+'">'+counties[i].name+'</option>'));
                 $('#next_of_kin_county').append($('<option value="'+counties[i].name+'">'+counties[i].name+'</option>'));
               }
               $('#counties_table').DataTable( {
                    data: counties_table,
                    columns: [
                        { title: "Id" },
                        { title: "Name" }
                    ]
                } );
             }
         })
}

function getAllSubCounties(){
  $.ajax({
             type: "GET",
             url: "getAllSubCounties.form",
             success: function (result) {
               var result=JSON.parse(result);
               var subcounties=result.subcounties;
               var counties_table=[];
               var i;
               for(i=0; i<subcounties.length; i++){
                 var row=[];
                 row.push(subcounties[i].id);
                 row.push(subcounties[i].name);
                 counties_table.push(row);
                 $('#person_subcounty').append($('<option value="'+subcounties[i].name+'">'+subcounties[i].name+'</option>'));
                 $('#next_of_kin_subcounty').append($('<option value="'+subcounties[i].name+'">'+subcounties[i].name+'</option>'));
               }
               $('#subcounties_table').DataTable( {
                    data: counties_table,
                    columns: [
                        { title: "Id" },
                        { title: "Name" }
                    ]
                } );
             }
         })
}
function getAllWards(){
  $.ajax({
             type: "GET",
             url: "getAllWards.form",
             success: function (result) {
               var result=JSON.parse(result);
               var wards=result.wards;
               var wards_table=[];
               var i;
               for(i=0; i<wards.length; i++){
                 var row=[];
                 row.push(wards[i].id);
                 row.push(wards[i].name);
                 wards_table.push(row);
                 $('#person_ward').append($('<option value="'+wards[i].name+'">'+wards[i].name+'</option>'));
                 $('#next_of_kin_ward').append($('<option value="'+wards[i].name+'">'+wards[i].name+'</option>'));
               }
               $('#wards_table').DataTable({
                    data: wards_table,
                    columns: [
                        { title: "Id" },
                        { title: "Name" }
                    ]
                } );
             }
         })
}
function getAllVillages(){
  $.ajax({
             type: "GET",
             url: "getAllVillages.form",
             success: function (result) {
               var result=JSON.parse(result);
               var villages=result.villages;
               var i;
               var villages_table=[];
               for(i=0; i<villages.length; i++){
                 var row=[];
                 row.push(villages[i].id);
                 row.push(villages[i].name);
                 villages_table.push(row);
                 $('#next_of_kin_village').append($('<option value="'+villages[i].name+'">'+villages[i].name+'</option>'));
                 $('#person_village').append($('<option value="'+villages[i].name+'">'+villages[i].name+'</option>'));
               }
               $('#villages_table').DataTable({
                    data: villages_table,
                    columns: [
                        { title: "Id" },
                        { title: "Name" }
                    ]
                } );
             }
         })
}
function getAllRelationshipTypes(){
  $.ajax({
             type: "GET",
             url: "getAllRelationshipTypes.form",
             success: function (result) {
               var result=JSON.parse(result);
               var types=result.relationship_types;
               var i;
               var types_table=[];
               for(i=0; i<types.length; i++){
                 var row=[];
                 row.push(types[i].id);
                 row.push(types[i].a);
                 row.push(types[i].b);
                 types_table.push(row);
                 var newOption = $('<option value="'+types[i].id+'">'+types[i].a+'-'+types[i].b+'</option>');
                 $('#relationship_type').append(newOption);
               }
               $('#relationship_type_table').DataTable({
                    data: types_table,
                    columns: [
                        { title: "Id" },
                        { title: "First Person" },
                        {title:"Second person"}
                    ]
                } );
             }
         })
}
function getPatients(){
  $.ajax({
             type: "GET",
             url: "getAllPatients.form",
             success: function (result) {
               var result=JSON.parse(result);
               var patients=result.patients;
               console.log("response from get all patients "+JSON.stringify(patients));
               $('#patients_table').DataTable( {
                    data: patients,
                    columns: [
                        { title: "Id" },
                        { title: "First Name" },
                        { title: "Last Name" },
                        { title: "Gender" },
                        { title: "Identifier" },
                        { title: "Voided" }
                    ]
                } );
             }
         })
  }
  $("#patients_table").on("click","tr",function(){
      var value=$(this).children('td.one').text();
      console.log("clicked tr first value ++++++++++++++++++++++++++++++"+value);
  });
getPatients();
getAllCounties();
getAllSubCounties();
getAllWards();
getAllVillages();
getAllRelationshipTypes();
$("#search_next_of_kin").on("click",function(){
$(this).autocomplete({
    source:function (request, response) {
        $.getJSON("getAllPersonsByName.form?firstName=" +request.term, function (result) {
            response($.each(result, function (index, item) {
                return {
                    label:item,
                    value:item
                }
            }));

        });

    },
    minLength:3,
    select:function (event, ui) {
        var name =ui.item.value;
        $.ajax({
          type:"GET",
          url:"getPersonByName.form?firstName="+name,
          success:function(response){
            var response=JSON.parse(response);
            var person=response.person;
            console.log("fetched person paylload+++++++++++++++"+JSON.stringify(response));
            $("#fname").val(person.firstname);
            $("#lname").val(person.lastname);
            $("#person_id").val(person.id);
            $("#birthdate").val(person.birthdate);
            $("#cellphone").val(person.contacts[0].cellphone);
            $("#email").val(person.contacts[0].email);
            $("#other_number").val(person.contacts[0].alternative);
          }
        })
    }
});
});
});
