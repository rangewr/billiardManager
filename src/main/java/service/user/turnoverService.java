package service.user;

import pojo.pageModel;
import pojo.turnover;

import java.util.List;
import java.util.Map;

public interface turnoverService {
	// 刷卡结账计入营业额
	public int shuaka(turnover tur);

	// 外卖形式销售酒水
	public int waimai(turnover turn);

	// 获取总信息数量
	public int getPageCount();

	// 查询营业额信息
	public List<turnover> chaYingServlet(pageModel pm);

	// 打烊结账信息查询
	public Map daYang();
	
	//新办会员
	public int addVip(turnover turn);
	
	//会员充值
	public int chongVip(turnover turn);
}
