-- 3-a
create database homework;

-- 3-c
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

-- 3-d
grant select on friends to sub;

-- 3-e
drop table if exists notes;

create table notes 
    (
        id serial primary key,
        note varchar(255)
    );

--Data
insert into notes values 
    (1, 'Task1'),
    (2, 'Task2'),
    (3, 'Task3'),
    (4, 'Task4'),
    (5, 'Task5');

grant select on notes to sjayar26;
grant all privileges on notes_id_seq to sjayar26;

-- 3-f
select setval('notes_id_seq', max(id)) from notes;

insert into notes (note) values ('New Task');

-- 3-g
grant select on friends to thirduser;

revoke all privileges on notes from thirduser;

-- 3-h

select * from fiends;

select * from notes;

-- 3-i
create group noteusers;

grant select on notes to noteusers;

--3-j
alter group noteusers add user thirduser;

select * from notes;

