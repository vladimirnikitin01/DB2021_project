set search_path = Center;
--------------Создать по 1 представлению на каждую таблицу.------------
create or replace view important_info_center as
(
select center_id, year_built_dt, number_of_storeys_cnt
from CENTER);

create or replace view important_info_area as
(
select area_id, square_amt
from ALL_AREA);

create or replace view famous_timelable as
(
select COUNT(center_id), timetable_id
from TIMETABLE_X_CENTER
group by timetable_id, center_id);

create or replace view hard_work_timelable_in_life as
(
select timetable_id, opening_hours_desc
from TIMETABLE
where timetable_id = 3);


create view often_timelable_for_employees as
(
select timetable_id, opening_hours_desc
from TIMETABLE);

create or replace view safe_info_owners as
(
with test as (
    select center_id, CAST(person_id AS VARCHAR(10)) as casted
    from owner)
select center_id, overlay(casted placing '*' from 1 for 2)
from test);

select *
from safe_info_owners;

create or replace view information_for_tax_service as
(
with test as (
    select timetable_id, CAST(person_id AS VARCHAR(10)) as casted
    from employee)
select timetable_id, overlay(casted placing '*' from 1 for 2)
from test);

create or replace view information_visitor_parking as
(
with test as (
    select parking_id, CAST(person_id AS VARCHAR(10)) as casted
    from visitor_parking)
select parking_id, overlay(casted placing '*' from 1 for 2)
from test);

create or replace view information_visitor_amenity_area as
(
with test as (
    select amenity_area_id, CAST(person_id AS VARCHAR(10)) as casted
    from visitor_amenity_area)
select amenity_area_id, overlay(casted placing '*' from 1 for 2)
from test);


--------------Создать 2 сложных представления (с джойном).-----------------
-----давайте сделаем представление парковки у ТРЦ (это оч полезная информация в жизни)
create or replace view parking_in_center as
(
select parking_id, parking.square_amt as square_parking, AA.area_id
from parking
         inner join ALL_AREA AA on PARKING.area_id = AA.area_id);

create or replace view opening_hours_employee as
(
with test as (
    select timetable_id, CAST(person_id AS VARCHAR(10)) as casted
    from EMPLOYEE)
select overlay(casted placing '*' from 1 for 2), opening_hours_desc
from test
         inner join TIMETABLE on test.timetable_id = TIMETABLE.timetable_id );