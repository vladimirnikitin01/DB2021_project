set search_path = Center;
-----------------Создать 2 триггера на любые таблицы БД..-----------------
CREATE OR REPLACE FUNCTION my_error()
    RETURNS trigger AS
$$
BEGIN
    IF new.square_amt != old.square_amt THEN
        RAISE EXCEPTION 'cannot change square amenity_error';
    END IF;
    return new;
END;
$$
    LANGUAGE plpgsql;

create trigger trigger_add_square_amenity
    before update
    on AMENITY_AREA
    for each row
execute procedure my_error();

--------теперь тригер, что если меняется id centr (например, поменялся юр адрес, то меняем у владельца юр адрес недвижки)

CREATE OR REPLACE FUNCTION change_id_centr()
    RETURNS trigger AS
$$
BEGIN
    IF new.center_id != old.center_id THEN
        update OWNER
        set center_id=new.center_id
        where center_id = old.center_id;
    END IF;
    return new;
END;
$$ LANGUAGE plpgsql;
create trigger change_address_change
    before update
    on CENTER
    for each row
execute procedure change_id_centr();


------теперь тригер, если мы сносим здание, то у владельца должен пропадать объект

CREATE OR REPLACE FUNCTION del_id_centr()
    RETURNS trigger AS
$$
BEGIN
    delete
    from OWNER
    where center_id = old.center_id;
    return new;
END;
$$ LANGUAGE plpgsql;
create trigger del_centr
    before delete
    on CENTER
    for each row
execute procedure del_id_centr();