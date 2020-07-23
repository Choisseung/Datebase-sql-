package com.zhongruan.bean;

import java.util.List;
//分页功能 每页展示多少条数据
public class PageInfo<T> {//声明为泛型
    private List<T> list;
    private int size;
    private int totalPage;//多少页
    private int totalCount;//多少条记录
    private int currentPage;

    public List<T> getList() {
        return list;
    }

    public void setList(List<T> list) {
        this.list = list;
    }

    public int getSize() {
        return size;
    }

    public void setSize(int size) {
        this.size = size;
    }

    public int getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }

    public int getTotalCount() {
        return totalCount;
    }

    public void setTotalCount(int totalCount) {
        this.totalCount = totalCount;
    }

    public int getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }

    @Override
    public String toString() {
        return "PageInfo{" +
                "list=" + list +
                ", size=" + size +
                ", totalPage=" + totalPage +
                ", totalCount=" + totalCount +
                ", currentPage=" + currentPage +
                '}';
    }
}
