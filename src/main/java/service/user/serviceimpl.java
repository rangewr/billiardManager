package service.user;

import dao.user.UserMapper;
import org.springframework.stereotype.Service;
import pojo.Manager;

import javax.annotation.Resource;

@Service
public class serviceimpl implements service {
	@Resource
	private UserMapper userMapper;
	//登录验证
	public Manager getNamePwd(Manager manager) {
		// TODO Auto-generated method stub
		Manager man=userMapper.getNamePwd(manager);
		return man;
	}
	//注册验证用户名是否可用
	public Manager selectName(Manager manager) {
		// TODO Auto-generated method stub
		Manager man=userMapper.selectName(manager);
		return man;
	}
	//注册信息
	public int doRegister(Manager manager) {
		// TODO Auto-generated method stub
		userMapper.doRegister(manager);
		return 0;
	}
	
}
