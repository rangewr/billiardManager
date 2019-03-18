package service.user;

import dao.user.TurnoverMapper;
import dao.user.waterMapper;
import org.springframework.stereotype.Service;
import pojo.salwater;
import pojo.turnover;

import javax.annotation.Resource;

@Service
public class salwaterServiceImpl implements salwaterService {
	@Resource
	private waterMapper water;
	@Resource
	private TurnoverMapper turn;
	
	// 删除该球台的酒水消费记录
	public int deleteInfo(salwater sa) {
		// TODO Auto-generated method stub
		return water.deleteinfo(sa);
	}

	//外卖形式销售酒水
	public int waimai(turnover sal) {
		// TODO Auto-generated method stub
		return turn.waimai(sal);
	}

	//酒水消费计入台费
	public int taifei(salwater sal) {
		// TODO Auto-generated method stub
		return water.taifei(sal);
	}

}
