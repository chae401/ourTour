package com.ourtour.tourapp.user;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
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
		
		
		String sql = "insert into user values(?, ?, ?, ?, ?, ?, ?, ?)";
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		String currentDate = LocalDateTime.now().format(formatter);
		return template.update(sql, user.getId(), user.getPass(), user.getName(), 
				currentDate, user.getGender(),user.getEmail(), user.getUsertel(), 
		                       user.getUserimgaddr());

	}

	@Override
	public List<UserDTO> select() {
		return null;
	}
	
	@Override
	public int delete(String id) {
		return 0;
	}

	@Override
	public UserDTO read(String id) {
		return null;
	}

	@Override
	public UserDTO login(String id, String pass) {
		UserDTO user = null;
		try {
			user = template.queryForObject("select * from user where userId=? and pass=?",
					new Object[] {id, pass}, new UserRowMapper());
		}catch(EmptyResultDataAccessException e) {
			
		}
		return user;
	}

	@Override
	public int update(UserDTO user) {
		String sql = "update user set name=?,email=?,usertel=?,gender=? where userId=?";
		System.out.println("DAO===dsfsfsdfsdfsdff>"+user+","+user.getId()+","+user.getId().length());
		return template.update(sql, user.getName(),user.getEmail(),user.getUsertel(),user.getGender(),user.getId());
	
		}
	public int passwordchange(UserDTO user) {
		String sql = "update user set pass=? where userId=?";
		System.out.println("DAO===dsfsfsdfsdfsdff>"+user+","+user.getId()+","+user.getId().length());
		return template.update(sql, user.getPass(),user.getId());
		}
	}


