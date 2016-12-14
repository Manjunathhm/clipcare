 var itemCount = 0;
  
 $(document).ready(function(){
  
    var objs=[];
    var temp_objs=[];
     
    $( "#btn_add_serology" ).click(function() {   
         
        var html = "";
         
        var obj={
            "ROW_ID" : itemCount,
            "INV_CODE" :  $("#dept3_code").val(),
            "TEST_NAME" : $("#namme_test_serology").val(),
            "AMOUNT" : $("#dept3_code_amount").val(),
            "TYPE" : $("#select_serology").val()
        }   
     
        // add object
        objs.push(obj);
                     
        itemCount++;
        // dynamically create rows in the table
        html = "<tr id='tr"+ itemCount + "'><td>"+ obj['INV_CODE'] + "</td> <td>" +  obj['TEST_NAME'] + " </td>  <td>" +  obj['AMOUNT'] + " </td> <td>"+ obj['TYPE'] + "</td><td><input type='button'  id='" + itemCount + "' value='remove'></td> </tr>";            
         
        //add to the table
        $("#table_serology").append(html)
         
        // The remove button click
        $("#"+itemCount).click(function() {
            var buttonId = $(this).attr("id");
            //write the logic for removing from the array
            $("#tr"+ buttonId).remove();            
        });
         
    });
     
         $( "#btn_add_haemo" ).click(function() {   
         
        var html = "";
         
        var obj={
            "ROW_ID" : itemCount,
            "INV_CODE" :  $("#dept1_code").val(),
            "TEST_NAME" : $("#namme_test_haemotalogy").val(),
            "AMOUNT" : $("#dept1_code_amount").val(),
            "TYPE" : $("#select_haemo").val()
        }   
     
        // add object
        objs.push(obj);
                     
        itemCount++;
        // dynamically create rows in the table
        html = "<tr id='tr"+ itemCount + "'><td>"+ obj['INV_CODE'] + "</td> <td>" +  obj['TEST_NAME'] + " </td>  <td>" +  obj['AMOUNT'] + " </td> <td>"+ obj['TYPE'] + "</td><td><input type='button'  id='" + itemCount + "' value='remove'></td> </tr>";            
         
        //add to the table
        $("#table_haemo").append(html)
         
        // The remove button click
        $("#"+itemCount).click(function() {
            var buttonId = $(this).attr("id");
            //write the logic for removing from the array
            $("#tr"+ buttonId).remove();            
        });
         
    });
     
     
     $( "#btn_add_biochem" ).click(function() {   
         
        var html = "";
         
        var obj={
            "ROW_ID" : itemCount,
            "INV_CODE" :  $("#dept2_code").val(),
            "TEST_NAME" : $("#namme_test_biochem").val(),
            "AMOUNT" : $("#dept2_code_amount").val(),
            "TYPE" : $("#select_biochem").val()
        }   
     
        // add object
        objs.push(obj);
                     
        itemCount++;
        // dynamically create rows in the table
        html = "<tr id='tr"+ itemCount + "'><td>"+ obj['INV_CODE'] + "</td> <td>" +  obj['TEST_NAME'] + " </td>  <td>" +  obj['AMOUNT'] + " </td> <td>"+ obj['TYPE'] + "</td><td><input type='button'  id='" + itemCount + "' value='remove'></td> </tr>";            
         
        //add to the table
        $("#table_biochem").append(html)
         
        // The remove button click
        $("#"+itemCount).click(function() {
            var buttonId = $(this).attr("id");
            //write the logic for removing from the array
            $("#tr"+ buttonId).remove();            
        });
         
    });
     
          $( "#btn_add_cytology" ).click(function() {   
         
        var html = "";
         
        var obj={
            "ROW_ID" : itemCount,
            "INV_CODE" :  $("#dept5_code").val(),
            "TEST_NAME" : $("#namme_test_cytology").val(),
            "AMOUNT" : $("#dept5_code_amount").val(),
            "TYPE" : $("#select_cytology").val()
        }   
     
        // add object
        objs.push(obj);
                     
        itemCount++;
        // dynamically create rows in the table
        html = "<tr id='tr"+ itemCount + "'><td>"+ obj['INV_CODE'] + "</td> <td>" +  obj['TEST_NAME'] + " </td>  <td>" +  obj['AMOUNT'] + " </td> <td>"+ obj['TYPE'] + "</td><td><input type='button'  id='" + itemCount + "' value='remove'></td> </tr>";            
         
        //add to the table
        $("#table_cytology").append(html)
         
        // The remove button click
        $("#"+itemCount).click(function() {
            var buttonId = $(this).attr("id");
            //write the logic for removing from the array
            $("#tr"+ buttonId).remove();            
        });
         
    });
      $( "#btn_add_histo" ).click(function() {   
         
        var html = "";
         
        var obj={
            "ROW_ID" : itemCount,
            "INV_CODE" :  $("#dept4_code").val(),
            "TEST_NAME" : $("#namme_test_Histopathology").val(),
            "AMOUNT" : $("#dept4_code_amount").val(),
            "TYPE" : $("#select_histo").val()
        }   
     
        // add object
        objs.push(obj);
                     
        itemCount++;
        // dynamically create rows in the table
        html = "<tr id='tr"+ itemCount + "'><td>"+ obj['INV_CODE'] + "</td> <td>" +  obj['TEST_NAME'] + " </td>  <td>" +  obj['AMOUNT'] + " </td> <td>"+ obj['TYPE'] + "</td><td><input type='button'  id='" + itemCount + "' value='remove'></td> </tr>";            
         
        //add to the table
        $("#table_histopathalogy").append(html)
         
        // The remove button click
        $("#"+itemCount).click(function() {
            var buttonId = $(this).attr("id");
            //write the logic for removing from the array
            $("#tr"+ buttonId).remove();            
        });
         
    });
     
         $( "#btn_add_endocryno" ).click(function() {   
         
        var html = "";
         
        var obj={
            "ROW_ID" : itemCount,
            "INV_CODE" :  $("#dept6_code").val(),
            "TEST_NAME" : $("#namme_test_endocrinology").val(),
            "AMOUNT" : $("#dept6_code_amount").val(),
            "TYPE" : $("#select_endocryno").val()
        }   
     
        // add object
        objs.push(obj);
                     
        itemCount++;
        // dynamically create rows in the table
        html = "<tr id='tr"+ itemCount + "'><td>"+ obj['INV_CODE'] + "</td> <td>" +  obj['TEST_NAME'] + " </td>  <td>" +  obj['AMOUNT'] + " </td> <td>"+ obj['TYPE'] + "</td><td><input type='button'  id='" + itemCount + "' value='remove'></td> </tr>";            
         
        //add to the table
        $("#table_endocryno").append(html)
         
        // The remove button click
        $("#"+itemCount).click(function() {
            var buttonId = $(this).attr("id");
            //write the logic for removing from the array
            $("#tr"+ buttonId).remove();            
        });
         
    });
     
     
     $("#haemo_img").click(function () {
                $("#div_haemotology").fadeToggle();
            });
            $("#bio_img").click(function () {
                $("#div_Biochemistry").fadeToggle();
            });
            $("#sero_img").click(function () {
                $("#div_Serology").fadeToggle();
            });
            $("#cyto_img").click(function () {
                $("#div_Cytology").fadeToggle();
            });
            $("#histo_img").click(function () {
                $("#div_Histopathology").fadeToggle();
            });
            $("#endo_img").click(function () {
                $("#div_Endocrinology").fadeToggle();
            });
     
 });
  
 
    