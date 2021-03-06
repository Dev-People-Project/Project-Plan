USE mydb;
INSERT INTO users (user_category, email, user_name, phone_number) 
VALUES 
('admin', 'admin@amdin.com', 'hyeonjae', '010-0000-0000'),
('manager', 'aa@org.com', 'iu', '010-1111-1111'),
('seller', 'aa@seller.com', 'jaesung', '010-2222-2222'),
('seller', 'dd@seller.com', 'jaesung2', '010-3333-3333'),
('seller', 'cc@seller.com', 'jaesung3', '010-3333-3333'),
('seller', 'ee@seller.com', 'jaesung4', '010-3333-3333'),
('seller', 'gg@seller.com', 'jaesung5', '010-3333-3333'),
('seller', 'qq@seller.com', 'jaesung6', '010-3333-3333'),
('seller', 'www@seller.com', 'jaesung7', '010-3333-3333'),
('seller', 'rrseller.com', 'jaesung8', '010-3333-3333'),
('seller', 'tt@seller.com', 'jaesung9', '010-3333-3333'),
('seller', 'yy@seller.com', 'jaesung1', '010-3333-3333'),
('customer', 'ee@customer.com', 'yoonjae', '010-4444-4444'),
('customer', 'ff@customer.com', 'hyeonjoo', '010-5555-5555');

INSERT INTO festival (user_no, company_name, festival_name, period, location, url)
VALUES
(2, 'samsung', 'chungchun festival', '2021-04-16~2021-04-18', 'hangang', 'http://wwww.seoulfestival.com'),
(3, 'kakao', 'goblin night market', '2021-04-21~2021-04-25', 'hangang', 'http://wwww.goblin.com'),
(3, 'kakao', 'rock festival', '2021-05-20~2021-05-22', 'hangang', 'http://wwww.rockfestival.com');

INSERT INTO store (user_no, festival_id, store_name, store_description, contact_number, category, license_number, location_number)
VALUES
(3, 1, '김밥천국', '분식, 한식 전문점', '02-000-0000', '한식', '02-4188-38488-135', 'A2'),
(4, 1, 'BBQ 치킨', '자메이카 통다리가 최고지', '02-111-1111', '치킨', '02-12357-23758-123', 'F1'),
(5, 1, '교촌치킨', '허니콤포 얌얌', '02-222-2222', '치킨', '02-0000-0000-0000', 'C2'),
(6, 2, '세계맥주', '전 세계 맥주 전문점', '02-333-3333', '호프점', '02-4188-38488-135', 'A4'),
(7, 2, '굽네치킨', '고추바사삭이 최고지요', '02-444-4444', '치킨', '02-4188-38488-135', 'A3'),
(8, 2, 'BHC 치킨', 'BHC의 치즈볼 맛집', '02-555-5555', '치킨', '02-4188-38488-135', 'A1'),
(9, 2, '네네치킨', '눈꽃치킨의 원조', '02-666-6666', '치킨', '02-4188-38488-135', 'B2'),
(10, 3, '60계치킨', '60마리만 튀기고 기름을 바꿉니다.', '02-777-7777', '치킨', '02-4188-38488-135', 'A5'),
(11, 3, '배떡', '로제떡볶이가 잘나가요', '02-888-8888', '분식', '02-4188-38488-135', 'A4'),
(12, 3, '조마루감자탕', '감자탕 전문점', '02-999-9999', '한식', '02-4188-38488-135', 'A3');

INSERT INTO menu (store_id, menu_name, menu_price)
VALUES
(1, '비빔밥', 6000),
(1, '김밥', 3000),
(2, '올리브치킨', 17000),
(2, '자메이카통다리', 19000),
(3, '허니콤보', 18000),
(3, '후라이드치킨', 16000),
(4, '블루문', 5000),
(4, 'Cass', 3000),
(5, '고추바사삭', 17000),
(5, '갈비천왕', 18000),
(6, '뿌링클', 18000),
(6, '치즈볼', 5000),
(7, '눈꽃치즈치킨', 18000),
(7, '양념치킨', 17000),
(8, '6초치킨', 18000),
(8, '고추마요치킨', 18000),
(9, '로제떡볶이', 8000),
(9, '튀김세트A', 5000),
(10, '해장국', 7000),
(10, '감자탕', 18000);

INSERT INTO orders (user_no, store_id, total_qty, total_price, requests)
VALUES
(1, 3, 1, 18000, '리뷰이벤트할게요'),
(2, 6, 2, 23000, '리뷰이벤트할게요'),
(3, 9, 1, 8000, '리뷰이벤트할게요');

INSERT INTO order_detail (order_id, menu_id, food_price, food_qty)
VALUES
(1, 5, 18000, 1),
(2, 11, 18000, 1),
(2, 12, 5000, 1),
(3, 17, 8000, 1);
