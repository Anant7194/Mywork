package com.example.demo.model;



import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Log_RegModel {

@Column
private String name; // column in Mysql that help you to login 

@Id
private String email; //primary key in the mysql database


private String mobile;

private Date dob;

private String pass;
 

public String getMobile() {
	return mobile;
}
public void setMobile(String mobile) {
	this.mobile = mobile;
}
public Date getDob() {
	return dob;
}
public void setDob(Date dob) {
	this.dob = dob;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPass() {
	return pass;
}
public void setPass(String pass) {
	this.pass = pass;
}
@Override
public String toString() {
	return "Log_RegModel [name=" + name + ", email=" + email + ", mobile=" + mobile + ", dob=" + dob + ", pass=" + pass
			+ "]";
}

}
