package com.app.kaka.admin.model;

import java.util.List;
import java.util.Map;

public interface AdminDAO {
	public int selectCountCarApply();
	public int selectCountAuctionStart();
	public int selectCountAuctionEnd();
	public int selectCountReportCar();
	public int selectCountReportNo();
	public int selectCountMemberJoin();
	public int selectCountMemberOut();

}
