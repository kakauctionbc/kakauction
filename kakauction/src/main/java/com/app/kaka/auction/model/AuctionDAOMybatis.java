package com.app.kaka.auction.model;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.app.kaka.car.model.CarVO;

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
	
	

}