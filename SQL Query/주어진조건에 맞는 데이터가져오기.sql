# Where 조건식
# select 컬럼이름 from 테이블 where 조건식

# 비교연산자
# =, !=, >, >=, <, <=

select * from mypokemon;

# in (A,B)=> 컬럼=A or 컬럼=B
# Like=특정 문자열 포함된 데이터 선택하는 연산자
# % 0개 이상의 문자 %e=> e로 끝나는 문자열, e% e로 시작하는 문자열, %e% e를 포함한 문자열
# _ 1개의 문자
# select 컬럼이름 from 테이블 where 조건식 Like ~
# Is null, is not null 로 사용

#실습
select * from mypokemon;

# Mission 1
select type from mypokemon where name='eevee';

# Mission 2
select attack, defense from mypokemon where name='caterpie';

# Mission 3
select * from mypokemon where weight > 6;

# Mission 4
select name from mypokemon where height > 0.5 and weight >= 6;

# Mission 5
select name as "weak_pokemon" from mypokemon where attack < 50 or defense < 50;

# Mission 6
select * from mypokemon where type!='normal';

# Mission 7
select name, type from mypokemon where type in ('normal','fire','water', 'grass');

# Mission 8
select name, attack from mypokemon where attack between 40 and 60;

# Mission 9
select name from mypokemon where name Like '%e%';

# Mission 10
select * from mypokemon where name Like '%i%' and speed <=50;

# Mission 11
select name, height, weight from mypokemon where name Like '%chu';

# Mission 12
select name, defense from mypokemon where name Like '%e' and defense < 50;

# Mission 13
select * from mypokemon;
select name, attack, defense from mypokemon where abs(attack-defense) >= 10;

# Mission 14
select name,attack+defense+speed as 'total' from mypokemon where attack+defense+speed >=150;