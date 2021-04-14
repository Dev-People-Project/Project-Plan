1. 축제 (벚꽃, 페스티벌) 시간별 제한인원 예약
2. 한강변 구획별 예약 시스템



## 설계

 - 밤도깨비 축제



### 예약 메뉴

 - 날짜 : 금 토 일
 - 장소 : 청계천, 여의도
 - 시간 : 3시간 단위
 - 인원 제한 : 100명



### 회원 메뉴

 - Auth0 : 카카오, gmail



### DB

 - MySQL : 예약 - Table 'reserve'
                  'member_id', 'reserve_time', 'group', 'state', 'date', 'location' 

           회원 - Table 'member'
		  'member_id', 'phone_number', 'password'



## 역할

- Front-end : Html 등 			# 강연옥님, 주윤재님
- DB : MySQL - 회원, 예약		     # 조현재, 이재성님, 김현주님
- Back-end : NodeJS, Flask  		
- Public Cloud : AWS (EC2, EKS)
- Container Vir : Docker, k8s 
- Backing Service : Kafka - 예약, 회원  


## 구현
- 프론트엔드 : /, /member, /reserve, /admin
- 백엔드 : 
- DB설계
- 화면단에서 예약현황 나오게해서 예약 할수있는지 없는지 표시
- 예약이 된다면 클릭시 회원(Phone_number, passowrd)입력 창 띄우기
- 만들어지면 member DB에 send
- 예약 창으로 이동
- 예약창에서 날짜 선택, 지역선택, 시간 선택, 인원 수
