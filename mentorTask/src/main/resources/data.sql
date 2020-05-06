-- Include data in user table
insert into user(user_name, password) values('SSBala235', 'MrX_1125');
insert into user(user_name, password) values('AKDon256', 'iamX_185');

-- Include data in country table
insert into country(co_name) values('India');
insert into country(co_name) values('USA');

-- Include data in state table
insert into state(st_name, st_co_id) values('Karnataka','1');
insert into state(st_name, st_co_id) values('Tamil Nadu','1');
insert into state(st_name, st_co_id) values('West Bengal','1');

insert into state(st_name, st_co_id) values('California','2');
insert into state(st_name, st_co_id) values('New York','2');
insert into state(st_name, st_co_id) values('Texas','2');

-- Include data in city table
insert into city(ct_name, ct_st_id) values('Bangalore','1');
insert into city(ct_name, ct_st_id) values('Mangalore','1');
insert into city(ct_name, ct_st_id) values('Mysore','1');

insert into city(ct_name, ct_st_id) values('Chennai','2');
insert into city(ct_name, ct_st_id) values('Coimbatore','2');

insert into city(ct_name, ct_st_id) values('Asansol','3');
insert into city(ct_name, ct_st_id) values('Durgapur','3');
insert into city(ct_name, ct_st_id) values('Haldia','3');
insert into city(ct_name, ct_st_id) values('Kharagpur','3');
insert into city(ct_name, ct_st_id) values('Kolkata','3');

insert into city(ct_name, ct_st_id) values('Santa Cruz','4');
insert into city(ct_name, ct_st_id) values('Compton','4');
insert into city(ct_name, ct_st_id) values('Malibu','4');

insert into city(ct_name, ct_st_id) values('Albany','5');
insert into city(ct_name, ct_st_id) values('Buffalo','5');
insert into city(ct_name, ct_st_id) values('New York','5');

insert into city(ct_name, ct_st_id) values('Dallas','6');
insert into city(ct_name, ct_st_id) values('Edinburg','6');
insert into city(ct_name, ct_st_id) values('Texas City','6');
