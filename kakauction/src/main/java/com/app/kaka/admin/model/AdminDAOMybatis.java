package com.app.kaka.admin.model;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class AdminDAOMybatis extends SqlSessionDaoSupport implements AdminDAO{

}
