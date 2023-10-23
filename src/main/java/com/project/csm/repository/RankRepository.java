package com.project.csm.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.csm.model.Rank;

@Repository
public interface RankRepository extends JpaRepository<Rank, Long>{

}
