<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Employee List</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<h2>Employee List</h2>
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>S.No</th>
					<th>Name</th>
					<th>Designation</th>
				</tr>
			</thead>
				<tbody>
			<c:forEach var="emp" items="${emps}" varStatus="c">
					<tr>
						<td>${c.count}</td>
						<td>${emp.name}</td>
						<td>${emp.designation}</td>
					</tr>

			</c:forEach>
				</tbody>
		</table>
	</div>
</body>
</html>