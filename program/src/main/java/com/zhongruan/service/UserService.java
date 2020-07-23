package com.zhongruan.service;

import com.zhongruan.bean.PageInfo;
import com.zhongruan.bean.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserService {

    int login(String username,String password);
    //几条几条的搜出来 放到一页
    PageInfo<User> findAll(int currentPage,String username);

//    List<User> findAll();

    void add(User user);

    void deleteById(int id);

    User selectUserById(int id);

    void update(User user);

    int getTotalCount(@Param("username") String username);

}
