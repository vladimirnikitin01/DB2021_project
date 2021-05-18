set search_path = Center;
-------------Вставка данных--------------
insert into OWNER(person_id, center_id)
values (1, 100);
insert into OWNER(person_id, center_id)
values (1, 101);
insert into OWNER(person_id, center_id)
values (1, 102);
insert into OWNER(person_id, center_id)
values (2, 103);
insert into OWNER(person_id, center_id)
values (3, 104);
insert into OWNER(person_id, center_id)
values (4, 105);
insert into OWNER(person_id, center_id)
values (5, 106);
insert into OWNER(person_id, center_id)
values (6, 107);
insert into OWNER(person_id, center_id)
values (7, 108);

insert into CENTER(center_id, area_id, year_built_dt, number_of_storeys_cnt)
values (100, 1000, '1999-05-08', 3);
insert into CENTER(center_id, area_id, year_built_dt, number_of_storeys_cnt)
values (101, 1001, '2001-06-10', 1);
insert into CENTER(center_id, area_id, year_built_dt, number_of_storeys_cnt)
values (102, 2000, '2005-04-27', 4);
insert into CENTER(center_id, area_id, year_built_dt, number_of_storeys_cnt)
values (103, 7000, '2007-03-9', 2);
insert into CENTER(center_id, area_id, year_built_dt, number_of_storeys_cnt)
values (104, 10, '2007-9-23', 1);
insert into CENTER(center_id, area_id, year_built_dt, number_of_storeys_cnt)
values (105, 9, '2009-10-05', 4);
insert into CENTER(center_id, area_id, year_built_dt, number_of_storeys_cnt)
values (106, 100, '1999-8-06', 3);
insert into CENTER(center_id, area_id, year_built_dt, number_of_storeys_cnt)
values (107, 1003, '1999-9-05', 4);
insert into CENTER(center_id, area_id, year_built_dt, number_of_storeys_cnt)
values (108, 5000, '2000-10-01', 5);

insert into ALL_AREA(area_id, square_amt)
values (1000, 9652);
insert into ALL_AREA(area_id, square_amt)
values (1001, 7586);
insert into ALL_AREA(area_id, square_amt)
values (2000, 6249);
insert into ALL_AREA(area_id, square_amt)
values (7000, 9443);
insert into ALL_AREA(area_id, square_amt)
values (10, 9872);
insert into ALL_AREA(area_id, square_amt)
values (9, 9549);
insert into ALL_AREA(area_id, square_amt)
values (100, 4210);
insert into ALL_AREA(area_id, square_amt)
values (1003, 3389);
insert into ALL_AREA(area_id, square_amt)
values (5000, 6418);

insert into PARKING(parking_id, area_id, square_amt)
values (1, 1000, 500);
insert into PARKING(parking_id, area_id, square_amt)
values (2, 1001, NULL);
insert into PARKING(parking_id, area_id, square_amt)
values (3, 2000, NULL);
insert into PARKING(parking_id, area_id, square_amt)
values (4, 7000, NULL);
insert into PARKING(parking_id, area_id, square_amt)
values (5, 10, 2500);
insert into PARKING(parking_id, area_id, square_amt)
values (6, 9, 9549);
insert into PARKING(parking_id, area_id, square_amt)
values (7, 4210, NULL);
insert into PARKING(parking_id, area_id, square_amt)
values (8, NULL, NULL);
insert into PARKING(parking_id, area_id, square_amt)
values (9, NULL, 3000);


insert into AMENITY_AREA(amenity_area_id, area_id, square_amt)
values (1, 1000, NULL);
insert into AMENITY_AREA(amenity_area_id, area_id, square_amt)
values (2, 1001, NULL);
insert into AMENITY_AREA(amenity_area_id, area_id, square_amt)
values (3, 2000, NULL);
insert into AMENITY_AREA(amenity_area_id, area_id, square_amt)
values (4, 7000, NULL);
insert into AMENITY_AREA(amenity_area_id, area_id, square_amt)
values (5, 10, 2000);
insert into AMENITY_AREA(amenity_area_id, area_id, square_amt)
values (6, 9, 3000);
insert into AMENITY_AREA(amenity_area_id, area_id, square_amt)
values (7, 4210, NULL);
insert into AMENITY_AREA(amenity_area_id, area_id, square_amt)
values (8, NULL, 1000);
insert into AMENITY_AREA(amenity_area_id, area_id, square_amt)
values (9, NULL, NULL);

insert into VISITOR_PARKING(person_id, parking_id)
values (11, 1);
insert into VISITOR_PARKING(person_id, parking_id)
values (11, 2);
insert into VISITOR_PARKING(person_id, parking_id)
values (12, 1);
insert into VISITOR_PARKING(person_id, parking_id)
values (21, 4);
insert into VISITOR_PARKING(person_id, parking_id)
values (22, 5);
insert into VISITOR_PARKING(person_id, parking_id)
values (23, 4);
insert into VISITOR_PARKING(person_id, parking_id)
values (23, 14);
insert into VISITOR_PARKING(person_id, parking_id)
values (23, 15);
insert into VISITOR_PARKING(person_id, parking_id)
values (23, 16);

insert into VISITOR_AMENITY_AREA(person_id, amenity_area_id)
values (11, 2);
insert into VISITOR_AMENITY_AREA(person_id, amenity_area_id)
values (12, 1);
insert into VISITOR_AMENITY_AREA(person_id, amenity_area_id)
values (31, 4);
insert into VISITOR_AMENITY_AREA(person_id, amenity_area_id)
values (32, 5);
insert into VISITOR_AMENITY_AREA(person_id, amenity_area_id)
values (33, 4);
insert into VISITOR_AMENITY_AREA(person_id, amenity_area_id)
values (23, 14);
insert into VISITOR_AMENITY_AREA(person_id, amenity_area_id)
values (25, 15);
insert into VISITOR_AMENITY_AREA(person_id, amenity_area_id)
values (24, 16);

insert into EMPLOYEE(person_id, timetable_id)
values (11, 0);
insert into EMPLOYEE(person_id, timetable_id)
values (12, 1);
insert into EMPLOYEE(person_id, timetable_id)
values (21, 2);
insert into EMPLOYEE(person_id, timetable_id)
values (22, 0);
insert into EMPLOYEE(person_id, timetable_id)
values (23, 1);
insert into EMPLOYEE(person_id, timetable_id)
values (24, 2);
insert into EMPLOYEE(person_id, timetable_id)
values (25, 0);
insert into EMPLOYEE(person_id, timetable_id)
values (34, 1);

insert into TIMETABLE(opening_hours_desc, timetable_id)
values ('', 0);
insert into TIMETABLE(opening_hours_desc, timetable_id)
values ('1_1_1_1_1_0_0_0', 1);
insert into TIMETABLE(opening_hours_desc, timetable_id)
values ('1_1_0_0_1_1_0_1', 2);
insert into TIMETABLE(opening_hours_desc, timetable_id)
values ('0_1_1_0_0_1_1_1', 4);
insert into TIMETABLE(opening_hours_desc, timetable_id)
values ('1_1_1_1_1_1_1_0', 3);


insert into TIMETABLE_X_CENTER(center_id, timetable_id)
values (100, 3);
insert into TIMETABLE_X_CENTER(center_id, timetable_id)
values (101, 3);
insert into TIMETABLE_X_CENTER(center_id, timetable_id)
values (102, 3);
insert into TIMETABLE_X_CENTER(center_id, timetable_id)
values (103, 3);
insert into TIMETABLE_X_CENTER(center_id, timetable_id)
values (104, 3);
insert into TIMETABLE_X_CENTER(center_id, timetable_id)
values (105, 3);
insert into TIMETABLE_X_CENTER(center_id, timetable_id)
values (106, 3);
insert into TIMETABLE_X_CENTER(center_id, timetable_id)
values (107, 3);
insert into TIMETABLE_X_CENTER(center_id, timetable_id)
values (108, 3);
insert into TIMETABLE_X_CENTER(center_id, timetable_id)
values (108, 1);