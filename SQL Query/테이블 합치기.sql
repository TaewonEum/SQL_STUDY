# 테이블 합치기
# Join

# inner join 두 테이브렝 있는 값만 합치기
#select 컬럼이름 from 테이블 A inner join 테이블 B on 컬럼A=컬럼B where~

# left join
# select 컬럼이름 from 테이블이름 A left join 테이블 B on 컬럼A=컬럼B where~ 


# right join
# select  컬럼이름 from 테이블이름 A right join 테이블 B on 컬럼A=컬럼B where~ 

# outer join
# select 컬럼이름 from 테이블이름 A  left join 테이블이름 B on 컬럼 A=B
# UNION # 두 쿼리 중복 제외하고 합쳐서
# select 컬럼 from 테이블 A 이름 right join 테이블 B on 컬럼 A=B

# Cross join
# select from mypokemon cross join ability;
# 각 행에 join하는 row 다 합쳐줌

# self join SELECT [컬럼 이름]
#FROM [테이블 A 이름] AS t1
#INNER JOIN [테이블 A 이름 ] AS t2
#ON t1.[컬럼 A 이름] = t2.[컬럼 A 이름]
#WHERE 조건식


#############################3
drop table mypokemon;
drop table ability;

CREATE TABLE mypokemon
(
number INT,
name VARCHAR(20),
type VARCHAR(10)
);

INSERT INTO mypokemon (number, name, type)
VALUES (10, 'caterpie', 'bug'),
(25, 'pikachu', 'electric'),
(26, 'raichu', 'electric'),
(133, 'eevee', 'normal'),
(152, 'chikoirita', 'grass');

CREATE TABLE ability (
number INT,
height FLOAT,
weight FLOAT,
attack INT,
defense INT,
speed int
);

INSERT INTO ability (number, height, weight, attack, defense, speed)
VALUES (10, 0.3, 2.9, 30, 35, 45),
(25, 0.4, 6, 55, 40, 90),
(26,0.8,30,90,55,110),
(125, 1.1, 30, 83, 57, 105),
(133, 0.3, 6.5, 55, 50, 55),
(137, 0.8, 36.5, 60, 70, 40),
(152, 0.9, 6.4, 49, 65, 45),
(153, 1.2, 15.8, 62, 80, 60),
(172, 0.3, 2, 40, 15, 60),
(470, 1, 25.5, 110, 130, 95);

# Mission 1
select * from mypokemon;
select * from ability;

select name, attack, defense from mypokemon left join ability on mypokemon.number=ability.number;

# Mission 2
select ability.number, name from ability left join mypokemon on mypokemon.number=ability.number;

##############################################

# Mission 1
select type, avg(height) from mypokemon left join ability on mypokemon.number=ability.number
group by type;

# Mission 2
select type, avg(weight) from mypokemon left join ability on mypokemon.number=ability.number
group by type;

# Mission 3
select type, avg(height) ,avg(weight) from mypokemon left join ability on mypokemon.number=ability.number
group by type;

# Mission 4
select mypokemon.number, name, attack, defense from mypokemon left join ability on mypokemon.number=ability.number where mypokemon.number > 100;
 
# Mission 5
select name from mypokemon left join ability on mypokemon.number=ability.number
order by attack+defense desc;

# Mission 6
select name from mypokemon left join ability on mypokemon.number=ability.number order by speed desc Limit 1;