package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.demo.Models.Lists;

@Repository
public interface ListsRepo extends JpaRepository<Lists, Integer>{
	@Query("select l from Lists l where l.type = ?1")
	public Lists getListByName(String name);
}
