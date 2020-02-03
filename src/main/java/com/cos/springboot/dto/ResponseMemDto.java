package com.cos.springboot.dto;

import java.sql.Timestamp;

import com.cos.springboot.model.Mem;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter


public class ResponseMemDto extends ResponseCM{
	
	private int id;
	private String username;
	private String password;
	private String email;
	private Timestamp createDate;
	
	public void setDto(Mem mem) {
		id = mem.getId();
		username = mem.getUsername();
		password = mem.getPassword();
		email = mem.getEmail();
		createDate = mem.getCreateDate();
	}

}
