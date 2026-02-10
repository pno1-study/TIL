-- 1. 주문 금액이 가장 높은 상위 10건 조회
SELECT
	c.customer_name, s.product_name, s.total_amount
FROM sales s
INNER JOIN customers c
ON s.customer_id = c.customer_id
ORDER BY s.total_amount DESC
LIMIT 10;

-- 2. 고객 유형별 주문 성과
SELECT
	c.customer_type, COUNT(*) AS 주문건수,
	ROUND(AVG(s.total_amount), 0) AS 평균주문금액
FROM sales s
INNER JOIN customers c
ON s.customer_id = c.customer_id
GROUP BY customer_type
ORDER BY 평균주문금액 DESC

-- 3. 모든 고객과 구매 상품 조회
SELECT
	c.customer_name, COALESCE(s.product_name, '없음') 상품명
FROM customers c
LEFT JOIN sales s
ON s.customer_id = c.customer_id

--4. 고객 + 주문 상세 조회
SELECT
	*
FROM customers c
INNER JOIN sales s
ON s.customer_id = c.customer_id
ORDER BY s.order_date DESC

--5. VIP 고객 구매 내역
SELECT
	s.product_name, s.total_amount, s.order_date
FROM customers c
INNER JOIN sales s
ON s.customer_id = c.customer_id
WHERE c.customer_type = 'VIP'
ORDER BY total_amount DESC

--6. 고객별 구매 요약 (구매한 고객만)
SELECT
	c.customer_name, c.customer_type,
	COUNT(*) AS 주문횟수,
	SUM(s.total_amount) AS 총구매금액,
	ROUND(AVG(s.total_amount), 0) AS 평균구매금액,
	MAX(s.order_date) AS 최근주문일
FROM sales s
INNER JOIN customers c
ON s.customer_id = c.customer_id
GROUP BY customer_name, customer_type
ORDER BY 평균구매금액 DESC

--7. 모든 고객 구매 통계 (주문 없는 고객 포함)
SELECT


