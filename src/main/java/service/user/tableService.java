package service.user;

import pojo.ballinfo;

import java.util.List;

public interface tableService {
	// 获取初始化开台时间信息
	public String[] getInit(int[] list);

	// 开台操作
	public int doOpen(ballinfo ball);

	// 结账数据查询
	public List tableInfo(int taihao);

	// 关闭球台,状态信息初始化
	public int doCloseTable(ballinfo ball);
}
