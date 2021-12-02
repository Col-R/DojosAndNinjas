package com.cole.dojosandninjas.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cole.dojosandninjas.models.Ninja;
import com.cole.dojosandninjas.repositories.NinjaRepository;

@Service
public class NinjaService {
	@Autowired
	private NinjaRepository nRepo;
	
	public Ninja create(Ninja ninja) {
		return this.nRepo.save(ninja);
	}
}
