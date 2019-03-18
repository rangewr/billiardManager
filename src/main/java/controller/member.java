package controller;

import com.alibaba.fastjson.JSON;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import pojo.Member;
import pojo.pageModel;
import pojo.turnover;
import service.user.memberService;
import service.user.turnoverService;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class member {
	@Resource
	private memberService mem;
	@Resource
	private turnoverService turn;

	// 查询卡号是否存在,存在则返回相应的会员信息
	@RequestMapping(value = "/shukaServlet", method = RequestMethod.POST)
	@ResponseBody
	public String getMemInfo(@RequestParam int kahao) throws Exception {
		Member member = new Member();
		member.setMemid(kahao);
		Member m = new Member();
		m = mem.getMemberInfo(member);
		if (m != null) {
			return JSON.toJSONString(m);
		} else {
			Map map = new HashMap();
			map.put("mname", "wu");
			return JSON.toJSONString(map);
		}
	}

	// 获取信息总数量
	@RequestMapping(value = "/getPageCount", method = RequestMethod.POST)
	@ResponseBody
	public String getPageCount(@RequestParam int pageSize) throws Exception {
		Map map = new HashMap();
		map.put("count",mem.getPageCount());
		return JSON.toJSONString(map);
	}

	// 查询会员信息
	@RequestMapping(value = "/chaVIPServlet", method = RequestMethod.POST)
	@ResponseBody
	public String chaVIPServlet(@RequestParam int pageNo, @RequestParam int pageSize) throws Exception {
		pageModel pm = new pageModel();
		pm.setPageNo((pageNo-1)*pageSize);
		pm.setPageSize(pageSize);
		return JSON.toJSONString(mem.chaVIPServlet(pm));
	}

	// 会员充值
	@RequestMapping(value = "/chongServlet", method = RequestMethod.POST)
	@ResponseBody
	public String chongServlet(@RequestParam int kahao, @RequestParam double jine,HttpServletRequest req) throws Exception {
		Member me = new Member();
		me.setMemid(kahao);
		me.setYue(jine);
		mem.chongZhi(me);
		String name=(String)req.getSession().getAttribute("info");
		turnover t=new turnover();
		t.setLaiyuan("会员充值");
		t.setMan(name);
		t.setPrice(jine);
		t.setTaihao(kahao);
		turn.chongVip(t);
		return null;
	}

	// 删除会员
	@RequestMapping(value = "/shanServlet", method = RequestMethod.POST)
	@ResponseBody
	public String shanServlet(@RequestParam int kahao) throws Exception {
		Member me = new Member();
		me.setMemid(kahao);
		mem.shanChu(me);
		return null;
	}

	// 新办会员查询卡号是否可用
	@RequestMapping(value = "/kahaoServlet", method = RequestMethod.POST)
	@ResponseBody
	public String kahaoServlet(@RequestParam int num) throws Exception {
		Member me = new Member();
		me.setMemid(num);
		Member a = new Member();
		a = mem.chaKaHao(me);
		if (a != null) {
			return JSON.toJSONString(a);
		} else {
			Map map = new HashMap();
			map.put("memid", "0");
			return JSON.toJSONString(map);
		}
	}

	// 添加会员
	@RequestMapping(value = "/addvipServlet", method = RequestMethod.POST)
	@ResponseBody
	public String addvipServlet(@RequestParam int num, @RequestParam String pwd, @RequestParam String name,
			@RequestParam double jine, @RequestParam String tel,HttpServletRequest req) throws Exception {
		Member me = new Member();
		me.setMemid(num);
		me.setMname(name);
		me.setMpsw(pwd);
		me.setMtel(tel);
		me.setYue(jine);
		mem.addVip(me);
		String aname=(String)req.getSession().getAttribute("info");
		turnover t=new turnover();
		t.setLaiyuan("新办会员");
		t.setMan(aname);
		t.setPrice(jine);
		t.setTaihao(num);
		turn.addVip(t);
		return null;
	}

}
