package com.example.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.model.Log_RegModel;



public interface Log_Reg_dao extends JpaRepository<Log_RegModel,String> 
{

Log_RegModel findByName(String name);
Log_RegModel findByEmail(String email);

}
