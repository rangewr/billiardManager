package dao.user;

import pojo.salwater;

import java.util.List;

public interface waterMapper {
	// 查询酒水消费记录
	public List<salwater> getWater(salwater water);
	// 清除酒水消费记录
	public int deleteinfo(salwater sa);
	//酒水消费计入台费
	public int taifei(salwater sa);
}
