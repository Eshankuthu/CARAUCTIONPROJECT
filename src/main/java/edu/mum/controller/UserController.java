package edu.mum.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import edu.mum.domain.User;
import edu.mum.service.UserService;



@Controller
public class UserController {
	
	
	@Autowired
	UserService userService;
	
	
	
	@ModelAttribute("users")
    List<User> addUserList(Model model) {
            	
      return  userService.getAllUsers();
    
    }
	
	@RequestMapping(value="/addUser", method=RequestMethod.GET)
	public String addUserForm(@ModelAttribute("newUser") User newUserTobeAdded){
		return "RegistrationForm";
	}
	
	@RequestMapping(value="/addUser", method=RequestMethod.POST)
	public String saveUser(@ModelAttribute("newUser") @Valid  User user,BindingResult result,  Model model, RedirectAttributes redirectAttribute){
		
		if(result.hasErrors()){
			return "RegistrationForm";}
		
		userService.saveUser(user);
		
		//model.addAttribute(user);
		redirectAttribute.addFlashAttribute(user);
		return "redirect:/success";
			
	}
	
	
	@RequestMapping(value="/success", method=RequestMethod.GET)
	public String successRegister(Model model){
		
		return "successfulRegistration";
		
		
	}
	
	
	
	@RequestMapping(value="/admin/users", method=RequestMethod.GET)
	public String userList(Model model){
		
		return "UsersList";
		
		
	}
	@RequestMapping(value = "/approve/{userId}", method = RequestMethod.GET)
	public String approveAuction(@PathVariable("userId") Long userId, Model model) {
		userService.approveUser(userId);
		return "redirect:/admin/users/";
	}

	@RequestMapping(value = "/decline/{userId}", method = RequestMethod.GET)
	public String rejectUser(@PathVariable("userId") Long userId, Model model) {

		userService.deleteUser(userId);
		return "redirect:/admin/users";

	}
	@RequestMapping(value = "/contactUs", method = RequestMethod.GET)
	public String contactUs(Model model) {
	   return "contactUs";
	}
	
	
}
