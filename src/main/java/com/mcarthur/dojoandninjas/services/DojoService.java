package com.mcarthur.dojoandninjas.services;

import com.mcarthur.dojoandninjas.models.Dojo;
import com.mcarthur.dojoandninjas.repositories.DojoRepository;

public class DojoService {
	private DojoRepository dojoRepo;
	public DojoService(DojoRepository dojoRepo) {
		this.dojoRepo = dojoRepo;
	}
	
	public Iterable<Dojo> allDojos() {
		return dojoRepo.findAll();
	}
	
	public void addDojo(Dojo dojo) {
		dojoRepo.save(dojo);
	}
	
	public Dojo findById(Long id) {
		return dojoRepo.findOne(id);
	}
	
	public void destroyDojo(Long id) {
		dojoRepo.delete(id);
	}
	
}
