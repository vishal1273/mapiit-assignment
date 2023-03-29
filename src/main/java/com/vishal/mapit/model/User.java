package com.vishal.mapit.model;

import java.util.HashMap;
import java.util.Map;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Transient;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
@Entity
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String firstName;
	private String middleName;
	private String lastName;
	@NotBlank
	@Size(max = 10)
	private String mobile;
	private String dob;
	@Email(message = "Please enter a valid e-mail address")
	private String email;
	private String castCategory;
	private String speciallyAbled;
	private String kindDisability;
	@NotBlank
	private String state;
	@NotBlank
	private String district;
	@NotBlank
	private String address;
	private String city;
	@NotBlank
	private String whatsApp;
	@NotBlank
	@Size(min = 5, max = 6)
	private String pincode;
	private String whatsAppMobile;

	// this map is required for populating states drop-down list from Java Bean
	// ;only getter is required.
	@Transient
	private Map<String, String> states;

	// this map is required for populating district drop-down list from Java Bean
	// ;only getter is required.
	@Transient
	private Map<String, String> districts;

	public String getFirstName() {
		return firstName;
	}

	public Map<String, String> getDistricts() {
		return districts;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getMiddleName() {
		return middleName;
	}

	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCastCategory() {
		return castCategory;
	}

	public void setCastCategory(String castCategory) {
		this.castCategory = castCategory;
	}

	public String getSpeciallyAbled() {
		return speciallyAbled;
	}

	public void setSpeciallyAbled(String speciallyAbled) {
		this.speciallyAbled = speciallyAbled;
	}

	public String getKindDisability() {
		return kindDisability;
	}

	public void setKindDisability(String kindDisability) {
		this.kindDisability = kindDisability;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getDistrict() {
		return district;
	}

	public void setDistrict(String district) {
		this.district = district;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getWhatsApp() {
		return whatsApp;
	}

	public void setWhatsApp(String whatsApp) {
		this.whatsApp = whatsApp;
	}

	public String getPincode() {
		return pincode;
	}

	public void setPincode(String pincode) {
		this.pincode = pincode;
	}

	public String getWhatsAppMobile() {
		return whatsAppMobile;
	}

	public void setWhatsAppMobile(String whatsAppMobile) {
		this.whatsAppMobile = whatsAppMobile;
	}

	public User(String firstName, String middleName, String lastName, String mobile, String dob, String email,
			String castCategory, String speciallyAbled, String kindDisability, String state, String district,
			String address, String city, String whatsApp, String pincode, String whatsAppMobile) {
		super();
		this.firstName = firstName;
		this.middleName = middleName;
		this.lastName = lastName;
		this.mobile = mobile;
		this.dob = dob;
		this.email = email;
		this.castCategory = castCategory;
		this.speciallyAbled = speciallyAbled;
		this.kindDisability = kindDisability;
		this.state = state;
		this.district = district;
		this.address = address;
		this.city = city;
		this.whatsApp = whatsApp;
		this.pincode = pincode;
		this.whatsAppMobile = whatsAppMobile;
	}

	public User() {
		super();
		states = new HashMap<String, String>();
		states.put("Madhypradesh", "Madhypradesh");
		states.put("Maharastra", "Maharastra");
		states.put("Gujrat", "Gujrat");
		states.put("Rajasthan", "Rajasthan");

		districts = new HashMap<String, String>();
		districts.put("Bhopal", "Bhopal");
		districts.put("Khandwa", "Khandwa");
		districts.put("Indore", "Indore");
		districts.put("Damoha", "Damoha");

	}

	public Map<String, String> getStates() {
		return states;
	}

}
