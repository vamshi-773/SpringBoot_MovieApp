package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.demo.Models.User;

@Repository
public interface UserRepo extends JpaRepository<User,Integer>{
	@Query("select u from User u where u.email = ?1 and u.password = ?2")
	public User userlogin(String email,String password);
}
