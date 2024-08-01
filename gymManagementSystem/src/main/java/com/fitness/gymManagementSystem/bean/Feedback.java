package com.fitness.gymManagementSystem.bean;

import javax.annotation.Generated;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Feedback {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String name;
	private String email;
	private String comment;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	@Override
	public String toString() {
		return "Feedback [id=" + id + ", name=" + name + ", email=" + email + ", comment=" + comment + "]";
	}
	public Feedback(int id, String name, String email, String comment) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.comment = comment;
	}
	public Feedback() {
		super();
	}
	
}
