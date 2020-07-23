package com.zhongruan.dao;

import com.zhongruan.bean.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserDao {
    User findByUserName(String username);

    List<User> findAll(@Param("start") int start,@Param("username")String username);

//    List<User> findAll();

    void add(User user);

    void deleteById(int id);

    User selectUserById(int id);

    void update(User user);

    //模糊查询
    int getTotalCount(@Param("username") String username);

}
