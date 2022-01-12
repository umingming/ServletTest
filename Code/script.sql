

drop table tblUser;

create table tblUser (
    id varchar2(30) primary key,
    pw varchar2(30) not null,
    name varchar2(30) not null,
    lv number(1) default 3 not null
);

insert into tblUser (id, pw, name, lv) values ('hong', '1111', '홍길동', default);
insert into tblUser (id, pw, name, lv) values ('test', '1111', '테스트', default);
insert into tblUser (id, pw, name, lv) values ('admin', '1111', '관리자', default);

create table tblBoard (
    seq number primary key,
    id varchar2(30) not null references tblUser(id),
    subject varchar2(300) not null,
    content varchar2(2000) not null,
    regdate date default sysdate not null,
    readcount number default 0 not null,
    userip varchar2(15) not null
);

create sequence seqBoard;

insert into tblBoard (seq, id, subject, content, regdate, readcount, userip)
    values (seqBoard.nextVal, 'hong', '게시판입니다.', '내용입니다.', default, default, '127.0.0.1');
    
select * from tblBoard;

update tblBoard set subject = '제목', content = '내용' where seq = 1;

delete from tblBoard where seq = 1;
commit;