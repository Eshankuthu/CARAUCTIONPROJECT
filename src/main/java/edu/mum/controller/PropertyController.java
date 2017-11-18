package edu.mum.controller;

import java.io.File;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import edu.mum.domain.Property;
import edu.mum.exception.ImageException;
import edu.mum.service.PropertyService;



@Controller
@RequestMapping("property")
@SessionAttributes("addedProperty")
public class PropertyController {
	
	@Autowired
	ServletContext servletContext;
	
	@Autowired
	PropertyService propertyService;
	
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String addProperty(@ModelAttribute("newProperty") Property property, Model model) {
	
		return "propertyForm";
	}

	@RequestMapping(value = "/add/{id}", method = RequestMethod.GET)
	public String addProperty(@PathVariable("id") Long id, Model model,
			@ModelAttribute("newProperty") Property property) {
		property = propertyService.getProperty(id);
		model.addAttribute("newProperty", property);
		return "propertyForm";
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String addProperty(@Valid @ModelAttribute("newProperty") Property property,BindingResult result,
			Model model, HttpServletRequest request, RedirectAttributes redirectAttributes ) {
		

		
		if (result.hasErrors()) {
			return "propertyForm";
		}
		
		MultipartFile image = property.getImage();
		
		String rootDirectory = servletContext.getRealPath("/");
		
//		String imagePath = rootDirectory + "\\resources\\images\\" + property.getModel() + ".png";
		
		if (image != null && !image.isEmpty()) {

			try {
				
				image.transferTo(new File(rootDirectory + "\\resources\\images\\" + property.getId()+ ".png"));
//				byte[] bytes=image.getBytes();
//
//				File serverFile = new File(imagePath);
//				BufferedOutputStream stream = new BufferedOutputStream(
//	                    new FileOutputStream(serverFile));
//	            stream.write(bytes);
//	            stream.close();

			} catch (Exception e) {

				throw new ImageException("Saving Property image was not successful", e);
			}
		}
		
		property.setImagePath(servletContext.getContextPath() + "/resources/images/" + property.getId()+ ".png");
		 propertyService.addProperty(property);
		 return "redirect:/property/add/" + property.getId();

	}

	
	@RequestMapping(value = "/futureAuctions", method = RequestMethod.GET)
	public String futureAuctionList(Model model) {
		List<Property> list = propertyService.getAllProperty();
		model.addAttribute("properties", list);
		return "futureAuctions";
	}
}
