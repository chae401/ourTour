package com.ourtour.tourapp.user;

import java.util.List;

public interface UserDAO {
	public int insert(UserDTO user);
	
	public List<UserDTO> select();
	public int delete(String id);
	public UserDTO read(String id);
	public UserDTO login(String id, String pass);
	
	int update(UserDTO user);
}
