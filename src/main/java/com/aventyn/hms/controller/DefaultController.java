package com.aventyn.hms.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.aventyn.hms.domain.Person;
import com.aventyn.hms.domain.PersonListContainer;

@Controller
@RequestMapping(value="/demo")
public class DefaultController {

	@RequestMapping("/duplicate")
    public String index(
            ModelMap map, 
            HttpSession session, 
            HttpServletRequest request, 
            @RequestParam(value="f", required=false) String flush,
            @RequestParam(value="message", required=false) String message ) {
 
		System.out.println("Loading the form of Index method...");
        if( flush != null )
            session.setAttribute("personListContainer", getDummyPersonListContainer());
        if( session.getAttribute("personListContainer") == null )
            session.setAttribute("personListContainer", getDummyPersonListContainer());
        map.addAttribute("personListContainer", (PersonListContainer)session.getAttribute("personListContainer"));
        if( message != null )
            map.addAttribute("message", message);
        map.addAttribute("cp", request.getContextPath());
 
        return "duplicate";
    }
 
    @RequestMapping(value="/editpersonlistcontainer", method= RequestMethod.POST)
    public String editpersonListContainer(@ModelAttribute PersonListContainer personListContainer, HttpSession session) {
        for( Person p : personListContainer.getPersonList() ) {
            System.out.println("Name: " + p.getName());
            //System.out.println("Age: " + p.getAge());
        }
        session.setAttribute("personListContainer",personListContainer);
        return "redirect:/?message=Form Submitted Ok. Number of rows is: ["+personListContainer.getPersonList().size()+"]";
    }
 
    private PersonListContainer getDummyPersonListContainer() {
        List<Person> personList = new ArrayList<Person>();
        for( int i=0; i<5; i++ ) {
            personList.add( new Person("Person Name [" + i + "]", String.valueOf(i)) );
        }
        return new PersonListContainer(personList);
    }
    
    @RequestMapping(value="/success")
    public String success(@ModelAttribute PersonListContainer list, HttpSession session){
    	System.out.println("Success Page: "+list);
    	
    	return "dashboard";
    }
}
