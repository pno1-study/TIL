-- lottery_n8n.sql

CREATE TABLE lottery (
    ItEpsd      INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	ltRflYmd
	tm1WnNo
	tm2WnNo
	tm3WnNo
	tm4WnNo
	tm5WnNo
	tm6WnNo
	bnsWnNo
	rnk1WnNope
	rnk1WnAmt
	rnk1SumWnAmt
	rnk2WnNope
	rnk2WnAmt
	rnk2SumWnAmt
	rnk3WnNope
	rnk3WnAmt
	rnk3SumWnAmt
	rnk4WnNope
	rnk4WnAmt
	rnk4SumWnAmt
	rnk5WnNope
	rnk5WnAmt
	rnk5SumWnAmt
	wholEpsdSumNtslAmt
	
    title   VARCHAR(300) NOT NULL DEFAULT '',
    content TEXT NOT NULL DEFAULT '',
    section VARCHAR(10) NOT NULL DEFAULT ''
);

INSERT INTO naver_news (title, content, section)
VALUES ('테스트기사', '테스트 테스트', '테스트');

SELECT * FROM naver_news;