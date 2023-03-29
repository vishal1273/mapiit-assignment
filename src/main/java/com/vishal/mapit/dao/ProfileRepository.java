package com.vishal.mapit.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.vishal.mapit.model.User;

public interface ProfileRepository extends JpaRepository<User, Integer> {

}
