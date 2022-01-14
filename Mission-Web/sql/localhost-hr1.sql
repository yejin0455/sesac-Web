/*
    웹프로젝트용 게시판 생성(tbl_board)
    
    게시판번호   no          정수형          기본키
    제목       title        문자형         필수항목
    작성자     writer       문자형         필수항목
    내용      content       문자형         필수항목
    조회수    view_cnt      정수형         기본값(0)
    등록일    reg_date      날짜형       기본값(현재날짜)
*/

create table tbl_board(
      no        number(5)       primary key
    , title     varchar2(400)   not null
    , writer    varchar2(100)   not null
    , content   varchar2(4000)  not null
    , view_cnt  number(5)       default 0
    , reg_date  date            default sysdate
);

-- 게시판번호
create sequence seq_tbl_board_no nocache;



select * from tbl_board;

desc tbl_board;


insert into tbl_board(no, title, writer, content) 
values(seq_tbl_board_no.nextval, '제목입니다', '홍길동', '내용입니다');

insert into tbl_board(no, title, writer, content) 
values(seq_tbl_board_no.nextval, 'sql삽입', '홍길동', 'sqldeveloper에서 삽입');


commit;



create table t_member(
    ID 				VARCHAR2(20)       PRIMARY KEY
    ,NAME 			VARCHAR2(20)       NOT NULL
    ,PASSWORD 		VARCHAR2(20)       NOT NULL
    ,EMAIL_ID 		VARCHAR2(30)
    ,EMAIL_DOMAIN 	VARCHAR2(20)
    ,TEL1 			CHAR(3)
    ,TEL2 			CHAR(4)
    ,TEL3 			CHAR(4)
    ,POST 			CHAR(7)
    ,BASIC_ADDR 	VARCHAR2(200)
    ,DETAIL_ADDR 	VARCHAR2(200)
    ,TYPE           CHAR(1)  		 default 'U'
    ,REG_DATE 		DATE 			 default sysdate
);

select * from t_member;

desc t_member;


insert into t_member(ID, NAME, PASSWORD, EMAIL_ID, EMAIL_DOMAIN, TEL1, TEL2, TEL3, POST, BASIC_ADDR, DETAIL_ADDR) 
values('yejin', '최예진', '1234', 'yejin0455', '@naver.com', '010', '8191', '0455', '03470', '서울시 은평구', '2');

commit;


select (EMAIL_ID||'@'||EMAIL_DOMAIN) as EMAIL FROM t_member;
select (TEL1||'-'||TEL2||'-'||TEL3) as TEL FROM t_member;
select (BASIC_ADDR||' '||DETAIL_ADDR) ADDR FROM t_member;




---- 컬럼 이름 변경
--alter table tbl_board
--  rename column reg_date to regdate
--  modify regdate varchar2(1000);  --타입변경(데이터가 있는 상태면 변경 불가)