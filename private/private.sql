create table temp (
     id int ,
     phrase text,
     PRIMARY KEY (id)
);
insert into temp(id ,phrase)
values(1,(SELECT substr(sentence , 98,4 ) as "phrase" from sentences where id = 14));
insert into temp(id ,phrase)
values(2,(SELECT substr(sentence , 3, 5) as "phrase" from sentences where id = 114));

insert into temp(id ,phrase)
values(3,(SELECT substr(sentence , 72, 9) as "phrase" from sentences where id = 618));



insert into temp(id ,phrase)
values(4,(SELECT substr(sentence , 7, 3) as "phrase" from sentences  where id = 630));


insert into temp(id ,phrase)
values(5,(SELECT substr(sentence , 12, 5) as "phrase" from sentences  where id = 932));



insert into temp(id ,phrase)
values(6,(SELECT substr(sentence , 50, 7) as "phrase" from sentences  where id = 2230));

insert into temp(id ,phrase)
values(7,(SELECT substr(sentence , 44, 10) as "phrase" from sentences   where id = 2346));

insert into temp(id ,phrase)
values(8,(SELECT substr(sentence , 14, 5) as "phrase"  from sentences  where id = 3041));

create view message
as
select phrase from temp;

