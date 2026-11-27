package com.example.campeonato.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.campeonato.model.Time;

public interface TimeRepository extends JpaRepository<Time, Integer> {

}