package com.ourtour.tourapp.user;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;


public class UserRowMapper implements RowMapper<UserDTO>{
	@Override 
	public UserDTO mapRow(ResultSet rs, int rowNum) throws SQLException { 
		System.out.println("maprow=>"+rowNum); 		
		//���ڵ� ������ŭ mapRow�� ȣ�� 		
		
		//���ڵ� �ϳ��� dto�� ������ �� ���� 		
		UserDTO user = new UserDTO(rs.getString(1),rs.getString(2), rs.getString(3),rs.getString(4), rs.getString(5), rs.getString(6),rs.getString(7),rs.getString(8)); 		
		return user;
	}
}
