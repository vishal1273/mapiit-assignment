package com.vishal.mapit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.vishal.mapit.model.User;
import com.vishal.mapit.service.ProfileService;

import jakarta.validation.Valid;

@Controller
public class ProfileController {

	private ProfileService profileService;

	public ProfileController(ProfileService profileService) {
		super();
		this.profileService = profileService;
	}

	// mapping with this method will return profile page with basic HTML validation
	@GetMapping("/htmlForm")
	public String showProfile(Model model) {
		User user = new User();
		model.addAttribute("user", user);
		return "profile";
	}

	@GetMapping("/")
	public String showHome(Model model) {

		return "index";
	}

	// mapping with this method will return profile page create with Spring Form
	// tags
	@GetMapping("/springForm")
	public String showSpringForm(Model model) {
		User user = new User();
		model.addAttribute("user", user);
		return "profile2";
	}

	// mapping with this method will bind request parameters and generate response
	@PostMapping("/processProfile")
	public String processProfile(Model model, @ModelAttribute("user") User user) {
		return "success";
	}

	// mapping with this method will bind request parameters and generate response
	// depends on errors.
	@PostMapping("/processProfile2")
	public String processSpringForm(@Valid @ModelAttribute("user") User user, BindingResult bindingResult) {

		if (bindingResult.hasErrors())
			return "profile2";
		else
		{
			profileService.saveUser(user);
			return "success";
		}
	}

}
