select version();

CREATE schema if not exists Center;

set search_path = Center;

--теперь мы должны создать все необходимые таблицы согласно нашей физической модели

DROP TABLE if exists CENTER cascade;
CREATE TABLE CENTER
(
    center_id             smallint,
    area_id               integer,
    year_built_dt         date,
    number_of_storeys_cnt smallserial,
    PRIMARY KEY (center_id)
);

DROP TABLE if exists OWNER cascade;
CREATE TABLE OWNER
(
    center_id smallint,
    person_id integer,
    PRIMARY KEY (center_id)
);

DROP TABLE if exists ALL_AREA cascade;
CREATE TABLE ALL_AREA
(
    area_id    integer,
    square_amt integer,
    PRIMARY KEY (area_id)
);

DROP TABLE if exists PARKING cascade;
CREATE TABLE PARKING
(
    parking_id integer,
    area_id    integer,
    square_amt integer,
    PRIMARY KEY (parking_id)
);

DROP TABLE if exists AMENITY_AREA cascade;
CREATE TABLE AMENITY_AREA
(
    amenity_area_id integer,
    area_id         integer,
    square_amt      integer,
    PRIMARY KEY (amenity_area_id)
);

DROP TABLE if exists VISITOR_AMENITY_AREA cascade;
CREATE TABLE VISITOR_AMENITY_AREA
(
    amenity_area_id integer,
    person_id       integer,
    PRIMARY KEY (amenity_area_id, person_id)
);

DROP TABLE if exists VISITOR_PARKING cascade;
CREATE TABLE VISITOR_PARKING
(
    parking_id integer,
    person_id  integer,
    PRIMARY KEY (parking_id, person_id)
);

DROP TABLE if exists EMPLOYEE cascade;
CREATE TABLE EMPLOYEE
(
    timetable_id integer,
    person_id    integer,
    PRIMARY KEY (person_id)
);

DROP TABLE if exists TIMETABLE cascade;
CREATE TABLE TIMETABLE
(
    timetable_id       integer,
    opening_hours_desc varchar(15),
    PRIMARY KEY (timetable_id)
);

DROP TABLE if exists TIMETABLE_X_CENTER cascade;
CREATE TABLE TIMETABLE_X_CENTER
(
    center_id    smallint,
    timetable_id integer,
    PRIMARY KEY (timetable_id, center_id)
);