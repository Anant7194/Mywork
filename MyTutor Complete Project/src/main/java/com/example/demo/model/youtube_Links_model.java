package com.example.demo.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class youtube_Links_model {
	@Id
	String yname;
	String ylink;

	public String getYname() {
		return yname;
	}
	public void setYname(String yname) {
		this.yname = yname;
	}
	public String getYlink() {
		return ylink;
	}
	public void setYlink(String ylink) {
		this.ylink = ylink;
	}

	
	
}
