package edu.mum.serviceimpl;

import java.util.Calendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.mum.domain.Auction;
import edu.mum.domain.AuctionStatus;
import edu.mum.domain.Property;
import edu.mum.repository.AuctionRepository;
import edu.mum.service.AuctionService;



@Service
@Transactional
public class AuctionServiceImpl implements AuctionService {

	@Autowired
	private AuctionRepository auctionRepository;

	public List<Auction> getAllAuction() {
		return (List<Auction>) auctionRepository.findAll();
	}

	@PreAuthorize("hasRole('ROLE_USER')")
	public void addAuction(Auction auction) {
		auction.setCurrentBidAmount(auction.getMinBidAmount());
		auction.setStatus(AuctionStatus.PENDING);
		auctionRepository.save(auction);
	}

	// Setting pre assumptions for Auction so that seller would not have a lot
	// to fill. Entire Business Logic only which can be changed according to
	// requirement
	public void setAuctionPreassumptions(Auction auction, Property property) {

		auction.setProperty(property);
		auction.setMinBidAmount(property.getExpectedPrice());

		Calendar now = Calendar.getInstance();
		now.set(Calendar.HOUR_OF_DAY, 9);
		now.set(Calendar.MINUTE, 00);
		now.set(Calendar.SECOND, 00);
		now.add(Calendar.DAY_OF_MONTH, 7);

		auction.setStartDate(now.getTime());
		now.add(Calendar.DAY_OF_MONTH, 7);
		now.set(Calendar.HOUR_OF_DAY, 17);

		auction.setEndDate(now.getTime());
	}

	@Override
	@PreAuthorize("hasRole('ROLE_ADMIN')")
	public Auction approveAuction(Long auctionId) {

		Auction auction = auctionRepository.findOne(auctionId);
		auction.setStatus(AuctionStatus.APPROVED);
		return auctionRepository.save(auction);
	}
	
	@Override
	@PreAuthorize("hasRole('ROLE_ADMIN')")
	public Auction approveAuction(Auction auction) {

		auction.setStatus(AuctionStatus.APPROVED);
		return auctionRepository.save(auction);
	}

	@Override
	@PreAuthorize("hasRole('ROLE_ADMIN')")
	public Auction rejectAuction(Long auctionId) {
		Auction auction = auctionRepository.findOne(auctionId);
		auction.setStatus(AuctionStatus.CANCELLED);
		return auctionRepository.save(auction);

	}
	@Override
	@PreAuthorize("hasRole('ROLE_ADMIN')")
	public Auction completeAuction(Long auctionId) {
		Auction auction = auctionRepository.findOne(auctionId);
		auction.setStatus(AuctionStatus.COMPLETED);
		return auctionRepository.save(auction);

	}
	@Override
	public List<Auction> getAllPendingAuctions() {

		return auctionRepository.findByStatus(AuctionStatus.PENDING);
	}

	@Override
	public List<Auction> getAllActiveAuctions() {

		return auctionRepository.findByStatus(AuctionStatus.ACTIVE);
	}

	@Override
	public List<Auction> getAllFutureAuctions() {

		return auctionRepository.findByStatus(AuctionStatus.APPROVED);
	}

	@Override
	public Auction getAuction(Long auctionId) {

		return auctionRepository.findOne(auctionId);
	}

	// @Scheduled(cron = "0 0 0/1 * * ?")
	// public void UpdateAuctionStatus() {
	// auctionRepository.activateAuctionStatus();
	// auctionRepository.completeAuctionStatus();
	//
	// }
	
	

}
