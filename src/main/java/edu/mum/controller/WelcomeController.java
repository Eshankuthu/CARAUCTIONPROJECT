package edu.mum.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import edu.mum.domain.Auction;
import edu.mum.service.AuctionService;


@Controller

public class WelcomeController {
	

	@Autowired
	AuctionService auctionService;
	
	@RequestMapping("/")
	public String welcome(Model model) {
		List<Auction> auctions = auctionService.getAllActiveAuctions();
		model.addAttribute("auctionsapproved", auctions);
		return "welcome";
		
	}

}
