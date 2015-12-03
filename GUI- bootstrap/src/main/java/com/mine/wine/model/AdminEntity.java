package com.mine.wine.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name="userDetails")
public class AdminEntity {
     
    @Id
    @Column(name="id")
    private Integer id;
     
    @NotEmpty 
    @Column(name="firstname")
    private String firstname;
 
    @NotEmpty
    @Column(name="lastname")
    private String lastname;
 
    @NotEmpty
    @Email
    @Column(name="email")
    private String email;
    
    @NotEmpty
    @Column(name="password")
    private String password;
    

    @NotEmpty
    private String password2;
    
       
	public String getPassword2() {
		return password2;
	}

	public void setPassword2(String password2) {
		this.password2 = password2;
	}
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
   
}