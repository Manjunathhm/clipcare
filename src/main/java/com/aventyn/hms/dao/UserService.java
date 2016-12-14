package com.aventyn.hms.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;


@Service
public class UserService {

@Autowired
UserDAOImpl userDAO;


public  User loadUserByUsername(String username) throws UsernameNotFoundException {
 
	return userDAO.loadUserByUsername(username);
}

/*public WriteResult saveUser(User user) throws NullPointerException{
	
	return userDao.saveUser(user);
}*/

}
