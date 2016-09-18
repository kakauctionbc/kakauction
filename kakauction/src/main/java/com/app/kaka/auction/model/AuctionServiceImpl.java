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
	
	@Transactional
	public void updateState(){
		logger.info("경매 상태 업데이트");
		List<AuctionVO> auctionList = auctionDao.selectAuctionNoList();
		logger.info("종료된 경매 개수 auctionList={}",auctionList.size());
		for(AuctionVO vo : auctionList){
			int auctionNo = vo.getAuctionNo();
			logger.info("종료된 경매 번호 auctionNo={}",auctionNo);
			int cnt = auctionDao.selAucBuyerList(auctionNo);
			logger.info("종료된 경매 번호 cnt={}",cnt);
			if(cnt<1){
				int failcnt = auctionDao.selectFailauc(auctionNo);
				if(failcnt<1){
					int insfailsecar = auctionDao.insertFailSellCar(auctionNo);
				}
				Map<String, Object> map = new HashMap<String, Object>();
				map.put("carFailSell", failcnt);
				map.put("carNum", vo.getCarNum());
				int carfailsell = auctionDao.carFailSailUpdate(map);
				logger.info("판매실패 경매번호 auctionNo={}, 유찰수={} ",auctionNo,carfailsell);
			}else if(cnt>=1){
				List<RecordVO> recoVoList = auctionDao.selectRecordByAuctionNo(auctionNo);
				logger.info("판매가 된 경매 수 : recoVoList.size()={}",recoVoList.size());
				for(RecordVO reVo:recoVoList){
					Map<String, Object> map = new HashMap<String, Object>();
					logger.info("판매가 된 경매 수 : reVo={}",reVo);
					map.put("buyerMemberId", reVo.getBuyerMemberId());
					map.put("recordPrice", reVo.getRecordPrice());
					logger.info("판매가 된 경매 수 : map={},={}",reVo.getBuyerMemberId(),reVo.getRecordPrice());
					int excnt = auctionDao.selRecordByBuyer(map);
					if(excnt<1){
						RecordVO recordVo = auctionDao.selectRecordByRecordNo(auctionNo);
						int buyCnt = auctionDao.selectLastBuyerById(recordVo);
						if(buyCnt<=0){
							int insLastBuyer = auctionDao.insertLastBuyer(recordVo);
							logger.info("판매완료 경매번호 auctionNo={}, 성공={} ",auctionNo,insLastBuyer);
						}
					}
				}
			}
		}
		Date d = new Date();
		long today = d.getTime();
		
		for(AuctionVO vo : auctionList){
			long finish = vo.getAuctionFinish().getTime();
			logger.info("today"+today+"finish"+finish+"누가크니:today>finish"+(today>finish));
			if(today>finish){
				vo.setAuctionState("END");
				int cnt = auctionDao.updateAuctionState(vo);
				logger.info("경매 상태 보고 결과 : "+cnt);
			}
		}
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
