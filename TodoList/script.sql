drop table tblTodo;

create table tblTodo (
    seq number primary key,
    todo varchar2(100) not null,
    state char(1) default 'n' not null, 
    regdate date default sysdate not null

);

create sequence seqTodo;


select * from tblTodo;