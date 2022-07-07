<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
<!--  Bootstrap css -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">


<!-- google fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Georgia&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Playfair+Display&display=swap" rel="stylesheet">


<!--  This provide the UI for the list of customers and their details -->


<title>Customer Relationship Portal</title>
</head>
<body style="background-color:#B4EFEE;text-align:center;">
	<div class="container">
		<h2 style="font-size:55px;color:#1F4690;padding:40px;font-family:Georgia, serif;">Customer Relationship Portal</h2>
		<hr style="color:black;position:center;margin-top:-15px;margin-bottom:30px;">
		
		
		<!-- This will add/update the customers list. -->

		<form action="/CustomerRelationshipManagement/customers/search" class="form-inline">

			<!-- Add a button -->
			<a style="margin-left:450px; font-size:15px;" href="/CustomerRelationshipManagement/customer/showFormForAdd"
				class="btn btn-info"> Add Customer </a> 
			
		</form>
		
		<!-- adding the table to display the list of customers and their details -->
		<div class="table  table-striped" style="margin-left:278px;align-items:center;padding:20px;">
			<table class="thead-light" style="font-size:20px;">
				<thead>
					<tr>
						<th>FirstName</th>
						<th>LastName</th>
						<th>Email</th>
						<th>Action</th>
					</tr>
				</thead>
				
				<tbody>
					<c:forEach items="${customers}" var="tempCustomer">
						<tr>
							<td><c:out value="${tempCustomer.firstName }"/></td>
							<td><c:out value="${tempCustomer.lastName }"/></td>
							<td><c:out value="${tempCustomer.email }"/></td>
							<td>
							<!-- Add "update" button/link --> 
							
							<a
							href="/CustomerRelationshipManagement/customer/showFormForUpdate?customerId=${tempCustomer.id}"
							class="btn btn-info btn-sm"> Update 
							</a> 
							
							<!-- Add "delete" button/link --> 
							
							<a href="/CustomerRelationshipManagement/customer/delete?customerId=${tempCustomer.id}"
							class="btn btn-danger btn-sm"
							onclick="if (!(confirm('Are you sure you want to delete this Customer?'))) return false">
								Delete 
							</a>
						</td>
						</tr>
					</c:forEach>
					
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>