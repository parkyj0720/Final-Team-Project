CREATE TABLE board1(
num number primary key,
title varchar2(20),
writer_id varchar2(30),
written_date date,
content long,
heart number,
views number,
comment_num number
)
/

CREATE TABLE board2(
num number primary key,
title varchar2(20),
writer_id varchar2(30),
written_date date,
content long,
heart number,
views number,
comment_num number
)
/

CREATE TABLE board3(
num number primary key,
title varchar2(20),
writer_id varchar2(30),
written_date date,
content long,
heart number,
views number,
comment_num number
)
/

CREATE TABLE board4(
num number primary key,
title varchar2(20),
writer_id varchar2(30),
written_date date,
content long,
heart number,
views number,
comment_num number
)
/

CREATE TABLE comments1(
num number,
comment_id varchar2(30),
comment_content varchar2(200),
comment_date date
)
/
CREATE TABLE comments2(
num number,
comment_id varchar2(30),
comment_content varchar2(200),
comment_date date
)
/
CREATE TABLE comments3(
num number,
comment_id varchar2(30),
comment_content varchar2(200),
comment_date date
)
/
CREATE TABLE comments4(
num number,
comment_id varchar2(30),
comment_content varchar2(200),
comment_date date
)
/

create sequence board1_seq
increment by 1
start with 1
minvalue 1
nomaxvalue

create sequence board2_seq
increment by 1
start with 1
minvalue 1
nomaxvalue

create sequence board3_seq
increment by 1
start with 1
minvalue 1
nomaxvalue

create sequence board4_seq
increment by 1
start with 1
minvalue 1
nomaxvalue

insert into board1 values(board1_seq.nextval,'숙취게시판','관리자',sysdate,'숙취게시판 첫번째 개시글',0,0,0);
insert into board1 values(board1_seq.nextval,'숙취게시판','관리자',sysdate,'숙취게시판 두번째 개시글',0,0,0);
insert into board1 values(board1_seq.nextval,'숙취게시판','관리자',sysdate,'숙취게시판 세번째 개시글',0,0,0);
insert into board1 values(board1_seq.nextval,'숙취게시판','관리자',sysdate,'숙취게시판 네번째 개시글',0,0,0);
insert into board1 values(board1_seq.nextval,'숙취게시판','관리자',sysdate,'숙취게시판 다섯번째 개시글',0,0,0);
insert into board1 values(board1_seq.nextval,'숙취게시판','관리자',sysdate,'숙취게시판 여섯번째 개시글',0,0,0);
insert into board1 values(board1_seq.nextval,'숙취게시판','관리자',sysdate,'숙취게시판 일곱번째 개시글',0,0,0);
insert into board1 values(board1_seq.nextval,'숙취게시판','관리자',sysdate,'숙취게시판 여덟번째 개시글',0,0,0);
insert into board1 values(board1_seq.nextval,'숙취게시판','관리자',sysdate,'숙취게시판 아홉번째 개시글',0,0,0);
insert into board1 values(board1_seq.nextval,'숙취게시판','관리자',sysdate,'숙취게시판 열번째 개시글',0,0,0);

insert into board2 values(board2_seq.nextval,'정보공유','관리자',sysdate,'정보공유 첫번째 개시글',0,0,0);
insert into board2 values(board2_seq.nextval,'정보공유','관리자',sysdate,'정보공유 두번째 개시글',0,0,0);
insert into board2 values(board2_seq.nextval,'정보공유','관리자',sysdate,'정보공유 세번째 개시글',0,0,0);
insert into board2 values(board2_seq.nextval,'정보공유','관리자',sysdate,'정보공유 네번째 개시글',0,0,0);
insert into board2 values(board2_seq.nextval,'정보공유','관리자',sysdate,'정보공유 다섯번째 개시글',0,0,0);
insert into board2 values(board2_seq.nextval,'정보공유','관리자',sysdate,'정보공유 여섯번째 개시글',0,0,0);
insert into board2 values(board2_seq.nextval,'정보공유','관리자',sysdate,'정보공유 일곱번째 개시글',0,0,0);
insert into board2 values(board2_seq.nextval,'정보공유','관리자',sysdate,'정보공유 여덟번째 개시글',0,0,0);
insert into board2 values(board2_seq.nextval,'정보공유','관리자',sysdate,'정보공유 아홉번째 개시글',0,0,0);
insert into board2 values(board2_seq.nextval,'정보공유','관리자',sysdate,'정보공유 열번째 개시글',0,0,0);

insert into board3 values(board3_seq.nextval,'QnA','관리자',sysdate,'QnA 첫번째 개시글',0,0,0);
insert into board3 values(board3_seq.nextval,'QnA','관리자',sysdate,'QnA 두번째 개시글',0,0,0);
insert into board3 values(board3_seq.nextval,'QnA','관리자',sysdate,'QnA 세번째 개시글',0,0,0);
insert into board3 values(board3_seq.nextval,'QnA','관리자',sysdate,'QnA 네번째 개시글',0,0,0);
insert into board3 values(board3_seq.nextval,'QnA','관리자',sysdate,'QnA 다섯번째 개시글',0,0,0);
insert into board3 values(board3_seq.nextval,'QnA','관리자',sysdate,'QnA 여섯번째 개시글',0,0,0);
insert into board3 values(board3_seq.nextval,'QnA','관리자',sysdate,'QnA 일곱번째 개시글',0,0,0);
insert into board3 values(board3_seq.nextval,'QnA','관리자',sysdate,'QnA 여덟번째 개시글',0,0,0);
insert into board3 values(board3_seq.nextval,'QnA','관리자',sysdate,'QnA 아홉번째 개시글',0,0,0);
insert into board3 values(board3_seq.nextval,'QnA','관리자',sysdate,'QnA 열번째 개시글',0,0,0);

insert into board4 values(board4_seq.nextval,'신고합니다','관리자',sysdate,'신고합니다 첫번째 개시글',0,0,0);
insert into board4 values(board4_seq.nextval,'신고합니다','관리자',sysdate,'신고합니다 두번째 개시글',0,0,0);
insert into board4 values(board4_seq.nextval,'신고합니다','관리자',sysdate,'신고합니다 세번째 개시글',0,0,0);
insert into board4 values(board4_seq.nextval,'신고합니다','관리자',sysdate,'신고합니다 네번째 개시글',0,0,0);
insert into board4 values(board4_seq.nextval,'신고합니다','관리자',sysdate,'신고합니다 다섯번째 개시글',0,0,0);
insert into board4 values(board4_seq.nextval,'신고합니다','관리자',sysdate,'신고합니다 여섯번째 개시글',0,0,0);
insert into board4 values(board4_seq.nextval,'신고합니다','관리자',sysdate,'신고합니다 일곱번째 개시글',0,0,0);
insert into board4 values(board4_seq.nextval,'신고합니다','관리자',sysdate,'신고합니다 여덟번째 개시글',0,0,0);
insert into board4 values(board4_seq.nextval,'신고합니다','관리자',sysdate,'신고합니다 아홉번째 개시글',0,0,0);
insert into board4 values(board4_seq.nextval,'신고합니다','관리자',sysdate,'신고합니다 열번째 개시글',0,0,0);

commit;
