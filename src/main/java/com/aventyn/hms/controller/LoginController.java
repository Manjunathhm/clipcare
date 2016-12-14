package com.aventyn.hms.controller;

import javax.servlet.http.HttpSession;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class LoginController {
	

	@RequestMapping(value="/dashboard", method = RequestMethod.GET)
	public String printWelcome(ModelMap model,HttpSession session) {
		System.out.println("Dashboard method of LoginController.");
		User user = (User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String name = user.getUsername();
	
		model.addAttribute("username", name);		
		session.setAttribute("username", name);
		
		System.out.println("Login controller : "+session.getAttribute("username"));
		return "dashboard";
	}
	
	@RequestMapping(value="/", method = RequestMethod.GET)
	public String login(ModelMap model) {
		System.out.println("Login Method of Login COntroller.");
		return "login";
 	}
	
	@RequestMapping(value="/loginfailed", method = RequestMethod.GET)
	public String loginerror(ModelMap model) {
 		model.addAttribute("error", "true");
		return "login";
 	}
	
	@RequestMapping(value="/logout", method = RequestMethod.GET)
	public String logout(ModelMap model) {
 		return "login";
 	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	/*@RequestMapping(value="/demo", method=RequestMethod.POST)
	public String dashboard(){
		System.out.println("Demo method of Login Controller");		
		return "demo";

	}*/
	/*@RequestMapping(value="/ddddd", method=RequestMethod.GET)
	public String login(ModelMap model){
		User user=new User();
		model.addAttribute(user);
		System.out.println("Login method.........");
		return "login";
	}
	
	
	@RequestMapping(value="/", method=RequestMethod.POST)
	public String getLoginForm(@ModelAttribute("user")User us){
		System.out.println("Login method of Login Controller");
		System.out.println("USerName :"+us.getUsername());
		return "login";

	}

	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public String getLogoutForm(){
		System.out.println("Logout method of Login Controller");
		return "logout";

	}

	@RequestMapping(value="/error", method=RequestMethod.GET)
	public String loginAgain(){
		System.out.println("error method of Login Controller");
		return "error";

	}*/
	@RequestMapping(value="/secured/test", method=RequestMethod.POST)	
	public String getData(@ModelAttribute("user")User us){
		System.out.println("Login method of Login Controller");
		System.out.println("USerName :"+us.getUsername());


		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

		System.out.println("Returned .... "+principal);   
		System.out.println("Returned object name is :: "+principal.toString());

		/*System.out.println(" ");
	        User user=null;
	        if (principal instanceof User) {
	        	System.out.println("Checking if condition.....");
	        user = ((User)principal);
	        }

	    System.out.println("Testing...");
	    String name = user.getUserName();*/
		
		/*model.addAttribute("username", "aaa");
		model.addAttribute("message", "Welcome to the secured page");*/
		return "home";

	}

	@RequestMapping(value="/secured/newUser", method=RequestMethod.GET)
	public String saveUser(){
		System.out.println("Save user method of Login Controller");
		/*User user=new User();
		model.put("userForm", user);
*/
		return "newUser";	
	}

	/*@RequestMapping(value="/secured/saveUser", method=RequestMethod.POST)
	public String userList(@ModelAttribute("userForm") User user) {

		System.out.println("UserList method of Login Controller");
		try {
			userService.saveUser(user);
		} catch (NullPointerException e) {
			System.out.println("User details could not be saved.");
			e.printStackTrace();
		}
		
		return "userList";	
	}
*/
	/*	@RequestMapping(value="/success", method=RequestMethod.POST)	
	public ModelAndView getData(@ModelAttribute("login") User login){

		String userName= login.getUserName();
		String password=login.getPassword();
		User data=new User();
		data.setPassword(password);
		data.setUserName(userName);

		System.out.println("Connected to DB");
		ModelAndView model= new ModelAndView();
		System.out.println("cmning");
		if(userName.equals("admin")&& password.equals("admin")){
			model = new ModelAndView("admin");
			model.addObject("adminMsg", "Your are admin and your login ID is"+userName +"  and Pasword is "+password);			
		}
		else if(userName.equals("user")&& password.equals("user")){
			 model = new ModelAndView("success");
			 model.addObject("userMsg", "Your are user and your login ID is"+ userName +"  and Pasword is "+password);	
		}
		else{
			model = new ModelAndView("Login");
			model.addObject("SucessMsg", "Wrong LoginId and Password");
		}
		return model;

	}*/
}