package com.app.kaka.auction.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.kaka.buyer.model.BuyerVO;
import com.app.kaka.car.model.CarVO;
import com.app.kaka.common.SearchVO;

@Service
public class AuctionServiceImpl implements AuctionService{
	private final Logger logger = LoggerFactory.getLogger(AuctionServiceImpl.class);
	
	@Autowired
	private AuctionDAO auctionDao;
	
	@Resource(name="fileUploadProperties")
	private Properties fileUploadProperties;
	
	@Override
	public List<CarVO> carlist() {
		return auctionDao.carlist();
	}

	@Override
	public AuctionCarVO auctionCar(String carNum) {
		return auctionDao.auctionCar(carNum);
	}

	@Override
	public int insertAuction(AuctionVO vo) {
		return auctionDao.insertAuction(vo);
	}

	@Override
	public int updateAuctionYn(AuctionVO vo) {
		return auctionDao.updateAuctionYn(vo);
	}

	@Override
	public int selectTotalCount(SearchVO vo) {
		return auctionDao.selectTotalCount(vo);
	}

	@Override
	public List<AuctionCarVO> selectAll(SearchVO vo) {
		return auctionDao.selectAll(vo);
	}

	@Override
	public int updateAuction(int auctionNo) {
		return auctionDao.updateAuction(auctionNo);
	}

	@Override
	public CarVO selectByCarNum(String carNum) {
		return auctionDao.selectByCarNum(carNum);
	}

	@Override
	public AuctionCarVO selectAuction(int auctionNo) {
		return auctionDao.selectAuction(auctionNo);
	}

	@Override
	public int auctionDenyCar(String carNum) {
		return auctionDao.auctionDenyCar(carNum);
	}

	@Override
	public int auctionDeferCar(String carNum) {
		return auctionDao.auctionDeferCar(carNum);
	}

	@Override
	public Map<String, Object> selectAuctionGo(int auctionNo) {
		return auctionDao.selectAuctionGo(auctionNo);
	}

	@Override
	public HighPriceVO selectHighPrice() {
		return auctionDao.selectHighPrice();
	}

	@Override
	public int insertAuctionRecord(Map<Object, Object> auctionmap) {
		HighPriceVO highVo = auctionDao.selectHighPrice();
		logger.info("highVo 키 값이 궁금해서 찍어보는 highVo={}",highVo);
		int recordPrice=Integer.parseInt((String)auctionmap.get("recordPrice"));
		int cnt = 0;
		if(highVo!=null){
			if(!highVo.getBuyerMemberId().equals(auctionmap.get("buyerMemberId"))){
				int newPrice = highVo.getRecordPrice()+recordPrice;
				auctionmap.put("recordPrice", newPrice);
				cnt = auctionDao.insertAuctionRecord(auctionmap);
			}
		}
		logger.info("highVo 키 값이 궁금해서 찍어보는 highVo={}",highVo);
		logger.info("응찰 결과 cnt={}",cnt);
		
		return cnt;
	}

	@Override
	public String selectMemberGrade(String sellerMemberId) {
		return auctionDao.selectMemberGrade(sellerMemberId);
	}

	@Override
	public int insertByuer(BuyerVO buyerVo) {
		return auctionDao.insertByuer(buyerVo);
	}

	@Override
	public List<BuyerVO> selectBuyer() {
		return auctionDao.selectBuyer();
	}

	

	
}
