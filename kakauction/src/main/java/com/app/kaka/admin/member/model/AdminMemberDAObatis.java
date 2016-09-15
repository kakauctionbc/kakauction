package com.app.kaka.admin.member.model;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class AdminMemberDAObatis extends SqlSessionDaoSupport implements AdminMemberDAO {

}
