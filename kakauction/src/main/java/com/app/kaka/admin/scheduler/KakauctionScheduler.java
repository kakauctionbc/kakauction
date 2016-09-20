package com.app.kaka.admin.scheduler;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import com.app.kaka.auction.model.AuctionDAO;
import com.app.kaka.auction.model.AuctionServiceImpl;
import com.app.kaka.auction.model.AuctionVO;
import com.app.kaka.record.model.RecordVO;

@Component
public class KakauctionScheduler {
	private final Logger logger = LoggerFactory.getLogger(AuctionServiceImpl.class);
	
	@Autowired
	private AuctionDAO auctionDao;
	
	@Scheduled(cron="0 * * * * *") 
	public void reFresh(){
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
	
}
