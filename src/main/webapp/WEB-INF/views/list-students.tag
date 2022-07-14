<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix ="c" %>
<!DOCTYPE html>

<html>
<head>
<title>List Students</title>
<!--  <link tyoe ="text/css"
rel="stylesheet"
href="${pageContext.request.contextPath}/resource/css/style.css"/> -->

</head>
<body>
<div id ="wrapper">
<div id ="header">
<h2>DEM - Debate Event Management</h2>
</div>
</div>
<div id ="container">
<div id ="context">
<input type="button" value="Add Student"
    onclick ="window.location.href ='showFormForAdd'; return false;"
        class="add-button"
        />
     <table>
      <tr>
      <th>Id<th>
      <th>First name</th>
      <th>Last name</th>
      <th>Course</th>
      <th>Email</th>
      <th>Action</th>
      <tr>
      <c: forEach var = "tempStudent" items ="${students }">
      <c:url var="updatelink" value ="/customer/showFromForUpdate">
          <c:param name ="customerId" value="${tempStudent.id }"/>
       </c:url>
       
       <tr>
          <td>${tempStudent.id }</td>
          <td>${tempStudent.firstName }</td>
          <td>${tempStudent.lastName }</td>
          <td>${tempStudent.course }</td>
          <td>${tempStudent.email }</td>
     </table>   
 
</body></html>
