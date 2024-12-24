package com.office.schedule.scheduler;

import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

@Component //이게 이썽야 스케줄링이 돌아
public class DailyOrderSchedule {

	
	//하루에 한번, 10초에 한 번씩 실행 
	@Scheduled(cron ="*/10 * * * * *")
	public void mainJob() {
		try {
			//작업 내용 코딩
			System.out.println("11111111");
			//List<OrderInfoVO> list = service.selectOrderList();
			//...
		} catch (Exception e) {
			System.out.println("* Batch 시스템이 예기치 않게 종료되었습니다. Message: {}"
								+e.getMessage());
		}
	}
	
}
