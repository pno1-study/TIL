-- 18-join-group.SQL
-- VIP 고객(c)들의 구매 내역(s) 조회 (*)
SELECT
	*
FROM customers c
INNER JOIN sales s ON c.customer_id = s.customer_id
WHERE c.customer_type='VIP';

-- 각 등급별 구매액 평균
SELECT c.customer_type AS 등급,
COUNT(*) AS 고객수, ROUND(AVG(total_amount), 0) AS 평균구매액
FROM customers c
INNER JOIN sales s ON c.customer_id = s.customer_id
GROUP BY customer_type;

-- [모든 고객]의 고객 별 구매 현황 분석
-- 고객 이름, 고객 등급, 주문 횟수,
-- 총구매액(없으면 0), 평균주문액(없으면 0.0), 최근주문일(없으면 '주문없음')
-- COALESCE(A, B) -> A가 NULL이 아니면 A. A가 NULL이면 B
SELECT c.customer_name AS 고객이름,
c.customer_type AS 고객등급,
COUNT(*) AS 주문횟수,
COALESCE(SUM(total_amount), 0) AS 총구매액,
COALESCE(ROUND(AVG(total_amount), 1), 0.0)AS 평균주문액,
COALESCE(TO_CHAR(MAX(join_date), 'YYYY-mm-dd'), '주문없음') AS 최근주문일
FROM customers c
LEFT JOIN sales s ON c.customer_id = s.customer_id
GROUP BY c.customer_name, c.customer_type