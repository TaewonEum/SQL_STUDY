# 조건에 조건 더하기

select * from mypokemon;
select * from ability;

INSERT INTO ability (number, type, height, weight, attack, defense, speed)
VALUES (10, 'bug', 0.3, 2.9, 30, 35, 45),
(25, 'electric', 0.4, 6, 55, 40, 90),
(26, 'electric', 0.8, 30, 90, 55, 110),
(133, 'normal', 0.3, 6.5, 55, 50, 55),
(152, 'grass', 0.9, 6.4, 49, 65, 45);
# where 서브쿼리 하나의 컬럼에 사용해야함 EXIST 빼고
# A in(서브쿼리) 내에 있다
# A < ALL(서브쿼리) 보다 작다
# A > ALL(서브쿼리) 보다 크다 #최소값보다 크면됨 
# A < ANY(서브쿼리) 하나라도 작다 #최대값보다 작으면 됨
# A > ANY(서브쿼리) 하나라도 크다
# EXISTS(서브쿼리) 존재한다 #값이 있는지 없는지 확인하는 쿼리
# Not EXISTS(서브쿼리) 존재하지않는다

select number
from ability
where height < (select avg(height) from ability);

select * from ability;
select number
from ability
where attack < ALL(select attack from ability where type='electric');

#####################################
drop table mypokemon;

CREATE TABLE mypokemon (
number INT,
name VARCHAR(20)
);

INSERT INTO mypokemon (number, name)
VALUES (10, 'caterpie'),
(25, 'pikachu'),
(26, 'raichu'),
(133, 'eevee'),
(152, 'chikoirita');

drop table ability;

CREATE TABLE ability (
number INT,
type VARCHAR(10),
height FLOAT,
weight FLOAT,
attack INT,
defense INT,
speed int
);

INSERT INTO ability (number, type, height, weight, attack, defense, speed)
VALUES (10, 'bug', 0.3, 2.9, 30, 35, 45),
(25, 'electric', 0.4, 6, 55, 40, 90),
(26, 'electric', 0.8, 30, 90, 55, 110),
(133, 'normal', 0.3, 6.5, 55, 50, 55),
(152, 'grass', 0.9, 6.4, 49, 65, 45);

select * from mypokemon;
select * from ability;

# Mission 1
select number from ability where weight=(select max(weight) from ability);

# Mission 2
select number from ability where speed < ANY(select attack from ability where type='electric');

# Mission 3
select name from mypokemon where Exists (select number from ability where attack > defense);

##############################

# Mission 1
select * from mypokemon;
select * from ability;

select name, (select height from ability where number=133) as height, (select weight from ability 
where number=133) as weight from mypokemon where number=133;

# Mission 2
select number,speed from (select number, speed, dense_rank() over(order by speed desc) as speed_rank from ability) as A
where speed_rank=2;

# Mission 3
select name from mypokemon left join ability on mypokemon.number=ability.number where 
defense > ALL(select defense from ability where type='electric');

# join 없이
select name from mypokemon
where number in (select number from ability where defense > ALL (select defense from ability where type='electric'))