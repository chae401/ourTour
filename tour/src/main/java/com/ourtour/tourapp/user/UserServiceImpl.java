package com.ourtour.tourapp.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	UserDAOImpl dao;
	
	@Override
	public int insert(UserDTO user) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<UserDTO> select() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int delete(String id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public UserDTO read(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public UserDTO login(String id, String pass) {
		// TODO Auto-generated method stub
		return dao.login(id, pass);
	}

	@Override
	public int update(UserDTO user) {
		// TODO Auto-generated method stub
		return 0;
	}

}
