package service.user;

import dao.user.MemberMapper;
import dao.user.TurnoverMapper;
import org.springframework.stereotype.Service;
import pojo.Member;
import pojo.pageModel;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Service
public class memberServiceImpl implements memberService {
	@Resource
	private MemberMapper mm;
	@Resource
	private TurnoverMapper turn;

	// 查询会员编号是否存在,并返回相应的数据信息
	public Member getMemberInfo(Member mem) {
		// TODO Auto-generated method stub
		Member m = mm.getMemInfo(mem);
		return m;
	}

	// 刷卡结账后对账户余额扣除操作
	public int updateYue(Member m) {
		return mm.gaiYue(m);
	}

	// 获取信息总数量
	public int getPageCount() {
		// TODO Auto-generated method stub
		int count = mm.getPageCount();
		return count;
	}

	// 获取会员信息
	public List<Member> chaVIPServlet(pageModel pm) {
		// TODO Auto-generated method stub
		List<Member> list = new ArrayList<Member>();
		list = mm.chaVIPServlet(pm);
		return list;
	}

	// 会员充值
	public int chongZhi(Member mem) {
		// TODO Auto-generated method stub
		
		return mm.chongZhi(mem);
	}

	// 删除会员
	public int shanChu(Member mem) {
		// TODO Auto-generated method stub
		return mm.shanChu(mem);
	}

	// 查询卡号是否可用
	public Member chaKaHao(Member mem) {
		// TODO Auto-generated method stub
		return mm.chaKaHao(mem);
	}

	// 添加会员
	public int addVip(Member mem) {
		// TODO Auto-generated method stub
		String rank;
		double discount;
		double jine = mem.getYue();
		if (jine < 100) {
			rank = "普通";
			discount = 1;
		} else if (jine < 300) {
			rank = "铜卡";
			discount = 0.9;
		} else if (jine < 500) {
			rank = "银卡";
			discount = 0.8;
		} else {
			rank = "金卡";
			discount = 0.7;
		}
		mem.setMrank(rank);
		mem.setDiscount(discount);
		return mm.addVipServlet(mem);
	}

}
