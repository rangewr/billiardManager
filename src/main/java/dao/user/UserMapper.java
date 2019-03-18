package dao.user;

import pojo.Manager;

public interface UserMapper {
	//登录验证
	public Manager getNamePwd(Manager manager);
	//注册验证用户名是否可用
	public Manager selectName(Manager manager);
	//注册信息
	public int doRegister(Manager manager);
	
	
}
