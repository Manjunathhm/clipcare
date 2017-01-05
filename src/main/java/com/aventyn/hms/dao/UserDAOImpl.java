package com.aventyn.hms.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.GrantedAuthorityImpl;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Repository;
import org.springframework.security.core.userdetails.UserDetailsService;

import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;

@Repository
public class UserDAOImpl implements UserDetailsService {

	@Autowired	
	MongoTemplate mongoTemplate;

	@SuppressWarnings("deprecation")
    public User loadUserByUsername(String username)
            throws UsernameNotFoundException, DataAccessException
    {
        System.out.println("Getting access details from employee dao !!");
  
        DBCollection coll=mongoTemplate.getCollection("user");
		DBCursor cursor=coll.find();
		org.springframework.security.core.userdetails.User loginUser=null;
		while(cursor.hasNext()){
			DBObject obj= cursor.next();
			com.aventyn.hms.domain.User dbUser=(com.aventyn.hms.domain.User) mongoTemplate.getConverter().read(com.aventyn.hms.domain.User.class, obj);
			System.out.println("UserName from DB : "+dbUser.getUsername());
			System.out.println("Password from DB : "+dbUser.getPassword());
			
			User u=null;
			Object principal= SecurityContextHolder.getContext().getAuthentication().getPrincipal();
			System.out.println("PRINCI: "+principal);
			if(principal instanceof User){
				u=(User)principal;
			System.out.println("Login USER: "+u);
			//System.out.println("Login Username: "+loginUser.getUsername());
			//System.out.println("Login Password: "+loginUser.getPassword());
			}
			
			if(dbUser.getUsername().equals(loginUser.getUsername()) && dbUser.getPassword().equals(loginUser.getPassword())){
				
				//found=true;
				List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
				if(dbUser.getRole().equals("ROLE_USER")){
				
		        authorities.add(new GrantedAuthorityImpl("ROLE_USER"));
				}
				else{
					authorities.add(new GrantedAuthorityImpl("ROLE_ADMIN"));
				}
			}
		}
			
		return loginUser;

    }
}

			/*
			
			if(dbUser.getUsername().equalsIgnoreCase(username) && dbUser.getPassword()){
				user=dbUser;
				System.out.println("valid user");
				found=true;
				List<Role> roles = new ArrayList<Role>();
				Role r = new Role();
				r.setName("ROLE_USER");
				roles.add(r);
				user.setAuthorities(roles);
			}*/


       /* List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
        authorities.add(new GrantedAuthorityImpl("ROLE_USER"));
       UserDetails user=new User(username, "password", true, true, true, true, authorities);
        return (User) user;*/
   
	/*public UserDetails loadUserByUsername(final String username) {

		System.out.println("User DAOImpl class....");
		UserDetails user = new User(username, "password", true, true, true, true, new GrantedAuthority[]{ new GrantedAuthorityImpl("ROLE_USER") });
		
		//Write your DB call code to get the user details from DB,But I am just hard coding the user

		DBCollection coll=mongoTemplate.getCollection("user");
		DBCursor cursor=coll.find();
		User user=null;
		boolean found=false;
		while(cursor.hasNext()){
			DBObject obj= cursor.next();
			System.out.println("DBObject ::"+obj);
			User dbUser= mongoTemplate.getConverter().read(User.class, obj);
			System.out.println("USer from converter ::"+dbUser);
			System.out.println("usernames are ::"+dbUser.getPassword());
			if(dbUser.getPassword().equalsIgnoreCase(username)){
				user=dbUser;
				System.out.println("valid user");
				found=true;
				List<Role> roles = new ArrayList<Role>();
				Role r = new Role();
				r.setName("ROLE_USER");
				roles.add(r);
				user.setAuthorities(roles);
			}

		}
		return found;
	}*/

/*public WriteResult saveUser(User user) throws NullPointerException{

DBCollection coll=mongoTemplate.getCollection("user");

List<Role> authorities=new ArrayList<Role>();
Role role=new Role();
role.setName("ROLE_USER");
user.setAuthorities(authorities);;

BasicDBObject document = new BasicDBObject();
document.put("username", user.getUsername());
document.put("password", user.getPassword());
document.put("accountNonExpired", user.isAccountNonExpired());
document.put("accountNonLocked", user.isAccountNonLocked());
document.put("credentialsNonExpired", user.isCredentialsNonExpired());
document.put("enabled", user.isEnabled());


WriteResult wr=coll.insert(document);

return wr;


}*/
