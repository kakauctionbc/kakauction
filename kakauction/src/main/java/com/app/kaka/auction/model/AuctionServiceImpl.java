package com.app.kaka.auction.model;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.app.kaka.buyer.model.BuyerVO;
import com.app.kaka.car.model.CarVO;
import com.app.kaka.common.DateSearchVO;
import com.app.kaka.common.SearchVO;
import com.app.kaka.record.model.RecordVO;

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
	public List<AuctionCarVO> selectAucList(SearchVO vo) {
		return auctionDao.selectAucList(vo);
	}
	
	@Override
	public int selectListCount(SearchVO vo) {
		return auctionDao.selectListCount(vo);
	}

	//경매 리스트 종료된 건 보이지 않음
	@Override
	public int selectTotalCount(SearchVO vo) {
		return auctionDao.selectTotalCount(vo);
	}

	@Override
	public int selectTodayCount(SearchVO vo) {
		return auctionDao.selectTodayCount(vo);
	}

	@Override
	public List<AuctionCarVO> selectTodayList(SearchVO vo) {
		return auctionDao.selectTodayList(vo);
	}

	
	@Override
	public int updateAuctionState(AuctionVO vo) {
		return auctionDao.updateAuctionState(vo);
	}
	
	@Override
	public int updateAuction(int auctionNo) {
		return auctionDao.updateAuction(auctionNo);
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
	public HighPriceVO selectHighPrice(int auctionNo) {
		return auctionDao.selectHighPrice(auctionNo);
	}

	@Override
	public int insertAuctionRecord(Map<Object, Object> auctionmap) {
		return auctionDao.insertAuctionRecord(auctionmap);
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
	public int selectBuyerByIdNo(BuyerVO buyerVo){
		return auctionDao.selectBuyerByIdNo(buyerVo);
	}

	@Override
	public int selectHighPriceCount(int aucionNo) {
		return auctionDao.selectHighPriceCount(aucionNo);
	}

	@Override
	public List<AuctionCarVO> selectMyAuctionList(DateSearchVO vo){
		return auctionDao.selectMyAuctionList(vo);
	}

	@Override
	public List<AuctionVO> selectAuctionNoList() {
		return auctionDao.selectAuctionNoList();
	}

	@Override
	public int selAucBuyerList(int auctionNo) {
		return auctionDao.selAucBuyerList(auctionNo);
	}

	@Override
	public int carFailSailUpdate(Map<String, Object> map) {
		return auctionDao.carFailSailUpdate(map);
	}

	@Override
	public RecordVO selectRecordByRecordNo(int auctionNo) {
		return auctionDao.selectRecordByRecordNo(auctionNo);
	}

	@Override
	public int insertLastBuyer(RecordVO vo) {
		return auctionDao.insertLastBuyer(vo);
	}
	
	@Override
	public int insertFailSellCar(int auctionNo) {
		return auctionDao.insertFailSellCar(auctionNo);
	}
	
	@Override
	public int selectFailauc(int auctionNo) {
		return auctionDao.selectFailauc(auctionNo);
	}

	@Override
	public int selRecordByBuyer(Map<String, Object> map) {
		return auctionDao.selRecordByBuyer(map);
	}

	@Override
	public List<RecordVO> selectRecordByAuctionNo(int auctionNo) {
		return auctionDao.selectRecordByAuctionNo(auctionNo);
	}
	

	//admin에서 불러오는 것들
	@Override
	public List<AuctionCarVO> selectAll(SearchVO vo){
		return auctionDao.selectAll(vo);
	}
	@Override
	public List<AuctionCarVO> selectList(SearchVO vo){
		return auctionDao.selectList(vo);
	}

	@Override
	public String selectAucBynoToState(int auctionNo) {
		return auctionDao.selectAucBynoToState(auctionNo);
	}

	@Override
	public int selectLastBuyerById(RecordVO vo) {
		return auctionDao.selectLastBuyerById(vo);
	}
	
	//낙찰된 경매를 보자
	@Override
	public List<Integer> selectMyAuctionById(String memberId) {
		return auctionDao.selectMyAuctionById(memberId);
	}
	@Override
	public List<Map<String, Object>> selectLastBuyer(DateSearchVO vo) {
		return auctionDao.selectLastBuyer(vo);
	}
	
	@Override
	public int selectLastBuyerCount(String memberId) {
		return auctionDao.selectLastBuyerCount(memberId);
	}

	@Override
	public AuctionVO selectAucByAuctionNo(int auctionNo) {
		return auctionDao.selectAucByAuctionNo(auctionNo);
	}

	@Override
	public int adminUpdateStateStop(Map<String, Object> map) {
		return auctionDao.adminUpdateStateStop(map);
	}

	@Override
	public int carUpadeAuctionDeny(String carNum) {
		return auctionDao.carUpadeAuctionDeny(carNum);
	}

	@Override
	public List<CarVO> selectDenyCar(SearchVO searchVo) {
		return auctionDao.selectDenyCar(searchVo);
	}

	@Override
	public List<Map<String, Object>> selectAuctionDay() {
		return auctionDao.selectAuctionDay();
	}

	@Override
	public Map<String, Object> selectAllCarSize() {
		return auctionDao.selectAllCarSize();
	}
}
