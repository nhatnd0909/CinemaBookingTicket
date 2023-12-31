package com.project.csm.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.csm.model.Show;

@Repository
public interface ShowRepository extends JpaRepository<Show, Long> {
}
