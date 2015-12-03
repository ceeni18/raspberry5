package com.mine.wine.model;

import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection = "User")
public class User {
	
	public String name;
 	public String email;
	public String phone;
	public String message;
	public String date1;

	public String getName() {
		return name;
	}
	public void setName(String n) {
		name = n;

	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String e) {
		
		email = e;

	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String mNo) {
		phone = mNo;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getDate1() {
		return date1;
	}
	public void setDate1(String date1) {
		this.date1 = date1;
	}
	
}
