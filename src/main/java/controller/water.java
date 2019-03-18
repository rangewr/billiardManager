package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import pojo.salwater;
import pojo.turnover;
import service.user.salwaterService;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

@Controller
public class water {
	@Resource
	private salwaterService sw;

	// 酒水外卖
	@RequestMapping(value = "/jiushuiServlet", method = RequestMethod.POST)
	public String getMemInfo(@RequestParam int taihao, @RequestParam double zongji,HttpServletRequest req) throws Exception {
		String man=(String)req.getSession().getAttribute("info");
		// 外卖
		if (taihao == 6) {
			turnover t=new turnover();
			t.setLaiyuan("外卖");
			t.setMan(man);
			t.setPrice(zongji);
			sw.waimai(t);
		} else {// 计入台费
			salwater sal=new salwater();
			sal.setMan(man);
			sal.setPrice(zongji);
			sal.setTaihao(taihao);
			sw.taifei(sal);
		}
		return null;
	}
}
