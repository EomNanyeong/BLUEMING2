create table user_info(
u_id             varchar2(15),
u_pw             varchar2(128),
<<<<<<< HEAD
u_name           varchar2(15),
=======
u_name           varchar2(5),
>>>>>>> branch 'master' of https://github.com/EomNanyeong/BLUEMING2.git
u_hp             varchar2(15),
    constraint u_id_pk            primary key(u_id),
    constraint u_pw_nn            check(u_pw is not null),
    constraint u_name_nn          check(u_name is not null),
    constraint u_hp_nn            check(u_hp is not null));

    drop table user_info;
    
create table room(
room_no       number,
room_name     varchar2(15),
price         number,
    constraint room_no_pk          primary key(room_no),
    constraint room_nanme_nn       check(room_name is not null),
    constraint room_price_nn       check(price is not null));

insert into room(room_no, room_name, price) values ('101','Palette I', 65000);
insert into room(room_no, room_name, price) values ('102','Palette II', 65000);

insert into room(room_no, room_name, price) values ('201','Love Poem I', 80000);
insert into room(room_no, room_name, price) values ('202','Love Poem II', 80000);

insert into room(room_no, room_name, price) values ('301','Night Letter I', 120000);
insert into room(room_no, room_name, price) values ('302','Night Letter II', 120000);



    
create table book_info(
book_no         number,
guest_name      varchar2(5),
guest_hp        varchar2(15),
room_no         number references room(room_no),
checking_book   char(1) not null,
book_date       date,
request        varchar2(50),
    constraint book_no_pk            primary key(book_no),
    constraint book_guest_name       check(guest_name is not null),
    constraint book_guest_hp         check(guest_hp is not null),
    constraint book_roomNo_nn        check(room_no is not null),
    constraint book_checking_book    check(checking_book = '0' or checking_book = '1'),
    constraint book_date_nn          check(book_date is not null));

create sequence no_seq
increment by 1
start with 1
nocycle;

select * from user_info;
select * from room;
select * from book_info;

insert into user_info(u_id, u_pw, u_name, u_hp) values ('next','1111','eny','01011112222');

select * from user_info;


select u_id, u_name
from user_info
where  u_id='next' and u_pw='1111';

select * from tab;