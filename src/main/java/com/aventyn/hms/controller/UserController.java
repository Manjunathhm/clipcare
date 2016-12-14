package com.aventyn.hms.controller;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aventyn.hms.domain.Demo;
import com.aventyn.hms.domain.JsonResponse;

@Controller
public class UserController {

	@RequestMapping(value="/AddUser.htm",method=RequestMethod.POST)
	public @ResponseBody JsonResponse addUser(@ModelAttribute(value="demo") Demo demo, BindingResult result ){
	    JsonResponse res = new JsonResponse();
	    if(!result.hasErrors()){
	      //  userList.add(demo);
	        res.setStatus("SUCCESS");
	    }else{
	        res.setStatus("FAIL");
	    }
	   res.setResult(demo);
	   return res;
	}
}
