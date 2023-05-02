package com.ourtour.tourapp.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class UserDAOImpl implements UserDAO {
	@Autowired
	JdbcTemplate template;
	
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
		UserDTO user = null;
		try {
			user = template.queryForObject("select * from user where id=? and pass=?",
					new Object[] {id, pass}, new UserRowMapper());
		}catch(EmptyResultDataAccessException e) {
			
		}
		return user;
	}

	@Override
	public int update(UserDTO user) {
		// TODO Auto-generated method stub
		return 0;
	}

}
