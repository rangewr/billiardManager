package controller;

import com.alibaba.fastjson.JSON;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import pojo.Member;
import pojo.ballinfo;
import pojo.salwater;
import pojo.turnover;
import service.user.memberService;
import service.user.salwaterService;
import service.user.tableService;
import service.user.turnoverService;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class table {
	@Resource
	private tableService t;
	@Resource
	private turnoverService turn;
	@Resource
	private salwaterService sal;
	@Resource
	private memberService mm;

	// 初始化球台计费信息
	@RequestMapping(value = "/initServlet", method = RequestMethod.POST)
	@ResponseBody
	public String doInit() throws Exception {
		int[] list = { 1, 2, 3, 4, 5 };
		String[] arr = t.getInit(list);
		Map map = new HashMap();
		map.put("yi", arr[0]);
		map.put("er", arr[1]);
		map.put("san", arr[2]);
		map.put("si", arr[3]);
		map.put("wu", arr[4]);
		String json = JSON.toJSONString(map);
		return json;
	}

	// 开台操作
	@RequestMapping(value = "/open", method = RequestMethod.POST)
	@ResponseBody
	public String openTable(@RequestParam int taihao) throws Exception {
		ballinfo ball = new ballinfo();
		ball.setTableid(taihao);
		int count = t.doOpen(ball);
		Map map = new HashMap();
		map.put("xin", count);
		return JSON.toJSONString(map);
	}

	// 结账数据查询
	@RequestMapping(value = "/jieZhangServlet", method = RequestMethod.POST)
	@ResponseBody
	public String tableInfo(@RequestParam int taihao) throws Exception {
		List list = t.tableInfo(taihao);
		Map map = new HashMap();
		map.put("openTime", list.get(0));
		map.put("usedTime", list.get(1));
		map.put("taifei", list.get(2));
		map.put("water", list.get(3));
		map.put("zongJi", list.get(4));
		return JSON.toJSONString(map);
	}

	// 刷卡结账后操作
	@RequestMapping(value = "/afterJieServlet", method = RequestMethod.POST)
	@ResponseBody
	public String shuaka(@RequestParam int kahao, @RequestParam double zongji, @RequestParam int taihao,
			HttpServletRequest req) throws Exception {
		// 消费信息计入营业额
		String man = (String) req.getSession().getAttribute("info");
		turnover tur = new turnover();
		tur.setTaihao(taihao);
		tur.setPrice(zongji);
		tur.setMan(man);
		turn.shuaka(tur);
		// 对会员卡内余额扣除操作
		Member mem = new Member();
		mem.setMemid(kahao);
		mem.setYue(zongji);
		mm.updateYue(mem);
		// 清除该球台的酒水消费记录
		salwater s = new salwater();
		s.setTaihao(taihao);
		sal.deleteInfo(s);
		// 对球台状态初始化
		ballinfo ball = new ballinfo();
		ball.setTableid(taihao);
		t.doCloseTable(ball);
		Map map = new HashMap();
		map.put("rs", "yeah");
		return JSON.toJSONString(map);
	}

	// 现金结账后操作
	@RequestMapping(value = "/xianjin", method = RequestMethod.POST)
	@ResponseBody
	public String xianJin(@RequestParam double zongji, @RequestParam int taihao, HttpServletRequest req)
			throws Exception {
		// 消费信息计入营业额
		String man = (String) req.getSession().getAttribute("info");
		turnover tur = new turnover();
		tur.setTaihao(taihao);
		tur.setPrice(zongji);
		tur.setMan(man);
		turn.shuaka(tur);
		// 清除该球台的酒水消费记录
		salwater s = new salwater();
		s.setTaihao(taihao);
		sal.deleteInfo(s);
		// 对球台状态初始化
		ballinfo ball = new ballinfo();
		ball.setTableid(taihao);
		int a = t.doCloseTable(ball);
		Map map = new HashMap();
		map.put("fan", a);
		return JSON.toJSONString(map);
	}
}
