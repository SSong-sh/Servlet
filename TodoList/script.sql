drop table tblTodo;

create table tblTodo (
    seq number primary key,
    todo varchar2(100) not null,
    state char(1) default 'n' not null, 
    regdate date default sysdate not null

);

create sequence seqTodo;


select * from tblTodo;

delete from tblTodo ;

commit;

update tblTodo set state='y' where seq in(9,10);

select a.* from (select * from tblTodo where state='n' order by seq desc) a
union
select b.* from (select * from tblTodo where state='y' order by seq desc) b;
