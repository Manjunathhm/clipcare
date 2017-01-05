<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
<head>
        <meta charset="utf-8">
        <meta name="viewport" content="width= device-width, initial-scale=1">
        <link type="text/css" rel="stylesheet" href='<spring:url value="/resources/css/bootstrap.min.css" />' >
        <link type="text/css" rel="stylesheet" href='<spring:url value="/resources/css/dataTables.bootstrap.min.css" />' >
        <link type="text/css" rel="stylesheet" href='<spring:url value="/resources/css/stylesvitalbeat.css" />' >
        <link type="text/css" rel="stylesheet" href='<spring:url value="/resources/css/hmsCss.css" />' >
    </head>
<body>
<f:form action="{cp}/editpersonlistcontainer" modelAttribute="personListContainer" method="post" id="personListForm">
            <table>
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>Age</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody id="personListContainer">
                    <c:forEach items="${personListContainer.personList}" var="Person" varStatus="i" begin="0" >
                        <tr class="person">    
                            <td><f:input path="personList[${i.index}].name" id="name${i.index}" /></td>
                            <td><f:input path="personList[${i.index}].age" id="age${i.index}" /></td>
                            <%--
                            <td><input type="text" name="personList[].name" value="${Person.name}" /></td>
                            <td><input type="text" name="personList[].age" value="${Person.age}" /></td>
                            --%>
                            <td><a href="#" class="removePerson">Remove Person</a></td>
                        </tr>
                    </c:forEach>
                    <%-- 
                        IMPORTANT 
                        There must always be one row.
                        This is to allow the JavaScript to clone the row.
                        If there is no row at all, it cannot possibly add a new row.
 
                        If this 'default row' is undesirable 
                            remove it by adding the class 'defaultRow' to the row
                        I.e. in this case, class="person" represents the row.
                        Add the class 'defaultRow' to have the row removed.
                        This may seem weird but it's necessary because 
                        a row (at least one) must exist in order for the JS to be able clone it.
                        <tr class="person"> : The row will be present
                        <tr class="person defaultRow"> : The row will not be present
                    --%>
                    <c:if test="${personListContainer.personList.size() == 0}">
                        <tr class="person defaultRow">    
                            <td><input type="text" name="personList[].name" value="" /></td>
                            <td><input type="text" name="personList[].age" value="" /></td>
 
                            <td><a href="#" class="removePerson">Remove Person</a></td>
                        </tr>
                    </c:if>
                </tbody>
            </table>
            <input type="submit" value="Save" id="submit" />&nbsp;&nbsp;
            <a href="#" id="addPerson">Add Person</a>&nbsp;&nbsp;
            <a href="?f=">Reset List</a>
        </f:form>
        
	<script type="text/javascript" src='<spring:url value="/resources/js/jquery.min.js"/>'></script>
    <script type="text/javascript" src='<spring:url value="/resources/js/jquery.dataTables.min.js"/>'></script>
    <script type="text/javascript" src=' <spring:url value="/resources/js/bootstrap.min.js"/>'></script>
    <script type="text/javascript" src=' <spring:url value="/resources/js/dataTables.bootstrap.min.js"/>'></script>
    <script type="text/javascript" src='<spring:url value="/resources/js/jquery.validate.js"/>'></script>
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDCC-7IBPlf3APqYJBud27uhWoHv_DJAP4&libraries=places"></script>
    <script src="js/dynamic_list_helper.js" type="text/javascript"></script>
<script type="text/javascript">
            function rowAdded(rowElement) {
                //clear the imput fields for the row
                $(rowElement).find("input").val('');
                //may want to reset <select> options etc
 
                //in fact you may want to submit the form
                saveNeeded();
            }
            function rowRemoved(rowElement) {
                saveNeeded();
                alert( "Removed Row HTML:\n" + $(rowElement).html() );
            }
 
            function saveNeeded() {
                $('#submit').css('color','red');
                $('#submit').css('font-weight','bold');
                if( $('#submit').val().indexOf('!') != 0 ) {
                    $('#submit').val( '!' + $('#submit').val() );
                }
            }
 
            function beforeSubmit() {
                alert('submitting....');
                return true;
            }
 
            $(document).ready( function() {
                var config = {
                    rowClass : 'person',
                    addRowId : 'addPerson',
                    removeRowClass : 'removePerson',
                    formId : 'personListForm',
                    rowContainerId : 'personListContainer',
                    indexedPropertyName : 'personList',
                    indexedPropertyMemberNames : 'name,age',
                    rowAddedListener : rowAdded,
                    rowRemovedListener : rowRemoved,
                    beforeSubmit : beforeSubmit
                };
                new DynamicListHelper(config);
            });
        </script>
 
</body>
</html>