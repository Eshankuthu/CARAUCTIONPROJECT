package edu.mum.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.mum.domain.Property;
import edu.mum.domain.User;

@Controller
public class PropertyController {
	
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String addProperty(@ModelAttribute("newProperty") Property property, Model model) {
		// property.setOwner(currentUser);
		return "propertyForm";
	}

	
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String addProperty(@ModelAttribute("newProperty") Property property, Model model, User currentUser) {
		// property.setOwner(currentUser);
		return "propertyForm";
	}

}
