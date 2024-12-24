package com.kos.schedule.service;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kos.schedule.dao.DailyOrderDao;

@Service
public class DailyOrderService {

    @Autowired
    private DailyOrderDao dailyOrderDao;

    public void dailyOrder() throws Exception{
        // 1. 오늘의 주문 데이터를 정산
        int sellCnt = dailyOrderDao.getTodayOrderCount();
        //int sellPrice = dailyOrderDao.getTodayOrderTotalPrice();

        // 2. 정산 테이블에 데이터 삽입
        Date today = new Date();
        //dailyOrderDao.insertDailyOrder(today, sellCnt, sellPrice);
    }
}