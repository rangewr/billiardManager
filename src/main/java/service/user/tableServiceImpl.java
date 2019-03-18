package service.user;

import dao.user.tableMapper;
import dao.user.waterMapper;
import org.springframework.stereotype.Service;
import pojo.ballinfo;
import pojo.salwater;

import javax.annotation.Resource;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Service
public class tableServiceImpl implements tableService {
	@Resource
	private tableMapper tt;
	@Resource
	private waterMapper ss;

	// 获取初始化开台时间信息
	public String[] getInit(int[] list) {
		// TODO Auto-generated method stub
		List<ballinfo> yikai = new ArrayList<ballinfo>();
		double[] jishi = new double[5];
		String[] info = new String[5];
		DecimalFormat fm = new DecimalFormat("#.00");
		// 获取已开台的球台
		yikai = tt.getOpen();
		// 查询已开球台的开台时长
		for (int i = 0; i < yikai.size(); i++) {
			// 计算时长后,将时间存入double数组
			jishi[yikai.get(i).getTableid() - 1] = tt.getInit(yikai.get(i));
		}
		// 对返回的数组赋值,已开台的记录为开台时间(分钟),未开台的记录为"0"
		for (int j = 0; j < jishi.length; j++) {
			if (jishi[j] > 0) {
				String temp = fm.format(jishi[j] / 600);
				info[j] = temp;
			} else {
				info[j] = "0";
			}
		}
		return info;
	}

	// 开台操作
	public int doOpen(ballinfo ball) {
		int count = tt.doOpen(ball);
		return count;
	}

	// 结账前数据查询
	public List tableInfo(int taihao) {
		// TODO Auto-generated method stub
		salwater water = new salwater();
		ballinfo ball = new ballinfo();
		water.setTaihao(taihao);
		ball.setTableid(taihao);
		List list = new ArrayList();
		// 获取开台时间,格式转换
		Date otime = tt.openTime(ball).getOtime();
		SimpleDateFormat format = new SimpleDateFormat("HH:mm:ss");
		String time = format.format(otime);
		// 获取已用时间(分钟)
		int usedTime = (int) (tt.usedTime(ball)  / 600);
		// 计算台费
		int taifei = (int) (usedTime / 4 + 1);
		// 查询酒水消费记录
		double jiushui = 0;
		List<salwater> waterList = ss.getWater(water);
		if (waterList != null) {
			for (int i = 0; i < waterList.size(); i++) {
				jiushui += waterList.get(i).getPrice();
			}
		}
		// 计算总计消费
		double count = taifei + jiushui;
		list.add(time);
		list.add(usedTime);
		list.add(taifei);
		list.add(jiushui);
		list.add(count);
		return list;
	}

	public int doCloseTable(ballinfo ball) {
		// TODO Auto-generated method stub
		return tt.doCloseT(ball);
	}

}
