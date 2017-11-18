package edu.mum.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import edu.mum.domain.Auction;
import edu.mum.domain.Property;
import edu.mum.service.AuctionService;
import edu.mum.service.PropertyService;


@Controller
@SessionAttributes("addedProperty")
public class AuctionController {

	@Autowired
	AuctionService auctionService;

	@Autowired
	PropertyService propertyService;

	


	@RequestMapping(value = "/auction/add/{propertyId}", method = RequestMethod.GET)
	public String addAuction(@ModelAttribute("newAuction") Auction auction, @PathVariable("propertyId") Long propertyId,
			Model model) {
		// model.addAttribute("property", propertyService.getOneProperty());
		// Property property =propertyService.getOneProperty();
		Property property = propertyService.getProperty(propertyId);
		auctionService.setAuctionPreassumptions(auction, property);
		model.addAttribute("addedProperty", property);
		return "auctionForm";
	}

	
	@RequestMapping(value = "/auction/add", method = RequestMethod.POST)
	public String processAuction(@Valid @ModelAttribute("newAuction") Auction auction, BindingResult result,
			ModelMap map) {

		//auction.setProperty((Property) map.get("addedProperty"));

//		AuctionValidator auctionValidator = new AuctionValidator();
//		auctionValidator.validate(auction, result);

		if (result.hasErrors())
			return "auctionForm";

		auctionService.addAuction(auction);
		return "redirect:/";

	}

	
	

}
