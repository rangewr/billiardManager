package controller;

import com.alibaba.fastjson.JSON;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import pojo.pageModel;
import service.user.turnoverService;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class turnover {
	@Resource
	private turnoverService turn;

	// 获取信息总数量
	@RequestMapping(value = "/getTPageCount", method = RequestMethod.POST)
	@ResponseBody
	public String getPageCount(@RequestParam int pageSize) throws Exception {
		Map map = new HashMap();
		map.put("count", turn.getPageCount());
		return JSON.toJSONString(map);
	}

	// 查询营业额信息,分页显示
	@RequestMapping(value = "/chaYingServlet", method = RequestMethod.POST)
	@ResponseBody
	public String chaYingServlet(@RequestParam int pageNo, @RequestParam int pageSize) throws Exception {
		pageModel pm = new pageModel();
		pm.setPageNo((pageNo-1)*pageSize);
		pm.setPageSize(pageSize);
		List list = new ArrayList();
		list = turn.chaYingServlet(pm);
		return JSON.toJSONString(list);
	}

	// 结账打烊信息查询
	@RequestMapping(value = "/dayangServlet", method = RequestMethod.POST)
	@ResponseBody
	public String daYang() throws Exception {
		Map map = turn.daYang();
		String json=JSON.toJSONString(map);
		return json;
	}
}
