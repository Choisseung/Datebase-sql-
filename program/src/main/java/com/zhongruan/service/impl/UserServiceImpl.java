package com.zhongruan.service.impl;

import com.zhongruan.bean.PageInfo;
import com.zhongruan.bean.User;
import com.zhongruan.dao.UserDao;
import com.zhongruan.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

//继承接口
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    @Override
    public int login(String username, String password) {
        User user = userDao.findByUserName(username);
        if (user!=null&&user.getPassword().equals(password)){
            return user.getId();
        }
        return -1;
    }

    @Override
    public PageInfo<User> findAll(int currentPage, String username) {
        PageInfo<User> pageInfo = new PageInfo<>();
        pageInfo.setSize(5);
        //tc为查询数据的总行数
        int tc = userDao.getTotalCount(username);
        pageInfo.setTotalCount(tc);

        //tp为总页数
        int tp = (int)Math.ceil(tc/5.0);
        pageInfo.setTotalPage(tp);

        if (currentPage<1){
            pageInfo.setCurrentPage(1);
        }else if (currentPage>tp){
            pageInfo.setCurrentPage(tp);
        }else {
            pageInfo.setCurrentPage(currentPage);
        }
        //0,5,10,15...
        int start = (pageInfo.getCurrentPage()-1)*5;
        List<User> userList = userDao.findAll(start,username);
        pageInfo.setList(userList);
        return pageInfo;

    }

//    @Override
//    public List<User> findAll() {
//        return userDao.findAll();
//    }

    @Override
    public void add(User user) {
        userDao.add(user);
    }

    @Override
    public void deleteById(int id) {
        userDao.deleteById(id);
    }

    @Override
    public User selectUserById(int id) {
        return userDao.selectUserById(id);
    }

    @Override
    public void update(User user) {
        userDao.update(user);
    }

    @Override
    public int getTotalCount(String username) {
        return 0;
    }
}
