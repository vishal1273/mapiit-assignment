<!DOCTYPE html>
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
<script src="https://kit.fontawesome.com/yourcode.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
	integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
	crossorigin="anonymous">
<title>Profile Update Form</title>
<script src="/js/validation.js"></script>
<link rel="stylesheet" href="/css/style.css">
</head>

<body onload="resetSelection()">
	<div class="container">
		<div class="row">
			<h4>
				<i class="fas fa-user-plus"></i>Profile Update
			</h4>
		</div>
	</div>
	<hr height="2px" color="#333">

	<div class="container">
		<div class="row">
			<div class="container">
				<form action="/processProfile" method="post">
					<div class="row">
						<div class="column">
							<div class="form-group">
								<label for="firstName">First Name</label> <input type="text"
									class="form-control" placeholder="Enter First Name"
									name="firstName">
							</div>
							<div class="form-group">
								<label for="mobileNo">Mobile No.</label> <input type="text"
									class="form-control" minlength="10"
									placeholder="Enter First Name" name="mobile">
							</div>
							<div class="form-group">
								<label for="castCategory">Cast Category</label><br> <select
									name="castCategory" id="castCategory" class="form-control">
									<option value="General">General</option>
									<option value="OBC">OBC</option>
									<option value="SC">SC</option>
									<option value="ST"></option>
								</select>
							</div>
							<div class="form-group">
								<label for="state">State<span class="required"></span>
								</label><br>
								<!-- <select name="state" id="state" class="form-control"
									required>
									<option value=""></option>
									<option value=”Madhya Pradesh”>Madhya Pradesh</option>
									<option value=”Andaman and NicobarIslands”>Andaman
										and Nicobar Islands</option>
									<option value=”AndhraPradesh”>Andhra Pradesh</option>
									<option value=”ArunachalPradesh”>Arunachal Pradesh</option>
									<option value=”Assam”>Assam</option>
									<option value=”Bihar”>Bihar</option>
									<option value=”Chandigarh”>Chandigarh</option>
									<option value=”Chhattisgarh”>Chhattisgarh</option>
									<option value=”Dadra and NagarHaveli”>Dadra and Nagar
										Haveli</option>
									<option value=”Daman andDiu”>Daman and Diu</option>
									<option value=”Delhi”>Delhi</option>
									<option value=”Goa”>Goa</option>
									<option value=”Gujarat”>Gujarat</option>
									<option value=”Haryana”>Haryana</option>
									<option value=”HimachalPradesh”>Himachal Pradesh</option>
									<option value=”Jammu andKashmir”>Jammu and Kashmir</option>
									<option value=”Jharkhand”>Jharkhand</option>
									<option value=”Karnataka”>Karnataka</option>
									<option value=”Kerala”>Kerala</option>
									<option value=”Lakshadweep”>Lakshadweep</option>
									<option value=”Maharashtra”>Maharashtra</option>
									<option value=”Manipur”>Manipur</option>
									<option value=”Meghalaya”>Meghalaya</option>
									<option value=”Mizoram”>Mizoram</option>
									<option value=”Nagaland”>Nagaland</option>
									<option value=”Orissa”>Orissa</option>
									<option value=”Pondicherry”>Pondicherry</option>
									<option value=”Punjab”>Punjab</option>
									<option value=”Rajasthan”>Rajasthan</option>
									<option value=”Sikkim”>Sikkim</option>
									<option value=”TamilNadu”>Tamil Nadu</option>
									<option value=”Tripura”>Tripura</option>
									<option value=”Uttaranchal”>Uttaranchal</option>
									<option value=”UttarPradesh”>Uttar Pradesh</option>
									<option value=”WestBengal”>West Bengal</option>
									</option>
								</select> -->
								<select id="state" name="state" size="1"
									onchange="makeSubmenu(this.value)" class="form-control"
									required>
									<option value="">Choose State</option>
									<option>Madhyapradesh</option>
									<option>Maharashtra</option>
									<option>Gujrat</option>
								</select>
							</div>
							<div class="form-group">
								<label for="city">City<span class="required"></span>
								</label><br> <input type="text" class="form-control "
									required="required" placeholder="Enter City" name="city">
							</div>
						</div>
						<div class="column">
							<div class="form-group">
								<label for="middleName">Middle Name</label> <input type="text"
									class="form-control" placeholder="Enter Mobile Name"
									name="middleName">
							</div>
							<div class="form-group">
								<label for="date">Date of Birth<span class="required"></span></label>
								<input type="date" class="form-control " min="2002-03-28"
									max="2023-03-28" value="1988-07-27"
									placeholder="Enter Date of Birth" name="dob">
							</div>
							<div class="form-group">
								<label for="speciallyAbled">Specially Abled</label><br> <select
									name="speciallyAbled" id="speciallyAbled" class="form-control">
									<option value="Yes">Yes</option>
									<option value="No">No</option>
									</option>
								</select>
							</div>
							<div class="form-group">
								<label for="state">District<span class="required"></span>
								</label><br>
								<!-- <select name="district" required class="form-control">
									<option value=""></option>
									<option value=Damoh>Damoh</option>
									<option value=”Bhopal”>Bhopal</option>
									<option value=Indore>Indore</option>
									<option value=Khargone>Khargone</option>
									</option>
								</select> -->
								<select id="district" size="1" name="district" required
									class="form-control">
									<option value="">Choose District</option>
									<option></option>
								</select>
							</div>
							<div class="form-group">
								<label for="state">Pincode<span class="required"></span>
								</label><br> <input type="text" required="required" minlength="6"
									class="form-control" placeholder="Pincode" name="pincode">
							</div>
						</div>
						<div class="column">
							<div class="form-group">
								<label for="lastName">Last Name</label> <input type="text"
									class="form-control" placeholder="Enter Last Name"
									name="lastName">
							</div>
							<div class="form-group">
								<label for="email">Email Id<span class="required"></span></label>
								<input type="email" class="form-control" required="required"
									placeholder="Enter Email" name="email">
							</div>
							<div class="form-group">
								<label for="kindDisability">Kind Disability</label> <input
									type="text" class="form-control required" name="kindDisability"
									name="kindDisability">
							</div>
							<div class="form-group">
								<label for="address">Address<span class="required"></span></label>
								<textarea rows="5" cols="50" required="required"
									class="form-control required" id="address" name="address"></textarea>
							</div>

						</div>

					</div>
					<br> <br> <br> <br> <br> <br>
					<div class="form-group">
						<i class="fab fa-whatsapp fa-1x" style="color: #25d366;"></i> Do
						you want to Opt-in for updates on WhatsApp?<span class="required"></span>
						<input type="radio" value="Yes" name="whatsApp"
							required="required">Yes <input type="radio" value="No"
							name="whatsApp" required="required">No
					</div>
					<div class="row">
						<div class="col-md-3">
							<i class="fab fa-whatsapp fa-1x" style="color: #25d366;"></i>
							Whatsapp Mobile Number<span class="required"></span>
						</div>
						<div class="col-md-3">
							<input type="text" class="form-control" name="whatsAppMobile"
								required="required">
						</div>
						<div class="col-md-3"></div>
					</div>

					<div class="form-group">

						<button type="submit" class="btn btn-warning">
							<i class="fas fa-location-arrow"></i>Update Profile Details
						</button>
					</div>


				</form>
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