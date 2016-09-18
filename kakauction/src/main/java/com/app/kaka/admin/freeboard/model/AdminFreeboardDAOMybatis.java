package com.app.kaka.admin.freeboard.model;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

@Repository
public class AdminFreeboardDAOMybatis extends SqlSessionDaoSupport implements AdminFreeboardDAO {
	private Logger logger = LoggerFactory.getLogger(AdminFreeboardDAOMybatis.class);
}
