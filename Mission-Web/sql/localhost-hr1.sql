/*
    ��������Ʈ�� �Խ��� ����(tbl_board)
    
    �Խ��ǹ�ȣ   no          ������          �⺻Ű
    ����       title        ������         �ʼ��׸�
    �ۼ���     writer       ������         �ʼ��׸�
    ����      content       ������         �ʼ��׸�
    ��ȸ��    view_cnt      ������         �⺻��(0)
    �����    reg_date      ��¥��       �⺻��(���糯¥)
*/

create table tbl_board(
      no        number(5)       primary key
    , title     varchar2(400)   not null
    , writer    varchar2(100)   not null
    , content   varchar2(4000)  not null
    , view_cnt  number(5)       default 0
    , reg_date  date            default sysdate
);

-- �Խ��ǹ�ȣ
create sequence seq_tbl_board_no nocache;



select * from tbl_board;

desc tbl_board;


insert into tbl_board(no, title, writer, content) 
values(seq_tbl_board_no.nextval, '�����Դϴ�', 'ȫ�浿', '�����Դϴ�');

insert into tbl_board(no, title, writer, content) 
values(seq_tbl_board_no.nextval, 'sql����', 'ȫ�浿', 'sqldeveloper���� ����');


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
values('yejin', '�ֿ���', '1234', 'yejin0455', '@naver.com', '010', '8191', '0455', '03470', '����� ����', '2');

commit;


select (EMAIL_ID||'@'||EMAIL_DOMAIN) as EMAIL FROM t_member;
select (TEL1||'-'||TEL2||'-'||TEL3) as TEL FROM t_member;
select (BASIC_ADDR||' '||DETAIL_ADDR) ADDR FROM t_member;




---- �÷� �̸� ����
--alter table tbl_board
--  rename column reg_date to regdate
--  modify regdate varchar2(1000);  --Ÿ�Ժ���(�����Ͱ� �ִ� ���¸� ���� �Ұ�)