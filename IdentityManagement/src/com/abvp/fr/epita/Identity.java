package com.abvp.fr.epita;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

public class Identity {
	
	@Entity
	@Table(name="IDENTITIES")
	public class Identity {
		
		@Id
		@GeneratedValue(strategy=GenerationType.AUTO)
		private int id;
		
		@Column(name="IDENTITY_FIRSTNAME")
		private String firstName;

}}
