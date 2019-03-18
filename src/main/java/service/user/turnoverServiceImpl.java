package service.user;

import dao.user.TurnoverMapper;
import org.springframework.stereotype.Service;
import pojo.pageModel;
import pojo.turnover;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class turnoverServiceImpl implements turnoverService {
	@Resource
	private TurnoverMapper turn;

	// 刷卡结账计入营业额
	public int shuaka(turnover tur) {
		// TODO Auto-generated method stub
		return turn.shuaka(tur);
	}

	// 外卖形式销售酒水
	public int waimai(turnover turn) {
		// TODO Auto-generated method stub
		return 0;
	}

	// 获取信息总数量
	public int getPageCount() {
		// TODO Auto-generated method stub
		return turn.getPageCount();
	}

	// 获取营业额信息
	public List<turnover> chaYingServlet(pageModel pm) {
		// TODO Auto-generated method stub
		return turn.chaYingServlet(pm);
	}

	// 打烊结账信息查询
	public Map daYang() {
		// TODO Auto-generated method stub
		Map map = new HashMap();
		double taifei = 0;
		double newvip = 0;
		double chong = 0;
		double wai = 0;
		if (turn.YNtaifei() > 0) {
			taifei = turn.taiFei();
		}
		if (turn.YNnewvip() > 0) {
			newvip = turn.newVip();
		}
		if (turn.YNvipChong() > 0) {
			chong = turn.vipChong();
		}
		if (turn.YNjiushui() > 0) {
			wai = turn.jiushui();
		}
		double zong = taifei + newvip + chong + wai;
		map.put("taifei", taifei);
		map.put("newvip", newvip);
		map.put("chong", chong);
		map.put("wai", wai);
		map.put("zong", zong);
		return map;
	}

	// 新办会员
	public int addVip(turnover tu) {
		// TODO Auto-generated method stub
		return turn.addVip(tu);
	}

	// 会员充值
	public int chongVip(turnover tu) {
		// TODO Auto-generated method stub
		return turn.chongVip(tu);
	}

}
