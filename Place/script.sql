create table tblCategory (
    seq number primary key,
    name varchar2(100) not null,
    marker varchar2(50) not null
);


drop table tblPlace;

create table tblPlace (
    seq number primary key,
    name varchar2(100) not null,
    lat number not null,
    lng number not null,
    description varchar2(1000) null,
    address varchar2(1000) not null,
    category number not null references tblCategory(seq)
);


create sequence seqCategory;
create sequence seqPlace;


insert into tblCategory values (seqCategory.nextVal, '식당','restaurant.png');
insert into tblCategory values (seqCategory.nextVal, '술집','bar.png');
insert into tblCategory values (seqCategory.nextVal, '공원','forest.png');
insert into tblCategory values (seqCategory.nextVal, '마트','shopping.png');
insert into tblCategory values (seqCategory.nextVal, '카페','bakery.png');
insert into tblCategory values (seqCategory.nextVal, '주차장','parking.png');

select * from tblCategory;

select * from tblPlace;

commit;

select a.*, 
    (select marker from tblCategory where seq = a.category) as marker 
from tblPlace a
    where
