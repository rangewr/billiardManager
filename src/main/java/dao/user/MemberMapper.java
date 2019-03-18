package dao.user;

import pojo.Member;
import pojo.pageModel;

import java.util.List;

public interface MemberMapper {
	
	// 查询会员编号是否存在,并返回相应的数据信息
	public Member getMemInfo(Member mem);
	
	// 刷卡结账后对账户余额扣除操作
	public int gaiYue(Member m);
	
	//获取信息总数量
	public int getPageCount();
	
	//获取会员信息
	public List<Member> chaVIPServlet(pageModel pm);
	
	//会员充值
	public int chongZhi(Member mem);
	
	//删除会员
	public int shanChu(Member mem);
	
	//查询卡号是否可用
	public Member chaKaHao(Member mem);
	
	//添加会员
	public int addVipServlet(Member mem);
	
}
