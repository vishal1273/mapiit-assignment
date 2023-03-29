<!DOCTYPE html>
<html lang="en">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
<script src="https://kit.fontawesome.com/yourcode.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
	integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
	crossorigin="anonymous">
<title>Profile Update Form</title>
<link rel="stylesheet" href="/css/style.css">
</head>

<body>
	<div class="container">
		<div class="row">
			<h4>
				<i class="fas fa-user-plus"></i>Profile Update
			</h4>
		</div>
	</div>
	<hr>

	<div class="container">
		<div class="row">
			<div class="container">
				<form:form action="/processProfile2" method="post"
					modelAttribute="user">
					<div class="row">
						<div class="column">
							<div class="form-group">
								<label for="firstName">First Name</label>
								<form:input path="firstName" class="form-control"
									placeholder="Enter First Name" />
							</div>
							<div class="form-group">
								<label for="mobileNo">Mobile No.</label>
								<form:input path="mobile" class="form-control"  
									placeholder="Enter Mobile" />
									<form:errors path="mobile" cssClass="error"/>
							</div>
							<div class="form-group">
								<label for="castCategory">Cast Category</label><br>
								<form:select path="castCategory" class="form-control">
									<form:option value="General">General</form:option>
									<form:option value="OBC">OBC</form:option>
									<form:option value="SC">SC</form:option>
									<form:option value="ST">ST</form:option>
								</form:select>
							</div>
							<div class="form-group">
								<label for="state">State<span class="required"></span>
								</label><br>
								<form:select path="state" class="form-control">
									<form:options items="${user.states}" />
								</form:select>
								<form:errors path="state" cssClass="error" />
							</div>
							<div class="form-group">
								<label for="city">City<span class="required"></span>
								</label><br>
								<form:input path="city" class="form-control"
									placeholder="Enter City" />
								<form:errors path="city" cssClass="error" />
							</div>
						</div>
						<div class="column">
							<div class="form-group">
								<label for="middleName">Middle Name</label>
								<form:input path="middleName" class="form-control"
									placeholder="Enter Middle Name" />
							</div>
							<div class="form-group">
								<label for="date">Date of Birth<span class="required"></span></label>

								<input type="date" class="form-control " min="2002-03-28"
									max="2023-03-28" placeholder="Enter Date of Birth" name="dob">
								<form:errors path="dob" cssClass="error" />
							</div>
							<div class="form-group">
								<label for="speciallyAbled">Specially Abled</label><br>

								<form:select path="speciallyAbled" class="form-control">
									<form:option value="Yes">Yes</form:option>
									<form:option value="No">No</form:option>
								</form:select>

							</div>
							<div class="form-group">
								<label for="state">District<span class="required"></span>
								</label><br>
								<form:select path="district" class="form-control">
									<form:options items="${user.districts}" />
								</form:select>
								<form:errors path="district" cssClass="error" />

							</div>
							<div class="form-group">
								<label for="state">Pincode<span class="required"></span>
								</label><br>
								<form:input path="pincode" placeholder="Enter Pincode" />
								<form:errors path="pincode" cssClass="error" />
							</div>
						</div>
						<div class="column">
							<div class="form-group">
								<label for="lastName">Last Name</label>
								<form:input path="lastName" class="form-control"
									placeholder="Enter Last Name" />
							</div>
							<div class="form-group">
								<label for="email">Email Id<span class="required"></span></label>
								<form:input path="email" class="form-control"
									placeholder="Enter Email" />
								<form:errors path="email" cssClass="error" />
							</div>
							<div class="form-group">
								<label for="kindDisability">Kind Disability</label>
								<form:input path="kindDisability" class="form-control required" />
							</div>
							<div class="form-group">
								<label for="address">Address<span class="required"></span></label>
								<form:textarea path="address" class="form-control required"
									rows="5" />
								<form:errors path="address" cssClass="error" />

							</div>

						</div>

					</div>
					<br>					<br>
					<br>
					<br>
					<br>
					<br>
					<div class="form-group mt-3">
						<i class="fab fa-whatsapp fa-1x" style="color: #25d366;"></i> Do
						you want to Opt-in for updates on WhatsApp?<span class="required"></span>
						<form:radiobutton path="whatsApp" value="Yes" />
						Yes
						<form:radiobutton path="whatsApp" value="No" />
						No
						<form:errors path="whatsApp" cssClass="error" />
					</div>
					<div class="row">
						<div class="col-md-3">
							<i class="fab fa-whatsapp fa-1x" style="color: #25d366;"></i>
							Whatsapp Mobile Number<span class="required"></span>
						</div>
						<div class="col-md-3">
							<form:input path="whatsAppMobile" class="form-control" />
						</div>
						<div class="col-md-3"></div>
					</div>

					<div class="form-group">

						<button type="submit" class="btn btn-warning">
							<i class="fas fa-location-arrow"></i>Update Profile Details
						</button>
					</div>


				</form:form>
			</div>
		</div>
	</div>
	<hr>
	 <div class="container">
		<h3>Document Details</h3>
		<hr>
	</div>
	<div class="container">
		<form action="upload.jsp">
			<div class="row">
				<div class="col-md-3">
					<div class="form-group">
						<label for="docType">Document Type </label> <select name="docType"
							id="docType" class="form-control">
							<option value="">-Please Select</option>
							<option>Aadhaar Card</option>
							<option>Pan Card</option>
							<option>Driving License</option>
						</select>
					</div>
				</div>
				<div class="col-md-3">
					<div class="form-group">
						<label for="docNumber">Document Number </label> <input type="text"
							class="form-control" name="docNumber" id="docNumber"
							placeholder="Enter Document Number">
					</div>
				</div>
				<div class="col-md-3">
					<div class="form-group">
						<label for="document">Document </label> <input type="file"
							class="form-control" name="file">
					</div>
				</div>
				<div class="col-md-3">
					<div class="form-group">
						<br>
						<button type="submit" class="btn btn-dark">
							<i class="fas fa-location-arrow"></i> | Upload
						</button>
					</div>
				</div>
			</div>
		</form>
	</div>

</body>

</html>