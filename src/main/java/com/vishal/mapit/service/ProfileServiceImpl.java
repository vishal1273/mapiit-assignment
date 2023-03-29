package com.vishal.mapit.service;

import org.springframework.stereotype.Service;

import com.vishal.mapit.dao.ProfileRepository;
import com.vishal.mapit.model.User;

@Service
public class ProfileServiceImpl implements ProfileService {

	private ProfileRepository profileRepository;

	public ProfileServiceImpl(ProfileRepository profileRepository) {
		super();
		this.profileRepository = profileRepository;
	}

	@Override
	public void saveUser(User user) {
		profileRepository.save(user);

	}

}
