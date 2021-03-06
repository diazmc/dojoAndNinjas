package com.mcarthur.dojoandninjas.services;

import org.springframework.stereotype.Service;

import com.mcarthur.dojoandninjas.models.Ninja;
import com.mcarthur.dojoandninjas.repositories.NinjaRepository;

@Service
public class NinjaService {
	private NinjaRepository ninjaRepo;
	public NinjaService(NinjaRepository ninjaRepo) {
		this.ninjaRepo = ninjaRepo;
	}
	
	public Iterable<Ninja> allNinjas() {
		return ninjaRepo.findAll();
	}
	
	public void addNinja(Ninja ninja) {
		ninjaRepo.save(ninja);
	}
	
	public Ninja findById(Long id) {
		return ninjaRepo.findOne(id);
	}
	
	public void destroyNinja(Ninja ninja) {
		ninjaRepo.delete(ninja);
	}
	
	public void updateNinja(Long id, Ninja ninja) {
		ninjaRepo.save(ninja);
	}
}
