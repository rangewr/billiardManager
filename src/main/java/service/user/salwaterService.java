package service.user;

import pojo.salwater;
import pojo.turnover;

public interface salwaterService {
	
	// 清除该球台的酒水消费记录
	public int deleteInfo(salwater sa);
	
	//外卖形式销售酒水
	public int waimai(turnover sal);
	
	//酒水消费计入台费
	public int taifei(salwater sal);
}
