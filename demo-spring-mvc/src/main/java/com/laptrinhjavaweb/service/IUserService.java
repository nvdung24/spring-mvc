package com.laptrinhjavaweb.service;

import java.util.List;

import com.laptrinhjavaweb.model.UserModel;

public interface IUserService {
	UserModel findByUserNameAndPasswordAndStatus(String userName, String password, Integer status);
	
	List<UserModel> findAll();
}
