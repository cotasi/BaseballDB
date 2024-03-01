drop table figure

create table figure(
    
pname varchar2(50) primary key,
category varchar2(50),
wname varchar2(50),
price int,
downprice int,
img varchar2(50)
);

select * from figure;

insert into figure values('저스틴 터너','Justin Turner','A123','Dodgers',5,1500000,'mlb_figure_01.png');
insert into figure values('코디 벨린저','Cody Bellinger','B123','Marlins',9,2000000,'mlb_figure_02.png');
insert into figure values('무키 베츠','Mookie Betts','C123','Red Sox',11,2500000,'mlb_figure_03.png');


select * from figure order by unitprice desc;

create table category(

    cateNum number(5) not null primary key,
    code varchar2(10) not null,
    cateName varchar2(20) not null

);

select * from category;

create table admin(
id varchar2(10) not null,
password varchar2(10) not null,
name varchar2(20) not null,
email varchar2(30) not null
);

select * from admin;

create sequence figure_seq
increment by 1
start with 1
nocache;