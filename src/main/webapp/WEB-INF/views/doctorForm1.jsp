<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
<title>Doctor's Master</title>
<head>
    <meta charset="utf-8">

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link type="text/css" rel="stylesheet" href='<spring:url value="/resources/css/bootstrap.min.css" />' >
    <link type="text/css" rel="stylesheet" href='<spring:url value="/resources/css/bootstrap-switch.css" />' >
    <link type="text/css" rel="stylesheet" href='<spring:url value="/resources/css/datepicker3.css" />' >
    <link type="text/css" rel="stylesheet" href='<spring:url value="/resources/css/hmsCss.css" />' >
    <link type="text/css" rel="stylesheet" href='<spring:url value="/resources/css/bootstrap-select.min.css" />' >
    <link type="text/css" rel="stylesheet" href='<spring:url value="/resources/css/bootstrap-timepicker.min.css" />' >
   
</head>

<body>

  
    <f:form class="form-horizontal" id="registrationform" modelAttribute="doctor" method="post" action="save">


        <div class="container-fluid">
            <div class="panel panel-primary borderPanel">
                        <div class="panel-heading">
                            <h2 class="panel-title text-center"><strong>Doctors Master  </strong></h2>
                        </div>
                        <div class="panel-body">            
                <div class="row">
                <f:hidden path="doctorId"/>
                    <div class="form-group-sm">

                    <div class=" col-sm-3 col-md-3">
                        <label for="Name">Title :</label>
                    
                        <f:select class="form-control input-sm" path="title">
                            <option value="Mr">Mr.</option>
                            <option value="Mrs">Mrs.</option>
                            <option value="Mast">Mast.</option>
                            <option value="Miss">Miss.</option>
                        </f:select>

                    </div>
                    <div class="col-sm-3 col-md-3">
                        <label for="firstName">First Name</label>
                        <f:input type="text" class="form-control input-sm caps" path="firstName"  placeholder="First  Name"/>
                    </div>

                    <div class="col-sm-3 col-md-3">
                        <label for="middleName">Middle Name</label>
                        <f:input type="text" class="form-control input-sm caps" path="middleName"  placeholder="Middle  Name"/>
                    </div>
                    <div class="col-sm-3 col-md-3">
                        <label for="lastName">Last Name</label>
                        <f:input type="text" class="form-control input-sm caps" path="lastName" placeholder="Last  Name"/>
                    </div>

                    </div>
                </div>

                <div class="row">
                    <div class="form-group-sm">
                    <div class="col-sm-3 col-md-3">
                    <label>Date of Birth</label>
                    	<f:input type="text" path="dateOfBirth" class="form-control input-sm " placeholder="mm/dd/yyyy"/>
                    </div>
                    <f:hidden path="age"/>
                    <div class="col-sm-3 col-md-3 topmargin">
                    <label for="gender">Gender :</label>
               
                    <label class="radio-inline">
                        <f:radiobutton path="gender" value="M"/>Male
                    </label>
                    <label class="radio-inline">
                        <f:radiobutton path="gender" value="F"/>female
                    </label>
                    <label class="radio-inline">
                        <f:radiobutton path="gender" value="O"/>Others
                    </label>
                    </div>
                    <div class="col-sm-3 col-md-3">
                        <label for="mobnum">Mobile Number</label>                    
                        <f:input type="number" class="form-control input-sm " path="mobileNumber1"  placeholder="Mobile Number(primary)"/>
                    </div>
                    <div class="col-sm-3 col-md-3 ">
                        <label for="mobno2">Mobile Number</label>
                        <f:input type="number" class="form-control input-sm " path="mobileNumber2"  placeholder="Mobile Number(optional)"/>
                    </div>
                    </div>
                </div>

                <div class="row">
                    <div class="form-group-sm">
                    <div class="col-sm-3 col-md-3">
                        <label for="llnum">Landline Number</label>
                   
                        <f:input type="number" class="form-control input-sm " path="landlineNumber1"  placeholder="Landline Number(primary)"/>
                    </div>
                    <div class="col-sm-3 col-md-3">
                        <label for="llnum2">Landline Number</label>
                        <f:input type="number" class="form-control input-sm " path="landlineNumber2" placeholder="Landline Number(optional)"/>
                    </div>
                    <div class="col-sm-3 col-md-3">
                        <label for="email">E-mail ID</label>
                    
                        <f:input type="email" class="form-control input-sm " path="emailId1"  placeholder="E-mail Address(primary)"/>
                    </div>
                    <div class="col-sm-3 col-md-3">
                        <label for="email2">E-mail ID</label>
                        <f:input type="email" class="form-control input-sm " path="emailId2" placeholder="E-mail Address(optional)"/>
                    </div>
                    </div>
                </div>
                              
              <div id="cloanArea"> 
                    <c:if test="${fn:length(doctor.shifts) > 0}" >    
              <div id="cloanObject">
               <div class="row">
              
               <div class="col-md-2 col-sm-3"> 
                   <label id="labelPerson" class="control-label">Contact Persons:</label></div>
                   
                   <div class="col-md-3 col-sm-4">
                        <f:select type="text" class="form-control input-sm field_color caps VText" path="shifts[0].workingDays" placeholder="Contact Person" multiple="true">
                        <f:option value="">---Select One--- </f:option>
             	<f:options items="${days}"/>
             	</f:select>
                    </div>
                    <div class="col-md-2 col-sm-2">
                        <f:input type="text" class="form-control input-sm field_color caps VText" path="shifts[0].fromTime" placeholder="Designation"/>
                    </div>
                   <div class="col-md-2 col-sm-2">
                        <f:input type="text" class="form-control input-sm field_color VNumber" path="shifts[0].toTime" placeholder="Mobile Number"/>
                    </div> 
                                   
                    <div id="glyph" class="col-md-3 col-sm-1">
                         <span class="glyphicon glyphicon-plus glyph_size" id="add" aria-hidden="true"></span>
                    </div>
                    
                    </div>
                    </div>
                    </c:if>
                    <div id="divId">
             <c:forEach items="${doctor.shifts}" varStatus="x" begin="1">  
                    <div class="row">
                
               <div class="col-md-2 col-sm-3"> 
                   <label id="labelPerson" class="control-label">Contact Persons:</label></div>
                   
                    <div class="col-md-3 col-sm-4">
                        <f:select type="text" class="form-control input-sm field_color caps VText" path="shifts[${x.index}].workingDays" placeholder="Contact Person" multiple="true"/>
                    </div>
                    <div class="col-md-2 col-sm-2">
                        <f:input type="text" class="form-control input-sm field_color caps VText" path="shifts[${x.index}].fromTime" placeholder="Designation"/>
                    </div>
                   <div class="col-md-2 col-sm-2">
                        <f:input type="text" class="form-control input-sm field_color VNumber" path="shifts[${x.index}].toTime" placeholder="Mobile Number"/>
                    </div>
                                   
                    <div id="glyph" class="col-md-3 col-sm-1">
                         <span class="glyphicon glyphicon-plus glyph_size" id="add" aria-hidden="true"></span>
                    </div>
                    
                    </div>
                    </c:forEach>	
                    </div>
                   
                   </div>
                        

               
                                     
           
            <div class="row">
                <div class="col-sm-12 col-md-12">
                    <hr/>
                </div>
            </div>
            <div class="row buttons">
                <div class="col-sm-12 col-md-12 text-center">
                    <button class="btn btn-default button" id="save">Save</button>
                    <button class="btn btn-default button" id="reset">Reset</button>
                </div>
            </div>

                </div>
            </div>
        
        </div>
    </f:form>
    <script type="text/javascript" src='<spring:url value="/resources/js/jquery.min.js"/>'></script>
    <script type="text/javascript" src='<spring:url value="/resources/js/jquery.dataTables.min.js"/>'></script>
    <script type="text/javascript" src=' <spring:url value="/resources/js/bootstrap.min.js"/>'></script>
    <script type="text/javascript" src=' <spring:url value="/resources/js/bootstrap-switch.js"/>'></script>
    <script type="text/javascript" src=' <spring:url value="/resources/js/dataTables.bootstrap.min.js"/>'></script>
    <script type="text/javascript" src='<spring:url value="/resources/js/jquery.validate.js"/>'></script>
    <script type="text/javascript" src='<spring:url value="/resources/js/bootstrap-datepicker.js"/>'></script>
    <script type="text/javascript" src='<spring:url value="/resources/js/bootstrap-select.min.js"/>'></script>
    <script type="text/javascript" src='<spring:url value="/resources/js/bootstrap-timepicker.min.js"/>'></script>
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDCC-7IBPlf3APqYJBud27uhWoHv_DJAP4&libraries=places"></script>
  

    <script>
        $('ul.nav li.dropdown').hover(function () {
            $(this).find('.dropdown-menu').stop(true, true).delay(200).fadeIn(500);
        }, function () {
            $(this).find('.dropdown-menu').stop(true, true).delay(200).fadeOut(500);
        });
    </script>
    <script type="text/javascript">
      
    </script>
    <script>
    // autocomplete field of current address
	
            var autocomplete = new google.maps.places.Autocomplete($('[name="currentAddress.landmark"]')[0], {});

            google.maps.event.addListener(autocomplete, 'place_changed', function() {
            	//landmark Name
            	//console.log("Address within array "+address);
                var landmarkValue=$('[name="currentAddress.landmark"]').val();                 
                //console.log("value of landmark :"+landmarkValue);
                var index=landmarkValue.indexOf(",");
                $('[name="currentAddress.landmark"]').val(landmarkValue.substr(0, index));
                //count1=splitLandMark.length;
                //console.log("value of landmark to be appended :"+landmarkValue.substr(0, index));
                
            	// geting pincode city and country
                var place = autocomplete.getPlace();
                 var address = place.formatted_address;         
        		var  value = address.split(",");
                count=value.length;
                country=value[count-1].substr(1);               
                $('[name="currentAddress.country"]').val(country);
                stateNpin=value[count-2];
               // console.log("state and pin is: "+stateNpin);
                city=value[count-3].substr(1);
                $('[name="currentAddress.city"]').val(city);
                var index=stateNpin.split(" ");                
                state=index[1];
                //console.log("state is:"+state);
                $('[name="currentAddress.state"]').val(state);
                pin=index[2];
                $('[name="currentAddress.pincode"]').val(pin);
                             
            });
           
        </script>
        <script>
        // autocomplete field of permanent address
            var pautocomplete = new google.maps.places.Autocomplete($('[name="permanentAddress.landmark"]')[0], {});

            google.maps.event.addListener(pautocomplete, 'place_changed', function() {
            	//landmark Name
            	
                var plandmarkValue=$('[name="permanentAddress.landmark"]').val();                 
                //console.log("value of landmark :"+plandmarkValue);
                 var pindex=plandmarkValue.indexOf(",");
                $('[name="permanentAddress.landmark"]').val(plandmarkValue.substr(0, pindex));
                //count1=splitLandMark.length;
                //console.log("value of landmark to be appended :"+landmarkValue.substr(0, index));
                
            	// geting pincode city and country
                var place = pautocomplete.getPlace();
            	console.log("values of palce: "+place);
                 var address = place.formatted_address; 
               console.log("Address within array "+address);
        		var  value = address.split(",");
                count=value.length;
                country=value[count-1].substr(1); 
               // console.log("name of permanent country :"+country)
                $('[name="permanentAddress.country"]').val(country);
                stateNpin=value[count-2];
               // console.log("state and pin is: "+stateNpin);
                city=value[count-3].substr(1);
                $('[name="permanentAddress.city"]').val(city);
                var index=stateNpin.split(" ");                
                state=index[1];
                //console.log("state is:"+state);
                $('[name="permanentAddress.state"]').val(state);
                pin=index[2];
                $('[name="permanentAddress.pincode"]').val(pin);            
               
            });
           
        </script>
        <script>
        // autocomplete field of permanent address
            var Eautocomplete = new google.maps.places.Autocomplete($('[name="emergencyContact.landmark"]')[0], {});

            google.maps.event.addListener(Eautocomplete, 'place_changed', function() {
            	//landmark Name
            	
                var ElandmarkValue=$('[name="emergencyContact.landmark"]').val();                 
                //console.log("value of landmark :"+plandmarkValue);
                 var Eindex=ElandmarkValue.indexOf(",");
                $('[name="emergencyContact.landmark"]').val(ElandmarkValue.substr(0, Eindex));
               
                var place = Eautocomplete.getPlace();
            	console.log("values of palce: "+place);
                 var address = place.formatted_address; 
               console.log("Address within array "+address);
        		var  value = address.split(",");
                count=value.length;
                country=value[count-1].substr(1); 
               // console.log("name of permanent country :"+country)
                $('[name="emergencyContact.country"]').val(country);
                stateNpin=value[count-2];
               // console.log("state and pin is: "+stateNpin);
                city=value[count-3].substr(1);
                $('[name="emergencyContact.city"]').val(city);
                var index=stateNpin.split(" ");                
                state=index[1];
                //console.log("state is:"+state);
                $('[name="emergencyContact.state"]').val(state);
                pin=index[2];
                $('[name="emergencyContact.pincode"]').val(pin);
              
               
            });
           
        </script>
    
    <script type="text/javascript">
$(document).ready(function(){
	
	$('[name="shifts[0].strictTime"]').bootstrapSwitch();
	 $('input[name="shifts[0].strictTime"]').on('switchChange.bootstrapSwitch', function (event, state) {
         console.log(this); // DOM element
         console.log(event); // jQuery event
         console.log(state); // true | false
	 });
	 
	 <c:if test="${fn:length(doctor.shifts) >0}">
		  nextIndex = ${fn:length(doctor.shifts)};
		</c:if>
	
		
$("#add").click(function() {
   	var clone= $("#cloanObject").clone();
		var counter=1;
	console.log(nextIndex);
	clone.find('select:first').attr('name','shifts['+nextIndex+'].workingDays');
	clone.find('input:eq(1)').attr('name','shifts['+nextIndex+'].fromTime');
	clone.find('input:last').attr('name','shifts['+nextIndex+'].toTime');
	clone.find('select:first').val(' ');
	clone.find('input:eq(1)').val(' ');
	clone.find('input:last').val(' ');
	clone.find('#add').remove();
	clone.find('#labelPerson').remove();
	clone.find('#glyph').append(glyphRemove);
	clone.appendTo("#divId");
	
	
	 $('input[name="shifts['+nextIndex+'].fromTime"]').rules("add", {
	                  		       
	    });            		
	 $('input[name="shifts['+nextIndex+'].toTime"]').rules("add", {
       
    });
	  $('select[name="shifts['+nextIndex+'].workingDays"]').rules("add", {
	       
	    });
	
});
	 
           $('[name="shifts[0].workingDays"]').selectpicker();  
               $('[name="shifts[0].fromTime"]').timepicker({
            	   defaultTime:"08:00 Am",
            	   showInputs:false
               });
            
               $('[name="shifts[0].toTime"]').timepicker({
            	   defaultTime:"10:00 Am",
            	   showInputs:false
               });
    
           $("#issueDate").datepicker({
               autoclose: true,        
               format: 'mm/dd/yyyy',
               endDate: new Date()
              });
           $("#expiryDate").datepicker({
               autoclose: true,        
               format: 'mm/dd/yyyy',
               endDate: new Date()
              });
           $("#joiningDate").datepicker({
               autoclose: true,        
               format: 'mm/dd/yyyy',
               endDate: new Date()
              });
           
           $("#dateofbirth").datepicker({
               autoclose: true,        
               format: 'mm/dd/yyyy',
               endDate: new Date()
              });
              
           $('[name="dateofbirth"]').change(function() {   
           	
              $('[name="age"]').val(getAge(new Date($('[name="dateofbirth"]').val())));
             
           });
           function getAge(birthDate) {
               var now = new Date();
      			
               function isLeap(year) {
                 return year % 4 == 0 && (year % 100 != 0 || year % 400 == 0);
               }

               // days since the birthdate    
               var days = Math.floor((now.getTime() - birthDate.getTime())/1000/60/60/24);
               var age = 0;
               // iterate the years
               for (var y = birthDate.getFullYear(); y <= now.getFullYear(); y++){
                 var daysInYear = isLeap(y) ? 366 : 365;
                 if (days >= daysInYear){
                   days -= daysInYear;
                   age++;
                   // increment the age only if there are available enough days for the year.
                 }
               }
               return age;
             }
           $('input[name="sameAsCurrentAddress"]').click(function(){
               if($(this).prop("checked") == true){
                      console.log("Checkbox is checked.");
                      $('[name="permanentAddress.address"]').val($('[name="currentAddress.address"]').val());
                      $('[name="permanentAddress.landmark"]').val($('[name="currentAddress.landmark"]').val());
                      $('[name="permanentAddress.city"]').val($('[name="currentAddress.city"]').val());
                      $('[name="permanentAddress.state"]').val($('[name="currentAddress.state"]').val());
                      $('[name="permanentAddress.country"]').val($('[name="currentAddress.country"]').val());
                      $('[name="permanentAddress.pincode"]').val($('[name="currentAddress.pincode"]').val());
                      
                     
                  }
                  else if($(this).prop("checked") == false){
                      console.log("Checkbox is unchecked.");
                      $('[name="permanentAddress.address"]').val("");
                      $('[name="permanentAddress.landmark"]').val("");
                      $('[name="permanentAddress.city"]').val("");
                      $('[name="permanentAddress.state"]').val("");
                      $('[name="permanentAddress.country"]').val("");
                      $('[name="permanentAddress.pincode"]').val("");
                  }
               
              });
    
    
    var glyphRemove="";
	glyphRemove="<span class='glyphicon glyphicon-minus glyph_size' OnClick='console.log($(this).parent())'  aria-hidden='true'></span>";
		$("#add").click(function() {
    		var nextIndex =( $("#shiftsBody").find('input').length/5);
    		/* <c:if test="${fn:length(category.contactPersons) >0}">
 			  nextIndex = ${fn:length(category.contactPersons)};
 			</c:if > */
    	    	var clone= $("#cloneObject").clone();
    			var counter=1;
    		console.log(nextIndex);
    		if(nextIndex<=6){
    		clone.find('select:eq(0)').remove();
    		clone.find('select:eq(0)').attr('name','shifts['+nextIndex+'].workingDays');
    		clone.find('select:eq(0)').attr('id','shifts['+nextIndex+'].workingDays'); 
    		clone.find('button:eq(0)').attr('data-id','shifts['+nextIndex+'].workingDays');    		
    		clone.find('input:eq(1)').attr('name','shifts['+nextIndex+'].fromTime');
    		clone.find('input:eq(1)').attr('id','shifts['+nextIndex+'].fromTime');
    		clone.find('input:eq(2)').attr('name','shifts['+nextIndex+'].toTime');
    		clone.find('input:eq(2)').attr('id','shifts['+nextIndex+'].toTime');
    		clone.find('input:eq(3)').attr('name','shifts['+nextIndex+'].strictTime');
    		clone.find('input:eq(3)').attr('id','shifts['+nextIndex+'].strictTime');
    		
    		clone.find('input:eq(1)').val(' ');
    		clone.find('input:eq(2)').val(' ');
    		clone.find('#add').remove();    		
    		clone.find('#glyph').append(glyphRemove);
    		clone.appendTo("#shiftsTable");
    		 
           
            
    		}
    		$('select[name="shifts['+nextIndex+'].workingDays"]').selectpicker(); 
    		 $('[name="shifts['+nextIndex+'].fromTime"]').timepicker({
           	   
             });
          
             $('[name="shifts['+nextIndex+'].toTime"]').timepicker({
          	   
             });
             
        	 $('input[name="shifts[1].strictTime"]').on('switchChange.bootstrapSwitch', function (event, state) {
                 console.log(this); // DOM element
                 console.log(event); // jQuery event
                 console.log(state); // true | false
        	 });
		});
		
		$("#demo").click(function() {
	    	var clone= $("#cloanObject").clone();
			var counter=1;
		console.log(nextIndex);
		clone.find('input:first').attr('name','contactPersons['+nextIndex+'].contactPersonName');
		clone.find('input:eq(1)').attr('name','contactPersons['+nextIndex+'].contactPersonDesignation');
		clone.find('input:last').attr('name','contactPersons['+nextIndex+'].contactPersonNumber');
		clone.find('input:first').val(' ');
		clone.find('input:eq(1)').val(' ');
		clone.find('input:last').val(' ');
		clone.find('#demo').remove();
		clone.find('#labelPerson').remove();
		clone.find('#glyph').append(glyphRemove);
		clone.appendTo("#divId");
		
		
		 $('input[name="contactPersons['+nextIndex+'].contactPersonName"]').rules("demo", {
		        required: true,
		        minlength: 3            		       
		    });            		
		 $('input[name="contactPersons['+nextIndex+'].contactPersonDesignation"]').rules("demo", {
		        required: true,
		        minlength: 3
		    });
		 $('input[name="contactPersons['+nextIndex+'].contactPersonNumber"]').rules("demo", {
		        required: true,
		        minlength: 10,
		        maxlength:10
		    });
		
	});

       
});
</script>
   

  


</body>

</html>