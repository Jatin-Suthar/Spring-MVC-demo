package com.project.springdemo.mvc;

import java.util.LinkedHashMap;

public class Student {
	private String firstName;
	private String lastName;
	private String country;
	private LinkedHashMap<String, String> countryOptions;
	private String gender;
	private String favoriteLanguage;
	private String[] hobbies;
	
	public Student() {
		
		countryOptions = new LinkedHashMap<>();
		countryOptions.put("CN", "Canada");
		countryOptions.put("IN", "India");
		countryOptions.put("AU", "Australia");
		countryOptions.put("US", "United State Of America");
		countryOptions.put("RSA", "South Africa");
		countryOptions.put("NP", "Nepal");
		countryOptions.put("BR", "Brazil");
		countryOptions.put("DN", "Denmark");
		countryOptions.put("EG", "England");
		countryOptions.put("DE", "Germany");
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public LinkedHashMap<String, String> getCountryOptions() {
		return countryOptions;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getFavoriteLanguage() {
		return favoriteLanguage;
	}

	public void setFavoriteLanguage(String favoriteLanguage) {
		this.favoriteLanguage = favoriteLanguage;
	}

	public String[] getHobbies() {
		return hobbies;
	}

	public void setHobbies(String[] hobbies) {
		this.hobbies = hobbies;
	}
}
