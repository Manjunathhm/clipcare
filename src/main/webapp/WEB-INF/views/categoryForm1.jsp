<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>


<!DOCTYPE html>
<html lang="en">
    <title>Master Referral</title>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width= device-width, initial-scale=1"> 
        <link type="text/css" rel="stylesheet" href='<spring:url value="/resources/css/bootstrap.min.css" />' >
        <link type="text/css" rel="stylesheet" href='<spring:url value="/resources/css/dataTables.bootstrap.min.css" />' >
        <link type="text/css" rel="stylesheet" href='<spring:url value="/resources/css/hmsCss.css" />' >
        
       
      
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
                            <li><a href="/LoginMavenSpringMVC/admin/create">Category Creation</a></li>
                                <li><a href="/LoginMavenSpringMVC/admin/referral">Referral</a></li>
                               
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Hospital Pages <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="/LoginMavenSpringMVC/register/form">Registration</a></li>
                               
                                <li>
                                    <a href="#"></a>
                                </li>
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
     
         
                 
  <div class="container-fluid"> 
      
      <!--Modal section/Popup section-->
         <div class="modal abcd" tabindex="-1" role="dialog" aria-labelledby="gridSystemModalLabel">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="gridSystemModalLabel">List of Referrals</h4>
      </div>
      <f:form action="categoryList" method="get" modelAttribute="category">
      <div class="modal-body">
    
        <div class="row">
          <div class="col-sm-3 col-md-2">
                   <label class="">Filter By: </label>                     
                </div>
                <div class="col-sm-4 col-md-5">
                 
                <%-- <select class="form-control input-sm  caps">
                
              <option value="">---Select One--- </option>    
              <c:forEach var="cat1" items="${categories}" varStatus="status">          
            	  <option value="${cat1.categoryName}"/>
              </c:forEach>
              </select> --%>
              <f:select id="filterSelect" class="form-control input-sm  caps"  path="categoryType">
             	<f:option value="">---Select One--- </f:option>
             	<f:options items="${types}"/>
             </f:select>
                </div>
         </div>
          <div class="row">
              <div class="tab-content">
            <div class="col-sm-12 col-md-12  height_margin" id="listAss">
               <div class="col-sm-12 col-md-12 table-responsive begin-top">
                            <table id="referalList" class="table  table-bordered table-hover borderpanel"> 
                            <thead >
                                <tr>
                                	<th class="text-center">Type</th>
                                    <th class="text-center">Name</th>
         							<th class="text-center">Branch</th>
							         <th class="text-center">Contact</th>
							         <th class="text-center">Email ID</th>
							          <th class="text-center">Is Active</th>
							         <th class="text-center">Modify</th>
							         <th class="text-center">Remove</th>
                                </tr>
                                </thead>
                               <tbody>
      <c:forEach var="cat" items="${categories}" varStatus="status">
       <tr>
       
           <c:url var="editUrl" value="/${cat.categoryId}"/>
        <c:url var="deleteUrl" value="/admin/delete/${cat.categoryId}"/>
             
		<td class="text-center">${cat.categoryType}</td>
        <td class="text-center">${cat.categoryName}</td>
        <td class="text-center">${cat.categoryBranch}</td>
        <td class="text-center">${cat.mobileNumber}</td>
        <td class="text-center">${cat.categoryEmailID1}</td>
        <td class="text-center">${cat.isActive}</td>
        
        
        <td class="text-center" ><a href='<c:out value="${editUrl}" />'><i class="glyphicon glyphicon-pencil" style="color:#006699" data-toggle="tooltip" title="Edit"></i></a></td>
        <td class="text-center"><a href='<c:out value="${deleteUrl}"/>'><i class="glyphicon glyphicon-trash" style="color:#c12e2a" data-toggle="tooltip" title="Delete"></i></a></td>
        
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
      
                    <div class="panel panel-primary borderPanel">
                        <div class="panel-heading">
                            <h2 class="panel-title text-center"><strong>Master for Referrals</strong>
                            <input type="button" class="btn btn-success btn-sm pull-right"  name="ListAllReferal" value="List-All" data-toggle="modal" data-target=".abcd">
                </h2>
                        </div>
                        <div class="panel-body">
                        <c:if test="${not empty warningMSG}">
                                <div class="row">
                                <div class="col-sm-2"></div>
                                <div class="col-sm-4">
                                <div class="alert alert-warning alert-dismissible fade in " role="alert">
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    							<span aria-hidden="true">&times;</span>
 								 </button>
                                	<p><strong>Warning !</strong>${warningMSG}</p>                               
                                </div>							
                                </div>
                                </div>
                                </c:if>
                                <c:if test="${not empty successMSG}">
                                <div class="row">
                                <div class="col-sm-2"></div>
                                <div class="col-sm-4">
                                <div class="alert alert-success alert-dismissible fade in " role="alert">
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    							<span aria-hidden="true">&times;</span>
 								 </button>
                                	<p><strong></strong>${successMSG}</p>                               
                                </div>							
                                </div>
                                </div>
                                </c:if>
             <div class="category">
                        <f:form class="form-horizontal categoryFields1" id="categoryFields" action="http://localhost:8080/LoginMavenSpringMVC/admin/saveReferral"  method="post" modelAttribute="category">
                          <div class="row"> 
                           <div class="form-group-sm">
                                <div class="col-sm-4 col-md-3">
                                    <label class="">Select Category</label>     
                                    <f:select class="form-control input-sm  caps" name="categoryType" path="categoryType">
             	                          <f:option value="">---Select One--- </f:option>
             	                          <f:options items="${types}"/>
                                    </f:select>
                              </div> 
                                <div class="col-md-3 col-sm-4">
                                    <label class="">Name</label>
                                
                                    <f:input type="text" class="form-control input-sm  caps" path="categoryName" placeholder="Name"/>
                                </div>
                                <div class="col-md-3 col-sm-4"> 
                                    <label class="">Branch</label>
                                    <f:input type="text"  class="form-control input-sm  caps" path="categoryBranch" placeholder="Branch"/>
                                </div>
                                <f:hidden path="categoryId"/>
                            </div>                   
                              </div>
                                 <div id="cloanArea"> 
                    <c:if test="${fn:length(category.contactPersons) >= 0}" >    
              <div id="cloanObject">
             <div class="row"> 
              <div class="form-group-sm">
              
               <div class="col-md-3 col-sm-4"> 
                   <label class="">Contact Persons</label>                   
                        <f:input type="text" class="form-control input-sm  caps" path="contactPersons[0].contactPersonName" placeholder="Contact Person"/>
                    </div>
                    <div class="col-md-3 col-sm-3">
                         <label class="">Designation</label>  
                        <f:input type="text" class="form-control input-sm  caps " path="contactPersons[0].contactPersonDesignation" placeholder="Designation"/>
                    </div>
                   <div class="col-md-3 col-sm-3">
                       <label class="">Mobile Number</label>
                        <f:input type="number" class="form-control input-sm " path="contactPersons[0].contactPersonNumber" placeholder="Mobile Number"/>
                    </div>
                                   
                    <div id="glyph" class="col-md-3 col-sm-2 topmargin">
                        <label class=""></label>
                         <span class="glyphicon glyphicon-plus glyph_size" id="add" aria-hidden="true"></span>
                    </div>
                    
                    </div>
                   </div> 
                   </div>
                    </c:if>
                    <div id="divId">
             <c:forEach items="${category.contactPersons}" varStatus="x" begin="1"> 
              <div class="row">
                    <div class="form-group-sm">
                
               <div class="col-md-3 col-sm-4"> 
                   <label id="labelPerson" class="">Contact Persons:</label>                      
                        <f:input type="text" class="form-control input-sm  caps " path="contactPersons[${x.index}].contactPersonName" placeholder="Contact Person"/>
                    </div>
                    <div class="col-md-3 col-sm-3">
                        <label class="">Designation</label>
                        <f:input type="text" class="form-control input-sm  caps VText" path="contactPersons[${x.index}].contactPersonDesignation" placeholder="Designation"/>
                    </div>
                   <div class="col-md-3 col-sm-3">
                    <label class="">Mobile Number</label>
                        <f:input type="number" class="form-control input-sm  VNumber" path="contactPersons[${x.index}].contactPersonNumber" placeholder="Mobile Number"/>
                    </div>
                                   
                    <div id="glyph" class="col-md-3 col-sm-2 topmargin">
                         <span class='glyphicon glyphicon-minus glyph_size' OnClick='$(this).parent().parent().remove()'  aria-hidden='true'></span>
                    </div>
                    
                    </div>
                    </div>
                    </c:forEach>	
                    </div>
                   
                   </div>
                    <div class="row">
                            <div class="form-group-sm">
                <div class="col-md-3 col-sm-4">
                    <label class="">Mobile Number</label>                             
                        <f:input type="number" class="form-control input-sm " path="mobileNumber" placeholder="Mobile Number"/>
                    </div>
                    <div class="col-md-3 col-sm-4">
                        <label class="">Landline Number</label>
                        <f:input type="number" class="form-control input-sm " path="landlineNumber" placeholder="Landline Number"/>
                    </div>
                    
                            </div>
                            </div>
                             <div class="row">
                            <div class="form-group-sm">
                                <div class="col-md-3 col-sm-4">
                                    <label class=""> E-mail Id 1*</label>                                
                                    <f:input type="text" class="form-control input-sm " path="categoryEmailID1" placeholder="E-mail Id"/>
                                </div>
                                <div class="col-md-3 col-sm-4">
                                    <label class="">E-mail Id 2</label>
                                    <f:input type="text" class="form-control input-sm " path="categoryEmailID2" placeholder="E-mail Id"/>
                                </div>
                                <div class="col-md-3 col-sm-4">
                                <label class="">Website</label>
                                    <f:input type="text" class="form-control input-sm " path="companyWebsite" placeholder="Company's Website"/>
                                  </div>
                            </div>
                            </div>
                             <div class="row">
                            <div class="form-group-sm">
                                <div class="col-md-3 col-sm-4">
                                    <label class="">Address</label>                                
                                    <f:textarea class="form-control input-sm  caps" rows="3"  path="categoryAddress.address" placeholder="Address"/>
                                </div>
                                <div class="col-md-3 col-sm-4">
                                    <label class="">Landmark</label>
                                     <f:input type="text" class="form-control input-sm  caps" path="categoryAddress.landmark" placeholder="*Landmark"/>              
                                </div>
                                <div class="col-md-3 col-sm-4">
                                    <label class="">City</label>
                                    <f:input type="text" class="form-control input-sm  caps" path="categoryAddress.city" placeholder="City/District."/>
                                </div>
                            </div>
                            </div>
                             <div class="row">
                            <div class="form-group-sm">
                                
                                <div class="col-md-3 col-sm-4">
                                    <label class="">State</label>
                                    <f:input type="text" path="categoryAddress.state" class="form-control input-sm  caps" placeholder="State"/>
                                </div>
                                <div class="col-md-3 col-sm-4">
                                    <label class="">Country</label>
                                    <f:input type="text" class="form-control input-sm  caps" path="categoryAddress.country" placeholder="Country"/>
                                </div>
                                <div class="col-md-3 col-sm-4">        
                                    <label class=""> Pin Code:</label>
                                    <f:input type="number" class="form-control input-sm " path="categoryAddress.pincode" placeholder="Pin code"/>
                                </div>
                            </div>
                            </div>
                             <div class="row">
                            <div class="form-group-sm">        
                              
                                <div class="col-md-3 col-sm-3"></div>
                                <div class="col-md-1 col-sm-1 topmargin">
                                    <label class=""></label>
                                    <input type="button" class="btn btn-primary btn-sm  height_margin" onclick="window.location='/LoginMavenSpringMVC/admin/dashboard'" name="CANCEL" value="Cancel">
                                </div>
                                <div class="col-md-1 col-sm-1 topmargin">
                                    <label class=""></label>
                                    <input type="button" class="btn btn-primary btn-sm  height_margin" onclick="window.location='/LoginMavenSpringMVC/admin/referral'" name="refresh" value="Refresh">
                                </div>
                                <div class="col-md-1 col-sm-1 topmargin">
                                    <label class=""></label>
                                    <input type="submit" class="btn btn-primary btn-sm  height_margin "  name="SAVE" value="Save">
                                </div>
                     </div>
                     </div>
                            <div id="dialog" class="form-group-sm" style="margin-top:2px">
                                <div class="col-sm-3 col-md-3"></div>
                                <div class="col-sm-9 col-md-9"><label id="labelmsg">${msgSave}</label></div>
                            </div>    
                  </f:form>       
                </div>     
                        </div>
                    </div>           
          
        <div class="footer">
            <div class="form-group">
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
        </div>
     
      
                                                            
            <script type="text/javascript" src='<spring:url value="/resources/js/jquery.min.js"/>'></script>            
            <%-- <script type="text/javascript" src='<spring:url value="/resources/js/googleApi.js"/>'></script> --%>
            <script type="text/javascript" src='<spring:url value="/resources/js/jquery.dataTables.min.js"/>'></script>
    <script type="text/javascript" src=' <spring:url value="/resources/js/bootstrap.min.js"/>'></script>
    <script type="text/javascript" src=' <spring:url value="/resources/js/dataTables.bootstrap.min.js"/>'></script>
    <script type="text/javascript" src='<spring:url value="/resources/js/jquery.validate.js"/>'></script>
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDCC-7IBPlf3APqYJBud27uhWoHv_DJAP4&libraries=places"></script>
    
     
        <script>
            var autocomplete = new google.maps.places.Autocomplete($('[name="categoryAddress.landmark"]')[0], {});

            google.maps.event.addListener(autocomplete, 'place_changed', function() {
            	//landmark Name
            	//console.log("Address within array "+address);
                var landmarkValue=$('[name="categoryAddress.landmark"]').val();                 
                //console.log("value of landmark :"+landmarkValue);
                var index=landmarkValue.indexOf(",");
                $('[name="categoryAddress.landmark"]').val(landmarkValue.substr(0, index));
                //count1=splitLandMark.length;
                //console.log("value of landmark to be appended :"+landmarkValue.substr(0, index));
                
            	// geting pincode city and country
                var place = autocomplete.getPlace();
                 var address = place.formatted_address;         
        		var  value = address.split(",");
                count=value.length;
                country=value[count-1].substr(1);               
                $('[name="categoryAddress.country"]').val(country);
                stateNpin=value[count-2];
               // console.log("state and pin is: "+stateNpin);
                city=value[count-3].substr(1);
                $('[name="categoryAddress.city"]').val(city);
                var index=stateNpin.split(" ");                
                state=index[1];
                //console.log("state is:"+state);
                $('[name="categoryAddress.state"]').val(state);
                pin=index[2];
                $('[name="categoryAddress.pincode"]').val(pin);
               // console.log("city is: "+city+" State is: "+state+" pin is : "+pin+" country is : "+country);
               /*  var newAddress="";
                 for(x=value.length;x>=1;x--){ //for getting the address of location except pin city and country
                    if(x!=1&&x!=2&&x!=3){
                       var text=value[count-x];
                       
                        newAddress=newAddress+text;
                        console.log(text);
                        $('[name="categoryAddress.address"]').val(newAddress);
                    }
                }  */
                
               
            });
        </script>
    
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
						
					
					//code for filter of list.
					var table=$("#referalList").dataTable();
					$('#filterSelect').change(function() {
						table.fnFilter($(this).val());
					});
					
             
						
						
            	$("#add").click(function() {
            		var nextIndex =( $("#divId").find('input').length/3)+1;
            		/* <c:if test="${fn:length(category.contactPersons) >0}">
         			  nextIndex = ${fn:length(category.contactPersons)};
         			</c:if > */
            	    	var clone= $("#cloanObject").clone();
            			var counter=1;
            		console.log(nextIndex);
            		clone.find('input:first').attr('name','contactPersons['+nextIndex+'].contactPersonName');
            		clone.find('input:eq(1)').attr('name','contactPersons['+nextIndex+'].contactPersonDesignation');
            		clone.find('input:last').attr('name','contactPersons['+nextIndex+'].contactPersonNumber');
            		clone.find('input:first').val(' ');
            		clone.find('input:eq(1)').val(' ');
            		clone.find('input:last').val(' ');
            		clone.find('#add').remove();
            		clone.find('#labelPerson').remove();
            		clone.find('#glyph').append(glyphRemove);
            		clone.appendTo("#divId");
            		
            		
            		 $('input[name="contactPersons['+nextIndex+'].contactPersonName"]').rules("add", {
            		        required: true,
            		        minlength: 3            		       
            		    });            		
            		 $('input[name="contactPersons['+nextIndex+'].contactPersonDesignation"]').rules("add", {
         		        required: true,
         		        minlength: 3
         		    });
            		 $('input[name="contactPersons['+nextIndex+'].contactPersonNumber"]').rules("add", {
          		        required: true,
          		        minlength: 10,
          		        maxlength:10
          		    });
            		
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
            				required: true,
            				minlength:10,
            				maxlength:10
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
       
       
       <script>
        $('ul.nav li.dropdown').hover(function () {
            $(this).find('.dropdown-menu').stop(true, true).delay(200).fadeIn(500);
        }, function () {
            $(this).find('.dropdown-menu').stop(true, true).delay(200).fadeOut(500);
        });
    </script>
    
    </body>


</html>