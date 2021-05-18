set search_path = Center;
-------------CRUD-запрос (подсказка: 4 запроса) к двум любым таблице БД--------------------
-------- create-----------
insert into CENTER(center_id, area_id, year_built_dt, number_of_storeys_cnt)
values (7777, 5000, '2020-05-08', 3);

insert into OWNER(person_id, center_id)
values (7, 7777);

---------- read-----------
select center_id, year_built_dt
from CENTER;

select *
from EMPLOYEE;

-----------update-----------
update OWNER
set person_id=113
where center_id = 7;

update CENTER
set number_of_storeys_cnt=number_of_storeys_cnt + 1
where center_id = 7777;


------------delete------
delete
from CENTER
where center_id = 7777;

delete
from ALL_AREA
where square_amt < 1000;