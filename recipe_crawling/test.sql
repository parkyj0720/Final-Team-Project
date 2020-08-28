drop table recipe;

create table recipe(
r_board_no number(5) primary key,
r_crawling_addr varchar2(100),
r_main_thumbs varchar2(200),
r_title varchar2(200),
r_explain varchar2(2000),
r_standard varchar2(20),
r_cooking_time varchar2(20),
r_difficult varchar2(10),
r_ingredient varchar2(500),
r_cooking_order clob
);

drop sequence seq_board_no;

create sequence seq_board_no start WITH 1 increment BY 1;

select * from recipe;

--INSERT INTO recipe values(weq_board_no.nextval,'','','','','','','','','','') WHERE EXISTS(SELECT * FROM recipe WHERE r_crawling_addr = 'https://www.10000recipe.com/recipe/6939720');