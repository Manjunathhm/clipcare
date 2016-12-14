package com.aventyn.hms.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aventyn.hms.domain.Demo;

@Controller
@RequestMapping("/demo")
public class UserListController {
	    private List<Demo> userList = new ArrayList<Demo>();
	    @RequestMapping(value="/AddUser",method=RequestMethod.GET)
	    public String showForm(){
	        return "AddUser";
	    }
	    @RequestMapping(value="/AddUser",method=RequestMethod.POST)
	    public @ResponseBody String addUser(@ModelAttribute @RequestBody Demo user, BindingResult result){
	    	System.out.println("Controller method..."+user.getName());
	        String returnText;
	        if(!result.hasErrors()){
	           userList.add(user);
	            returnText = "User has been added to the list. Total number of users are " + userList.size();
	        }else{
	            returnText = "Sorry, an error has occur. User has not been added to list.";
	        }
	        return returnText;
	    }
	 
	    /*@RequestMapping(value = "/path-to/hosting/save", method = RequestMethod.POST)
	    public String updateHosting(@RequestBody HostingForm hostingForm) {
	        //...
	    }*/
	    @RequestMapping(value="/ShowUsers")
	    public String showUsers(ModelMap model){
	        model.addAttribute("Users", userList);
	        return "ShowUsers";
	    }

}
