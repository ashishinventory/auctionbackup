package com.navprayas.bidding.auction.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.navprayas.bidding.auction.entity.AuctionEntity;
import com.navprayas.bidding.auction.service.AuctionService;

@RequestMapping("/auction/**")
@Controller
public class CreateAuction {
	@Autowired
	AuctionService auctionService;

	@RequestMapping("/createnewauction")
	public String getAdminHome(ModelMap modelMap,
			HttpServletRequest httpServletRequest) {
		return "auction/createnewauction";
	}

	@RequestMapping(value = "/createAuction", method = RequestMethod.POST)
	public String createAuction(@ModelAttribute("modelAt") AuctionEntity auction)
	{
		String createdTimeFormat=auction.getCreatedTimeFormat();
		SimpleDateFormat sd = new SimpleDateFormat("yyyy-MM-dd");
		Date createdTime = null;
		try
		{
			createdTime = sd.parse(createdTimeFormat);
		}
		catch (ParseException e)
		{
			e.printStackTrace();
		}
		auction.setCreatedTime(createdTime);
		
		
		String lastUpdateTimeFormat=auction.getLastUpdateTimeFormat();
		
		Date lastUpdateTime = null;
		try
		{
			lastUpdateTime = sd.parse(lastUpdateTimeFormat);
		}
		catch (ParseException e)
		{
			e.printStackTrace();
		}
		auction.setLastUpdateTime(lastUpdateTime);
		
		
		
		String auctionStartTimeFormat=auction.getAuctionStartTimeFormat();
		Date auctionStartTime = null;
		try
		{
			auctionStartTime = sd.parse(auctionStartTimeFormat);
		}
		catch (ParseException e)
		{
			e.printStackTrace();
		}
		auction.setAuctionStartTime(auctionStartTime);
		
		
		String auctionEndTimeFormat=auction.getAuctionEndTimeFormat();
		Date auctionEndTime = null;
		try
		{
			auctionEndTime = sd.parse(auctionEndTimeFormat);
		}
		catch (ParseException e)
		{
			e.printStackTrace();
		}
		auction.setAuctionEndTime(auctionEndTime);
		
		
		
		auctionService.saveData(auction);
		return "auction/createnewauction";
	}
}
