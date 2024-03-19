SHOW DATABASES;
USE bigdata_moon;
SHOW TABLES;
# 1. 모든 저자의 이름과 나이를 출력합니다.
SELECT name, age FROM Authors;
# 2. 출판 연도가 2020년 이후인 모든 책을 출력합니다.
SELECT * FROM Books WHERE pub_year >= '2021-01-01';
# 3. 2024년에 구매한 모든 내역을 출력하고, 사용자 id,
# 책 id, 구매 날짜를 표시합니다.
SELECT user_id, book_id, purchase_date
FROM Purchases WHERE purchase_date BETWEEN
'2024-01-01' AND '2024-12-31';
# 4. 서울에서 거주하는 모든 유저의 이름과 주소를 출력
SELECT name, address FROM Users
WHERE address = '서울';
