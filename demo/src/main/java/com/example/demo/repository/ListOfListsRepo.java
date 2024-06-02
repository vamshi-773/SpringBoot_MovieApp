package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.demo.Models.ListOfLists;
import com.example.demo.Models.Lists;

@Repository
public interface ListOfListsRepo extends JpaRepository<ListOfLists, Integer>{
}
