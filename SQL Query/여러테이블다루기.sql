# 합집합
# 쿼리 A union 쿼리 B 또는 쿼리 A union ALL 쿼리 
# select name from mypokemon union ~

# 교집합
# select A.name from mypokemon as A inner join friendpokemon as b
# in A.name=B.name;

select * from mypokemon;
select * from ability;

select mypokemon.number from mypokemon inner join ability on mypokemon.number=ability.number;

# 차집합
select mypokemon.number from mypokemon left join ability on mypokemon.number=ability.number 
where ability.number is NULL; #mypokemon에 존재하고 ability에는 존재하지 안흔 데이터

###################################

# Mission

select * from mypokemon;
drop table mypokemon;

CREATE TABLE mypokemon (
number int,
name varchar(20),
type varchar(10),
attack int,
defense int
);

CREATE TABLE friendpokemon (
number int,
name varchar(20),
type varchar(10),
attack int,
defense int
);

INSERT INTO mypokemon (number, name, type, attack, defense)
VALUES (10, 'caterpie', 'bug', 30, 35),
(25, 'pikachu', 'electric', 55, 40),
(26, 'raichu', 'electric', 90, 55),
(133, 'eevee', 'normal', 55, 50),
(152, 'chikoirita', 'grass', 49, 65);

INSERT INTO friendpokemon (number, name, type, attack, defense)
VALUES (26, 'raichu', 'electric', 80, 60),
(125, 'electabuzz', 'electric', 83, 57),
(137, 'porygon', 'normal', 60, 70),
(153, 'bayleef', 'grass', 62, 80),
(172, 'pichu', 'electric', 40, 15),
(470, 'leafeon', 'grass', 110, 130);

# Mission 1
select type from mypokemon union select type from friendpokemon;

# Mission 2
select number, name from mypokemon where type='grass' union all select number, name from friendpokemon where type='grass';

############################################

# Mission 1
select mypokemon.name from mypokemon inner join friendpokemon on mypokemon.name=friendpokemon.name;

# Mission 2
select mypokemon.name from mypokemon left join friendpokemon on mypokemon.name=friendpokemon.name
where friendpokemon.name is null;