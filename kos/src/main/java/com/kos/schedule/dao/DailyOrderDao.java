package com.kos.schedule.dao;

import org.springframework.stereotype.Repository;


@Repository
public interface DailyOrderDao {

	public int getTodayOrderCount() throws Exception;
	/*
    @Autowired
    private JdbcTemplate jdbcTemplate;

    // 오늘의 주문 수 조회
    public int getTodayOrderCount() {
        String sql = "SELECT COUNT(*) FROM orders WHERE ORDER_DATE = CURRENT_DATE";
        return jdbcTemplate.queryForObject(sql, Integer.class);
    }

    // 오늘의 총 매출 금액 조회
    public int getTodayOrderTotalPrice() {
        String sql = "SELECT SUM(ORDER_PRICE) FROM orders WHERE ORDER_DATE = CURRENT_DATE";
        return jdbcTemplate.queryForObject(sql, Integer.class);
    }

    // 정산된 주문 데이터를 TB_DAILY_ORDER 테이블에 삽입
    public void insertDailyOrder(Date orderDate, int sellCnt, int sellPrice) {
        String sql = "INSERT INTO TB_DAILY_ORDER (ORDER_DT, SELL_CNT, SELL_PRICE, REG_DT) " +
                     "VALUES (?, ?, ?, SYSDATE)";
        jdbcTemplate.update(sql, orderDate, sellCnt, sellPrice);
    }
    */
}