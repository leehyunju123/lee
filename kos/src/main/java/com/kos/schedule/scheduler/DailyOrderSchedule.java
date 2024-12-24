package com.kos.schedule.scheduler;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import com.kos.schedule.service.DailyOrderService;


@Component
public class DailyOrderSchedule {

    @Autowired
    private DailyOrderService dailyOrderService;

    // 매일 오전 3시에 배치 실행
   // @Scheduled(cron = "*/6 * * * * ?") // cron 표현식으로 매일 3시 실행
    public void dailyOrder() {
        try {
            dailyOrderService.dailyOrder();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
