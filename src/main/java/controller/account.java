package controller;

import com.alibaba.fastjson.JSON;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import pojo.Manager;
import service.user.service;
import tools.md5test;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@Controller
public class account {
	@Resource
	private service ser;

	// 验证登录账号和密码
	@RequestMapping(value = "/loginServlet", method = RequestMethod.POST)
	@ResponseBody
	public String doLogin(@RequestParam String name, @RequestParam String pwd, HttpServletRequest request,
			HttpSession session) throws Exception {
		Manager manager = new Manager();
		manager.setAccount(name);
		manager.setPassword(md5test.getMD5(pwd));
		Manager man = ser.getNamePwd(manager);
		Map map = new HashMap();
		if (man != null) {
			// 查询结果存在,则跳转回本页面
			session.setAttribute("info", man.getAccount());
			map.put("result", "you");
			return JSON.toJSONString(map);
		} else {
			// 页面跳转（index.jsp）带出提示信息--转发
			map.put("result", "wu");
			return JSON.toJSONString(map);
		}
	}

	// 验证用户名是否可用
	@RequestMapping(value = "/zhuServlet", method = RequestMethod.POST)
	@ResponseBody
	public String doName(@RequestParam String name) throws Exception {
		Manager manager = new Manager();
		manager.setAccount(name);
		Manager man = ser.selectName(manager);
		Map map = new HashMap();
		if (man != null) {
			map.put("result", "you");
		} else {
			map.put("result", "wu");
		}
		return JSON.toJSONString(map);
	}

	// 注册用户
	@RequestMapping(value = "/updateServlet", method = RequestMethod.POST)
	public String doRegister(@RequestParam String name, @RequestParam String pwd, @RequestParam String quanXian)
			throws Exception {
		if (quanXian == null || !quanXian.equals("mana")) {
			quanXian = "Service";
		} else {
			quanXian = "Manager";
		}
		Manager manager = new Manager();
		manager.setAccount(name);
		manager.setPassword(md5test.getMD5(pwd));
		manager.setRank(quanXian);
		try {
			int a = ser.doRegister(manager);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "index";
	}

	// 注销登录
	@RequestMapping(value = "/guanbiServlet", method = RequestMethod.POST)
	public String guanBi(@RequestParam String dayang, HttpServletRequest req, HttpServletResponse resp)
			throws Exception {
		req.getSession().removeAttribute("info");
		String path = req.getContextPath();
		String basePath = req.getScheme() + "://" + req.getServerName() + ":" + req.getServerPort() + path + "/";
		if (dayang.equals("tui")) {
			resp.sendRedirect(basePath + "index.jsp");
		}
		return null;
	}

	// 退出登录
	@RequestMapping(value = "/tuichuServlet", method = RequestMethod.GET)
	public String tuichu(HttpServletRequest req) throws Exception {
		req.getSession().removeAttribute("info");
		return "index";
	}

}
