package com.mcarthur.dojoandninjas.services;

import com.mcarthur.dojoandninjas.repositories.NinjaRepository;

public class NinjaService {
	private NinjaRepository ninjaRepo;
	public NinjaService(NinjaRepository ninjaRepo) {
		this.ninjaRepo = ninjaRepo;
	}
	
}
