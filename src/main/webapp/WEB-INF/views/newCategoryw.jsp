<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    


<!DOCTYPE html>
<html lang="en">
    <title>Master Referral</title>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width= device-width, initial-scale=1">
        <link type="text/css" rel="stylesheet" href='<spring:url value="/resources/css/bootstrap.min.css" />' >
        <link type="text/css" rel="stylesheet" href='<spring:url value="/resources/css/stylesvitalbeat.css" />' >
         <link type="text/css" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500">
    
       
      
    </head>
    <body>
   <header>
        <div class="header-logo row">
            <div class="col-xs-12 col-sm-5 col-md-5 col-lg-5">
                <img src="images/logo.png" class="col-xs-6 col-sm-10 col-md-6 col-lg-4 img-responsive">
            </div>
        </div>
          <nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="http://www.aventyn.com/">Aventyn</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
                  <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li><a href="#">Home </a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Master Pages <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="referral_master.html">Referral</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Hospital Pages <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="registration.html">Registration</a></li>
                            </ul>
                        </li>
                     <li><a href="News.html">Contact Us</a></li>

                    </ul>

                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="" class="pull-right">Logout</a></li>
                    </ul>
                </div>
  </div><!-- /.container-fluid -->
</nav>

    </header>
      
     <div class="container">
     
         <!--Modal section/Popup section-->
         <div class="modal fade abcd" tabindex="-1" role="dialog" aria-labelledby="gridSystemModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="gridSystemModalLabel">List of Referrals</h4>
      </div>
      <f:form action="/categoryList" method="get" modelAttribute="categories">
      <div class="modal-body">
    
        <div class="row">
          <div class="col-sm-4 col-md-3">
                   <label class="control-label">Filter By: </label>                     
                </div>
                <%-- <div class="col-sm-4 col-md-5">
                <f:select class="form-control input-sm field_color caps" path="categoryType">
             	<f:option value="">---Select One--- </f:option>
             	<f:options items="${types}"/></f:select>
                </div> --%>
         </div>
          <div class="row">
              <div class="tab-content">
            <div class="col-sm-12 col-md-12  height_margin" id="listAss">
               <div class="col-sm-12 col-md-12 table-responsive begin-top">
                            <table class="table  table-bordered table-hover" id="AssoList"> 
                            <thead>
                                <tr>
                                    <th>Category Name</th>
									<th>Category Branch</th>
									<th>Contact</th>
									<th>Email ID</th>
									<th>Modify</th>
									<th>Remove</th>
                                </tr>
                                </thead>
                               <tbody>
						<c:forEach var="cat" items="${categories}" varStatus="status">
							<tr>
							    <c:url var="editUrl" value="/category/${cat.categoryId}"/>
								<c:url var="deleteUrl" value="/category/delete/${cat.categoryId}"/>
														

								<td>${cat.categoryName}</td>
								<td>${cat.categoryBranch}</td>
								<td>${cat.mobileNumber}</td>
								<td>${cat.categoryEmailID1}</td>
								
								<td><a href='<c:out value="${editUrl}"/>'>Edit</a></td>
								<td><a href='<c:out value="${deleteUrl}"/>'>Delete</a></td>
								
							</tr>
						</c:forEach>
					</tbody>
                            </table>
                        </div>  
                
                  </div>
              </div>
          </div>
       
        
      
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
       
      </div>
       </f:form>
    </div><!-- /.modal-content -->
    
  </div><!-- /.modal-dialog -->
   
</div><!-- /.modal -->
                  
  
            <div class="header1">
                <h2 class="thin_border"> Master for Referrals </h2>
            </div>
          
            
            <div class="category">                
           
                 <div class="row">
                 <f:form id="categoryAdd" action="http://localhost:8080/LoginMavenSpringMVC/category/create" method="post" modelAttribute="categoryTypes">
                 <div class="col-md-2 col-sm-3">
                     <label class="control-label">Create Category:</label></div>
                     <div class="col-md-2 col-sm-4">
                   <input type="text" class="form-control input-sm field_color caps"  id="createCategoryName"  name="type" placeholder="Name of the Category">
                         </div>
                     <div class="col-md-1 col-sm-3">
                <input type="submit" class="btn btn-primary btn-sm   height_margin"  name="create" value="Create">
                     </div>
                      </f:form>  
                     <div class="col-md-1">${msg}</div>
                     <div class="col-md-1 col-sm-3">
                     
                     <label class="control-label" >Search:</label></div>
                     <div class="col-md-2 col-sm-4">
                                     <input type="text" class=" form-control input-sm field_color"  name="listReferral" placeholder="list">
                         </div>
                      <div class="col-md-1 col-sm-3">
                <input type="button" class="btn btn-primary btn-sm   height_margin"  name="SearchReferral" value="Search">
                     </div>
                     <div class="col-md-1 col-sm-2">
                <input type="submit" class="btn btn-primary btn-sm   height_margin"  name="ListAllReferal" value="List-All" data-toggle="modal" data-target=".abcd">
                     </div>
                 </div>
                </div>
                           
           <f:form class="form-horizontal" id="categoryFields" action="saveCategory"  method="post" modelAttribute="category">
         <div class="row margin_div">
            <div class="col-sm-3 col-md-2">
                <label class="control-label">Select Category</label>
            </div>
             <div class="col-sm-5 col-md-4">
             
             <f:select class="form-control input-sm field_color caps" path="categoryType">
             	<f:option value="">---Select One--- </f:option>
             	<f:options items="${types}"></f:options>             	        	
             </f:select>
             
             </div>             
                     
             </div>
                
            <div class="row"><label style="color: red">${ReferralDataMessage}</label></div>
            
            <div class="col-sm-12 col-md-12">
                  
   					<f:hidden path="categoryId" />
                    <div class="row">
                    <div class="col-md-2 col-sm-3">
                        <label class="control-label">Name:</label>
                    </div>
                        <div class="col-md-3 col-sm-4">
                        
                            <f:input type="text" class="form-control input-sm field_color caps" path="categoryName" placeholder="Name"/>
                        </div>
                        <div class="col-md-3 col-sm-4">                    
                            <f:input type="text"  class="form-control input-sm field_color caps" path="categoryBranch" placeholder="Branch"/>
                        </div>
                    </div> 
                    <div id="cloanArea"> 
                    <c:forEach items="${category.contactPersons}" varStatus="x">    
              <div id="cloanObject">
               <div class="row">
              
               <div class="col-md-2 col-sm-3"> 
                   <label id="labelPerson" class="control-label">Contact Persons:</label></div>
                   
                    <div class="col-md-3 col-sm-4">
                        <f:input type="text" class="form-control input-sm field_color caps" path="contactPersons[${x.index}].contactPersonName" placeholder="Contact Person"/>
                    </div>
                    <div class="col-md-2 col-sm-2">
                        <f:input type="text" class="form-control input-sm field_color caps" path="contactPersons[${x.index}].contactPersonDesignation" placeholder="Designation"/>
                    </div>
                   <div class="col-md-2 col-sm-2">
                        <f:input type="number" class="form-control input-sm field_color" path="contactPersons[${x.index}].contactPersonNumber" placeholder="Mobile Number"/>
                    </div>
                                   
                    <div id="glyph" class="col-md-3 col-sm-1">
                         <span class="glyphicon glyphicon-plus glyph_size" id="add" aria-hidden="true"></span>
                    </div>
                    
                    </div>
                    </div>
                    <div id="divId"></div>
                   </c:forEach>
                   </div>
                <div class="row">
                <div class="col-md-2 col-sm-3">
                    <label class="control-label">Contact No :</label></div>
                    <div class="col-md-3 col-sm-4">
                        <f:input type="number" class="form-control input-sm field_color" path="mobileNumber" placeholder="Mobile Number"/>
                    </div>
                    <div class="col-md-3 col-sm-4">
                        <f:input type="number" class="form-control input-sm field_color" path="landlineNumber" placeholder="Landline Number"/>
                    </div>
                    </div>
                <div class="row">
                <div class="col-md-2 col-sm-3">
                    <label class="control-label"> E-mail Id:</label></div>
                    <div class="col-md-3 col-sm-4">
                        <f:input type="text" class="form-control input-sm field_color" path="categoryEmailID1" placeholder="E-mail Id"/>
                    </div>
                    <div class="col-md-3 col-sm-4">
                        <f:input type="text" class="form-control input-sm field_color" path="categoryEmailID2" placeholder="E-mail Id"/>
                    </div>
                    </div>
                <div class="row">
                <div class="col-md-2 col-sm-3">
                    <label class="control-label"> Address:</label></div>
                    <div class="col-md-3 col-sm-4">
                        <f:textarea class="form-control input-sm field_color caps" rows="3"  path="categoryAddress.address" placeholder="Address"/>
                    </div>
                    <div class="col-md-3 col-sm-4">
                         <f:input type="text" class="form-control input-sm field_color" path="companyWebsite" placeholder="Company's Website"/>
                        <f:input type="text" class="form-control input-sm field_color caps" path="categoryAddress.landmark" placeholder="*Landmark"/>                 
                                             
                    </div>
                    </div>
                      
                <div class="row">
                <div class="col-md-2 col-sm-3">
                    <label class="control-label"> City/State:</label></div>
                    <div class="col-md-3 col-sm-4">
                       <f:input type="text" class="form-control input-sm field_color caps" path="categoryAddress.city" placeholder="City/District."/>
                    </div>
                    <div class="col-md-3 col-sm-4">
                        <f:input type="text" path="categoryAddress.state" class="form-control input-sm field_color caps" placeholder="State"/>
                    </div>
                    </div>
                <div class="row">
                <div class="col-md-2 col-sm-3">
                    <label class="control-label">Country:</label></div>
                          <div class="col-md-3 col-sm-4">                          
                        <f:input type="text" class="form-control input-sm field_color caps" path="categoryAddress.country" placeholder="Country"/>
                          </div>
                      </div>
                <div class="row">        
                <div class="col-md-2 col-sm-3">        
                    <label class="control-label"> Pin Code:</label></div>
                    <div class="col-md-3 col-sm-4">
                        <f:input type="number" class="form-control input-sm field_color" onFocus="geolocate()" path="categoryAddress.pincode" placeholder="Pin code"/>
                    </div>
                     <div class="col-md-1 col-sm-1 ">
                     <input type="button" class="btn btn-primary btn-sm  height_margin "  name="CANCEL" onclick="window.location='/LoginMavenSpringMVC/dashboard'" value="CANCEL">
                     </div> 
                     <div class="col-md-1 col-sm-1 ">
                     <input type="button" class="btn btn-primary btn-sm  height_margin "  name="REFRESH" onclick="window.location='/LoginMavenSpringMVC/category/newCategory'" value="REFRESH">
                     </div> 
                     <div class="col-md-1 col-sm-1 ">
                     <input type="submit" class="btn btn-primary btn-sm  height_margin "  name="SAVE" value="Save">
                     </div>                     
                     </div>
               </div>
       
                </f:form>
          </div>
        <div class="footer">
            <div class="row">
                <div class="footimg">
                    <img src="images/Alogo.gif" class="img-responsive">
                </div>
            </div>
            <div class="col-md-6 col-sm-6">
                    <a href="#">Home</a>| <a href="#">About</a>| <a href="#">Products</a>| <a href="#">Solutions</a>| <a href="#">Partner</a>| <a href="#">News</a>| <a href="#">Trial </a> | <a href="#">Contacts</a>
            </div>
            <div class="col-md-6 col-sm-6">
                <p>Copyright© 2006-2012 Aventyn, Inc. All Rights Reserved</p>
            </div>
        </div>
            <script type="text/javascript" src='<spring:url value="/resources/js/jquery.min.js"/>'></script>
    <script type="text/javascript" src=' <spring:url value="/resources/js/bootstrap.min.js"/>'></script>
    <script type="text/javascript" src='<spring:url value="/resources/js/jquery.validate.js"/>'></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyATvBoyZuRsthsZYL4sHsuH2GSxh6cVPFY&libraries=places&callback=initAutocomplete"
        async defer></script>
        <script>
            $(document).ready(function(){
            	jQuery.validator.addMethod("noSpace", function(value, element) { 
					  return this.optional(element) || value == value.match(/^[a-zA-Z]*$/); 
					}, "blanck space and symbols not allowed");
            	
				jQuery.validator.addMethod("textOnly", function(value, element) { 
					  return this.optional(element) || value == value.match(/^[a-zA-Z ]*$/); 
					}, "Character is not allowed");
				jQuery.validator.addMethod("numberOnly", function(value, element) { 
					  return this.optional(element) || value == value.match(/^[0-9]*$/); 
					}, "should be digits only");
				
					var glyphRemove="";
					glyphRemove="<span class='glyphicon glyphicon-minus glyph_size' OnClick='$(this).parent().parent().remove()'  aria-hidden='true'></span>"
						var nextIndex =( $("#divId").find('input').length/3)+1;
					

						
            	$("#add").click(function() {
            		var clone= $("#cloanObject").clone();
            	
            		console.log(nextIndex);
            		clone.find('input:first').attr('name','contactPersons['+nextIndex+'].contactPersonName');
            		clone.find('input:eq(1)').attr('name','contactPersons['+nextIndex+'].contactPersonDesignation');
            		clone.find('input:last').attr('name','contactPersons['+nextIndex+'].contactPersonNumber');
            		clone.find('#add').remove();
            		clone.find('#labelPerson').remove();
            		clone.find('#glyph').append(glyphRemove);
            		clone.appendTo("#divId");
            		
            	});
					
					
            	$("#categoryAdd").validate({
            		rules: {
            		createCategoryName: {
            			required: true,
            			minlength: 4,
            			noSpace: true
            		}
            		},            		
            		messages: {
            			createCategoryName:{
            				required:  "Category name required",
                			minlength: "Name should be atleast of 4 letter"
            			}            			
            		},
            		submitHandler: function(form){
            			form.submit();
            		}
            		
            	});
            	
            	$("#categoryFields").validate({
            		rules:{            			
            			categoryType:{
            				required: true
            			},
            			categoryName:{
            				required: true,
            				minlength: 4,
            				textOnly: true            				
            			},
            			categoryBranch:{
            				required: true,
            				minlength:4,
            				textOnly: true
            			},
            			contactPersonsName:{
            				required: true,
            				minlength:4,
            				textOnly: true            				
            			},
            			mobileNumber:{
            				required: true,
            				minlength: 10,
            				maxlength: 10,
            				numberOnly: true            				
            			},
            			landlineNumber:{
            				required: false,
            				minlength: 9,
            				maxlength: 9,
            				numberOnly: true
            			},
            			categoryEmailID1:{
            				required: true,
            				email: true            				
            			},
            			categoryEmailID2:{
            				required: false,
            				email: true
            			},
            			companyWebsite:{
            				required: false,
            				url: true
            			},
            			"categoryAddress.address":{
            				required: true
            			},
            			"categoryAddress.landmark":{
            				required: true,
            				minlength:4,
            				textOnly: true            				
            			},
            			"categoryAddress.city":{
            				required: true,
            				minlength:3,
            				textOnly: true 
            			},
            			"categoryAddress.state":{
            				required: true,
            				minlength:3,
            				textOnly: true            				
            			},
            			"categoryAddress.country":{
            				required: true,
            				minlength:3,
            				noSpace: true    
            			},
            			"categoryAddress.pincode":{
            				required: true,
            				minlength: 6,
            				maxlength:6
            			},
            			"contactPersons[0].contactPersonName":{
            				required: true,
            				minlength:3,
            				textOnly: true 
            			},
            			"contactPersons[0].contactPersonDesignation":{
            				required: true,
            				minlength: 3,
            				textOnly: true
            			},
            			"contactPersons[0].contactPersonNumber":{
            				required: true
            			}
            		},
            	messages:{
        			categoryType: "Select atleast one Type",
        			categoryName:{
        				required: "Name can not be empty",
        				minlength: "atleast 4 character"            				
        			},
        			categoryBranch:{
        				required: "Branch can not be empty",
        				minlength:"atleast 4 character"
        			},
        			mobileNumber:{
        				required: "Enter mobile Number",
        				minlength: "Must be of 10 digits",
        				maxlength: "Must be of 10 digits"            			
        			},
        			landlineNumber:{
        				minlength: "Must be of 9 digits",
        				maxlength: "Must be of 9 digits",
        				numberOnly: "enter digits only"
        			} ,
        			"categoryAddress.address":{
        				required:"please provide your address"
        			},
        			"categoryAddress.landmark":{
        				required: "please provie nearby landmark"
        			},
        			"categoryAddress.city":{
        				required:"please provide your current city"
        			},
        			"categoryAddress.state":{
        				required: "please provide your state"        				            				
        			},
        			"categoryAddress.country":{
        				required: "please provide your Country"        				   
        			},
        			"categoryAddress.pincode":{
        				required:"please provide your pincode",
        				minlength:"should be og 6 digit",
        				maxlength: "should be of 6 digit"
        			},
        			"contactPersons[0].contactPersonName":{
        				required: "Enter contact person's name"
        				
        			},
        			"contactPersons[0].contactPersonDesignation":{
        				required: "enter contact person's designation"
        			},
        			"contactPersons[0].contactPersonNumber":{
        				required: "enter contact person's mobile number"
        			}
            	},
            	submitHandler: function(form){
        			form.submit();
        		}
            		});   
            });
                      
        </script>
        <script type="text/javascript">
        var placeSearch, autocomplete;
		var componentForm = {
		        "categoryAddress.address": 'short_name',
		        "categoryAddress.city": 'long_name',		        
		        "categoryAddress.state": 'short_name',
		       "categoryAddress.countr": 'long_name',
		        "categoryAddress.pincode": 'short_name'
		      };
		function initAutocomplete() {
	        // Create the autocomplete object, restricting the search to geographical
	        // location types.
	        autocomplete = new google.maps.places.Autocomplete(
	            /** @type {!HTMLInputElement} */(document.getElementById('categoryAddress.pincode')),
	            {types: ['geocode']});

	        // When the user selects an address from the dropdown, populate the address
	        // fields in the form.
	        autocomplete.addListener('place_changed', fillInAddress);
	      }
		 function fillInAddress() {
		        // Get the place details from the autocomplete object.
		        var place = autocomplete.getPlace();

		        for (var component in componentForm) {
		          document.getElementById(component).value = '';
		          document.getElementById(component).disabled = false;
		        }

		        // Get each component of the address from the place details
		        // and fill the corresponding field on the form.
		        for (var i = 0; i < place.address_components.length; i++) {
		          var addressType = place.address_components[i].types[0];
		          if (componentForm[addressType]) {
		            var val = place.address_components[i][componentForm[addressType]];
		            document.getElementById(addressType).value = val;
		          }
		        }
		      }
		
		// Bias the autocomplete object to the user's geographical location,
	      // as supplied by the browser's 'navigator.geolocation' object.
	      function geolocate() {
	        if (navigator.geolocation) {
	          navigator.geolocation.getCurrentPosition(function(position) {
	            var geolocation = {
	              lat: position.coords.latitude,
	              lng: position.coords.longitude
	            };
	            var circle = new google.maps.Circle({
	              center: geolocation,
	              radius: position.coords.accuracy
	            });
	            autocomplete.setBounds(circle.getBounds());
	          });
	        }
	      }
        </script>
        <script>
        $('ul.nav li.dropdown').hover(function () {
            $(this).find('.dropdown-menu').stop(true, true).delay(200).fadeIn(500);
        }, function () {
            $(this).find('.dropdown-menu').stop(true, true).delay(200).fadeOut(500);
        });
    </script>
    
    </body>


</html>