package com.example.demo.Models;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class ListOfLists {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int Lid;
	
	private String name;
	
	public int getLid() {
		return Lid;
	}

	public void setLid(int lid) {
		Lid = lid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	private String listIds;	
	
	public int getLId() {
		return Lid;
	}

	public void setLId(int id) {
		this.Lid = id;
	}

	public String getListIds() {
		return listIds;
	}

	public void setListIds(String listId) {
		this.listIds = listId;
	}

}
