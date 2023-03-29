<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<title>Profile Uploaded</title>
</head>
<body>
	<div class="container jumbotron">
		<table class="WhatsApp Number">
			<tr>
				<th>First Name</th>
				<td>${user.firstName}</td>
			</tr>
			<tr>
				<th>Middle Name</th>
				<td>${user.middleName}</td>
			</tr>
			<tr>
				<th>Last Name</th>
				<td>${user.lastName}</td>
			</tr>
			<tr>
				<th>Last Name</th>
				<td>${user.lastName}</td>
			</tr>
			<tr>
				<th>Mobile</th>
				<td>${user.mobile}</td>
			</tr>
			<tr>
				<th>DOB</th>
				<td>${user.dob}</td>
			</tr>
			<tr>
				<th>Email</th>
				<td>${user.email}</td>
			</tr>
			<tr>
				<th>Caste</th>
				<td>${user.castCategory}</td>
			</tr>
			<tr>
				<th>Specially Abled</th>
				<td>${user.speciallyAbled}</td>
			</tr>
			<tr>
				<th>Any Kind Of Disability</th>
				<td>${user.kindDisability}</td>
			</tr>
			<tr>
				<th>State</th>
				<td>${user.state}</td>
			</tr>
			<tr>
				<th>District</th>
				<td>${user.district}</td>
			</tr>
			<tr>
				<th>City</th>
				<td>${user.city}</td>
			</tr>
			<tr>
				<th>Address</th>
				<td>${user.address}</td>
			</tr>
			<tr>
				<th>Pincode</th>
				<td>${user.pincode}</td>
			</tr>
			<tr>
				<th>Want to Opt-In Whatsapp</th>
				<td>${user.whatsApp}</td>
			</tr>
			<tr>
				<th>WhatsApp Number</th>
				<td>${user.whatsAppMobile}</td>
			</tr>
		</table>




	</div>
</body>
</html>