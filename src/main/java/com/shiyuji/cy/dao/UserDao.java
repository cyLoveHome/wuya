package com.shiyuji.cy.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.shiyuji.cy.pojo.User;

public interface UserDao {
	/**
	 * 新增用户
	 * @param user
	 * @return
	 */
	int addUser(User user);
	
	/**
	 * 根据uId封号用户
	 * @param uId
	 * @return
	 */
	int deleteByUid(String uId);
	
	/**
	 * 更新用户
	 * @param user
	 * @return
	 */
	int updateUser(User user);
	
	/**
	 * 根据uId查用户
	 * @param uId
	 * @return
	 */
	User selectByUid(String uId);
	
	/**
	 * 根据用户名、密码查用户
	 * @param uName
	 * @param password
	 * @return
	 */
	User selectByName(@Param("uName")String uName,@Param("password")String password);
	
	/**
	 * 根据邮箱、密码查用户
	 * @param bind_email
	 * @param password
	 * @return
	 */
	User selectByEmail(@Param("bind_email")String bindEmail,@Param("password")String password);
	
	/**
	 * 根据用户名模糊查询用户
	 * @param uName
	 * @return
	 */
	List<User> selectByUname(@Param("uName")String uName);
	
	/**
	 * 根据邮箱地址查找用户
	 * @param bind_email
	 * @return
	 */
	User selectByEmailAddress(String bindEmail);
	
	/**
	 * 所有厨友，除了当前用户
	 * @return
	 */
	List<User> selectUsers(String uId);

	/**
	 * 随机刷出8位厨友
	 * @param uId
	 * @return
	 */
	List<User> selectRandEightUsers(String uId);
	
	//以下为Admin使用
	/**
	 * 查出所有系统普通用户
	 * @return
	 */
	List<User> selectAll();
	
	/**
	 * 查出系统所有管理员
	 * @return
	 */
	List<User> selectAdmin(String uId);
	
	/**
	 * 新注册3名用户
	 * @return
	 */
	List<User> selectNew();
	
	/**
	 * 管理员用户名登录
	 * @param uName
	 * @param password
	 * @return
	 */
	User adminByName(@Param("uName")String uName,@Param("password")String password);
	
	/**
	 * 管理员邮箱登录
	 * @param bind_email
	 * @param password
	 * @return
	 */
	User adminByEmail(@Param("bind_email")String bindEmail,@Param("password")String password);
	
	/**
	 * 
	 * @param todayTime
	 * @return
	 */
	List<User> selectUserByPage(@Param("start")int start,@Param("pageSize")int pageSize);
	
	/**
	 * 
	 * @param todayTime
	 * @return
	 */
	List<User> selectAdminByPage(@Param("start")int start,@Param("pageSize")int pageSize,@Param("uId")String uId);
}
	
	
	