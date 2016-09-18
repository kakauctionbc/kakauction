package com.app.kaka.auction.model;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.app.kaka.buyer.model.BuyerVO;
import com.app.kaka.car.model.CarVO;
import com.app.kaka.common.DateSearchVO;
import com.app.kaka.common.SearchVO;
import com.app.kaka.record.model.RecordVO;

@Repository
public class AuctionDAOMybatis extends SqlSessionDaoSupport implements AuctionDAO{
	
	private String namespace = "config.mybatis.mapper.oracle.auction";
	
	@Override
	public List<CarVO> carlist() {
		return getSqlSession().selectList(namespace+".selectCarList");
	}

	@Override
	public AuctionCarVO auctionCar(String carNum) {
		return getSqlSession().selectOne(namespace+".selectAuctionCar", carNum);
	}

	@Override
	public int insertAuction(AuctionVO vo) {
		return getSqlSession().insert(namespace+".insertAuction",vo);
	}

	@Override
	public int updateAuctionYn(AuctionVO vo) {
		return getSqlSession().update(namespace+".updateAuctionYn", vo);
	}
	//경매 리스트
	@Override
	public List<AuctionCarVO> selectAucList(SearchVO vo) {
		return getSqlSession().selectList(namespace+".selectAucList", vo);
	}
	@Override
	public int selectListCount(SearchVO vo){
		return getSqlSession().selectOne(namespace+".selectListCount", vo);
	}
	//오늘의 경매리스트
	@Override
	public List<AuctionCarVO> selectTodayList(SearchVO vo) {
		return getSqlSession().selectList(namespace+".selectTodayList", vo);
	}
	@Override
	public int selectTodayCount(SearchVO vo) {
		return getSqlSession().selectOne(namespace+".selectTodayCount", vo);
	}
	//종료된 경매는 리스트에 보이지 않음
	@Override
	public int selectTotalCount(SearchVO vo) {
		return getSqlSession().selectOne(namespace+".selectTotalCount", vo);
	}
	//admin에서 불러오는 것들
	@Override
	public List<AuctionCarVO> selectAll(SearchVO vo){
		return getSqlSession().selectList(namespace+".selectAll", vo);
	}
	@Override
	public List<AuctionCarVO> selectList(SearchVO vo){
		return getSqlSession().selectList(namespace+".selectList", vo);
	}
	
	@Override
	public int updateAuctionState(AuctionVO vo) {
		return getSqlSession().update(namespace+".updateAuctionState", vo);
	}
	
	
	@Override
	public int updateAuction(int auctionNo) {
		return getSqlSession().update(namespace+".updateAuction", auctionNo);
	}

	@Override
	public AuctionCarVO selectAuction(int auctionNo) {
		return getSqlSession().selectOne(namespace+".selectAuction", auctionNo);
	}

	@Override
	public int auctionDenyCar(String carNum) {
		return getSqlSession().update(namespace+".auctionDenyCar", carNum);
	}

	@Override
	public int auctionDeferCar(String carNum) {
		return getSqlSession().update(namespace+".auctionDeferCar", carNum);
	}

	@Override
	public Map<String, Object> selectAuctionGo(int auctionNo) {
		return getSqlSession().selectOne(namespace+".selectAuctionGo", auctionNo);
	}

	@Override
	public int insertAuctionRecord(Map<Object, Object> auctionmap) {
		return getSqlSession().insert(namespace+".insertRecord", auctionmap);
	}

	@Override
	public HighPriceVO selectHighPrice(int auctionNo) {
		return getSqlSession().selectOne(namespace+".selectHighPrice", auctionNo);
	}

	@Override
	public String selectMemberGrade(String sellerMemberId) {
		return getSqlSession().selectOne(namespace+".selectMemberGrade", sellerMemberId);
	}

	@Override
	public int insertByuer(BuyerVO buyerVo) {
		return getSqlSession().insert(namespace+".insertBuyer", buyerVo);
	}

	@Override
	public int selectBuyerByIdNo(BuyerVO buyerVo){
		return getSqlSession().selectOne(namespace+".selectBuyerByIdNo", buyerVo);
	}

	@Override
	public int selectHighPriceCount(int auctionNo) {
		return getSqlSession().selectOne(namespace+".selectHighPriceCount", auctionNo);
	}

	@Override
	public List<AuctionCarVO> selectMyAuctionList(DateSearchVO vo){
		return getSqlSession().selectList(namespace+".selectMyAuctionList", vo);
	}

	@Override
	public List<AuctionVO> selectAuctionNoList() {
		return getSqlSession().selectList(namespace+".selectAuctionNoList");
	}

	@Override
	public int selAucBuyerList(int auctionNo) {
		return getSqlSession().selectOne(namespace+".selAucBuyerList",auctionNo);
	}

	@Override
	public int carFailSailUpdate(Map<String, Object> map){
		return getSqlSession().update(namespace+".carFailSailUpdate", map);
	}

	@Override
	public RecordVO selectRecordByRecordNo(int auctionNo) {
		return getSqlSession().selectOne(namespace+".selectRecordByRecordNo", auctionNo);
	}

	@Override
	public int insertLastBuyer(RecordVO vo) {
		return getSqlSession().update(namespace+".insertLastBuyer", vo);
	}

	@Override
	public int insertFailSellCar(int auctionNo) {
		return getSqlSession().insert(namespace+".insertFailSellCar", auctionNo);
	}

	@Override
	public int selectFailauc(int auctionNo) {
		return getSqlSession().selectOne(namespace+".selectFailauc", auctionNo);
	}

	@Override
	public int selRecordByBuyer(Map<String, Object> map) {
		return getSqlSession().selectOne(namespace+".selRecordByBuyer", map);
	}


	@Override
	public List<RecordVO>  selectRecordByAuctionNo(int auctionNo) {
		return getSqlSession().selectList(namespace+".selectRecordByAuctionNo", auctionNo);
	}

	@Override
	public String selectAucBynoToState(int auctionNo) {
		return getSqlSession().selectOne(namespace+".selectAucBynoToState", auctionNo);
	}

	@Override
	public int selectLastBuyerById(RecordVO vo) {
		return getSqlSession().selectOne(namespace+".selectLastBuyerById", vo);
	}
	
	//낙찰된 경매를 보자
	@Override
	public List<Integer> selectMyAuctionById(String memberId) {
		return getSqlSession().selectList(namespace+".selectMyAuctionById",memberId);
	}
	@Override
	public List<Map<String, Object>> selectLastBuyer(DateSearchVO vo) {
		return getSqlSession().selectList(namespace+".selectLastBuyer",vo);
	}

	@Override
	public int selectLastBuyerCount(String memberId) {
		return getSqlSession().selectOne(namespace+".selectLastBuyerCount", memberId);
	}

	@Override
	public AuctionVO selectAucByAuctionNo(int auctionNo) {
		return getSqlSession().selectOne(namespace+".selectAucByAuctionNo", auctionNo);
	}

	@Override
	public int adminUpdateStateStop(Map<String, Object> map) {
		return getSqlSession().update(namespace+".adminUpdateStateStop", map);
	}

	@Override
	public int carUpadeAuctionDeny(String carNum) {
		return getSqlSession().update(namespace+".carUpadeAuctionDeny",carNum);
	}

	@Override
	public List<CarVO> selectDenyCar(SearchVO searchVo) {
		return getSqlSession().selectList(namespace+".selectDenyCar", searchVo);
	}

	@Override
	public List<Map<String, Object>> selectAuctionDay() {
		return getSqlSession().selectList(namespace+".selectAuctionDay");
	}


	




}
