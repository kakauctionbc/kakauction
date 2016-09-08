package com.app.kaka.auction.model;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.app.kaka.car.model.CarVO;
import com.app.kaka.common.SearchVO;

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

	@Override
	public int selectTotalCount(SearchVO vo) {
		return getSqlSession().selectOne(namespace+".selectTotalCount",vo);
	}

	@Override
	public List<AuctionCarVO> selectAll(SearchVO vo) {
		List<AuctionCarVO> alist =getSqlSession().selectList(namespace+".selectAll", vo);
		return alist;
	}

	@Override
	public int updateAuction(int auctionNo) {
		return getSqlSession().update(namespace+".updateAuction", auctionNo);
	}

	@Override
	public CarVO selectByCarNum(String carNum) {
		return getSqlSession().selectOne(namespace+".selectByCarNum", carNum);
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
	
	

}
