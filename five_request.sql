set search_path = Center;
------------------5 смысловых запросов к БД-------------------
--1) Узнать кому принадлежит больше всего торговых центров и вывести всю информацию о таких ТРЦ?
--2) Какое количество этажей чаще всего в ТРЦ?
--3) Был ли пик в каком году по строительству ТРЦ?
--4) Есть ли парковки, у которых площадь больше, чем у ТРЦ, которым они принадлежат?
--5) Какая доля людей пользуется паркингом и развлекатьной зоной?
------1-------
with max_res as (select person_id, COUNT(center_id) as count
                 from OWNER
                 group by person_id
                 order by count desc)
select person_id, center_id
from OWNER
where person_id = (
    select person_id
    from max_res
    where count = (select MAX(count) from max_res));

------2--------
select number_of_storeys_cnt, COUNT(center_id) as count
from center
group by number_of_storeys_cnt
order by count desc;


-------3---------
with res_year as (select center_id, date_part('year', year_built_dt) as year
                  from CENTER)
select res_year.year, COUNT(res_year.center_id)
from res_year
group by res_year.year
order by COUNT(res_year.center_id) DESC;


-------4---------
select parking.parking_id, parking.square_amt as parking_square, aa.area_id, aa.square_amt as area_square
from parking
         inner join all_area aa on PARKING.area_id = aa.area_id
where parking.square_amt >= aa.square_amt;

--------5---------
with all_people as (
    select distinct person_id
    from visitor_parking
    union
    select distinct person_id
    from visitor_amenity_area),
     inter_people as (select distinct person_id
                      from visitor_parking
                      intersect
                      select distinct person_id
                      from visitor_amenity_area)
select ((select 1.0 * COUNT(*) from inter_people) / (select COUNT(*) from all_people)) * 100 as percentage;