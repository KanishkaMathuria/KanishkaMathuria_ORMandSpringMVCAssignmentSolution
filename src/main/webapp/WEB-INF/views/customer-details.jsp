<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">

<!-- google fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Georgia&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Playfair+Display&display=swap" rel="stylesheet">

<!--  This provide the UI for adding new customer to the list or -->
<!--  updating the info of any existing customer in the list -->


<title>Save Customer</title>
</head>
<body style="background-color:#B4EFEE;text-align:center;">

<div class="container">

		<h2 style="font-size:55px;color:#1F4690;padding:40px;font-family:Georgia, serif;">Add Customer Details</h2>
		<hr style="color:black;position:relative;margin-top:-15px;margin-bottom:30px;">

		<p class="h4 mb-4" style="font-family:Playfair Display, serif;font-size:40px;padding:20px;color:#1363DF;">Customer Details</p>

		<form action="/CustomerRelationshipManagement/customer/save" style="align-items:center;margin:auto" method="POST">

			<!-- Add hidden form field to handle update -->
			<input type="hidden" name="id" value="${customer.id}" />

			<div class="form-inline">
				<input style="align-items:center;margin:auto" type="text" name="firstName" value="${customer.firstName}"
					class="form-control mb-4 col-4" placeholder="FirstName" style="color: black;">

			</div>

			<div class="form-inline">

				<input style="align-items:center;margin:auto" type="text" name="lastName" value="${customer.lastName}"
					class="form-control mb-4 col-4" placeholder="LastName">


			</div>

			<div class="form-inline">

				<input style="align-items:center;margin:auto" type="text" name="email" value="${customer.email}"
					class="form-control mb-4 col-4" placeholder="Email">

			</div>
			<!--  This saves the entered details -->

			<button type="submit" class="btn btn-info col-2">Save</button>

		</form>

		<hr style="padding:15px; position:relative; margin-top:80px" />
		
		<!--  This link brings us back to the list of customers -->
		
		<a href="/CustomerRelationshipManagement/customers/list" style="font-size:20px;color:#47B5FF;text-decoration: underline;">Back to Customers List</a>

	</div>

</body>
</html>