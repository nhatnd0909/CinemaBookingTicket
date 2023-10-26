package com.project.csm.service.adminService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.csm.model.Account;
import com.project.csm.model.Rank;
import com.project.csm.repository.RankRepository;

@Service
public class adminRankService {
	@Autowired
	private RankRepository rankRepository ; 
	
	public List<Rank> gettAllRanks(){
		return rankRepository.findAll();
	}
	public Rank getRankById(Long rankId) {
		 return rankRepository.findById(rankId).orElse(null);
	}
	
	public void createRank(Rank rank) {
		rankRepository.save(rank);
	}
	
	public void updateRank(Rank rank) {
		rankRepository.save(rank);
	}
	
	public void deleteRankById(Long RankId) {
		rankRepository.deleteById(RankId);
	}

}
