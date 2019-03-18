package dao.user;

import pojo.pageModel;
import pojo.turnover;

import java.util.List;

public interface TurnoverMapper {
	// 刷卡结账计入营业额
	public int shuaka(turnover tur);

	// 外卖形式销售酒水
	public int waimai(turnover turn);
	
	//新办会员
	public int addVip(turnover turn);
	
	//会员充值
	public int chongVip(turnover turn);
	
	// 获取信息总数量
	public int getPageCount();

	// 获取营业额信息
	public List<turnover> chaYingServlet(pageModel pm);

	// 查询是否有台费消费
	public int YNtaifei();

	// 结账打烊信息查询台费
	public double taiFei();

	// 查询是否有新办会员
	public int YNnewvip();

	// 查询新办会员收入
	public double newVip();

	// 查询是否有会员充值
	public int YNvipChong();

	// 查询会员充值收入
	public double vipChong();

	// 查询是否有酒水消费
	public int YNjiushui();

	// 查询酒水外卖收入
	public double jiushui();
}
