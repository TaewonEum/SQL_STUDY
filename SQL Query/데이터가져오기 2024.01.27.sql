select 123;
select 1+2+3;
select 'ABC';

# From 테이블이름
# select 컬럼이름 from 데이터베이스이름.테이블이름;

#별명 붙이기
# select 컬럼이름 as 컬럼 별명 from 데이터베이스이름.테이블이름;

# LIMIT
# select number,name from pokemon.mypokemon LIMIT 2;

# Distinct 중복제거하기

# 실습

# Mission 1
select 123 * 456;

# Mission 2
select 2310/30;

# Mission 3
select '피카츄'  as '포켓몬';


# 테이블 만들기
use pokemon;

create table mypokemon (
	number int, 
    name varchar(20), 
    type varchar(20),
    height float, 
    weight float, 
    attack float, 
    defense float, 
    speed float
    );

INSERT INTO mypokemon (number, name, type, height, weight, attack, defense,speed)
VALUES (10, 'caterpie', 'bug', 0.3, 2.9, 30, 35, 45),
	(25, 'pikachu', 'electric' , 0.4, 6, 55, 40, 90),
    (26, 'raichu' , 'electric' , 0.8, 30, 90, 55, 110),
    (133, 'eevee', 'normal', 0.3, 6.5, 55, 50, 55),
    (152, 'chikoirita', 'grass', 0.9, 6.4, 49, 65, 45);
    
# Mission 4
select * from mypokemon;

# Mission 5
select name from mypokemon;

# Mission 6
select name, height, weight from mypokemon;

# Mission 7
select distinct height from mypokemon;

# Mission 8
select attack * 2 as 'attack2' from mypokemon;

# Mission9
select name as '이름' from mypokemon;

# MISSION 10
select attack as '공격력', defense as '방어력' from mypokemon;

# Mission 11
select height*100 as "height(cm)" from mypokemon;

# Mission 12
select * from mypokemon limit 1;

# Mission 13
select name as '영문명', height as "키(m)", weight as "몸무게(kg)" from mypokemon LIMIT 2;

# Mission 14
select * from mypokemon;

# Mission 14
select name, attack+defense+speed as 'total' from mypokemon;

# Mission 15
select weight/(height^2) as 'BMI' from mypokemon;

