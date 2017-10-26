package com.mcarthur.dojoandninjas.models;

import javax.persistence.*;
import javax.validation.constraints.Size;

@Entity
public class Dojo {
	
	@Id
	@GeneratedValue
	private Long id;
	
	@Column
	@Size(min = 1, max = 20)
	private String name;
	
	
	

}
