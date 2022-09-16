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