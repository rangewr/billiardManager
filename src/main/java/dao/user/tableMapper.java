package dao.user;

import pojo.ballinfo;

import java.util.List;

public interface tableMapper {
	// 获取已开台的球台
	public List<ballinfo> getOpen();

	// 获取初始化开台时间信息
	public double getInit(ballinfo tableid);

	// 开台操作
	public int doOpen(ballinfo ball);

	// 获取开台时间
	public ballinfo openTime(ballinfo ball);

	// 获取已用时间
	public double usedTime(ballinfo ball);

	// 关闭球台并对状态信息初始化
	public int doCloseT(ballinfo ball);
}
