package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.demo.Models.Movies;

@Repository
public interface MoviesRepo extends JpaRepository<Movies, Integer> {

    @Query("select m from Movies m where m.mid = ?1")
    Movies findMoviesById(int mid);
}
