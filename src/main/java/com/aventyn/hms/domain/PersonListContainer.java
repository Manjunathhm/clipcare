package com.aventyn.hms.domain;

import java.util.LinkedList;
import java.util.List;

public class PersonListContainer {
	
	private List<Person> personList = new LinkedList<Person>();
	 
    public PersonListContainer() {
    }
 
    public PersonListContainer(List<Person> personList) {
        this.personList = personList;
    }
 
    public List<Person> getPersonList() {
        return personList;
    }
 
    public void setPersonList(List<Person> personList) {
        this.personList = personList;
    }
}
