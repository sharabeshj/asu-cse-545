drop table if exists friends;

create table "friends" (
    id serial primary key,
    name varchar(255),
    room integer
);

-- DATA 
insert into friends (id, name, room) values 
    (1, 'Sharabesh', 49),
    (2, 'Arvind', 49),
    (3, 'Anirudh', 201),
    (4, 'Sriram', 201),
    (5, 'Mario', 49);