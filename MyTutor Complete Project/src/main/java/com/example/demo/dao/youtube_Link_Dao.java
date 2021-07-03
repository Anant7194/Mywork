package com.example.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.model.youtube_Links_model;

public interface youtube_Link_Dao extends JpaRepository<youtube_Links_model, String>{

	youtube_Links_model findByYname(String yname);
}
