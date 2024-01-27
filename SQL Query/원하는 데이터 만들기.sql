# 데이터 정렬
# Order by 컬럼이름=> 오룸차순
# order by 컬럼이름 desc=>내림차순
# order by 컬럼이름1, 컬럼이름2-> 순서대로 정렬

# select * from mypokemon where ~ order by 컬럼이름;

select number,name from mypokemon order by number desc;
# Rank() over (order by 컬럼이름)
# select ~ rank() (over order by 컬럼이름 desc)

#문자형 데이터
# select part, Locate('i',lyric) from bts_music;
# select part, substring(lyric,3) from bts_music;

#숫자형 데이터
#CEILING 올림, FLOOR 내림
#ROUND 반올림, TRUNCATE 소숫점 자리수까지 버림
# POWER 제곱
# MOD 나머지 반환

#날짜형 데이터
select NOW();
select current_date();
select current_time();

select Now(), year(now());
select month(now());
select monthname(now());
select dayname(now());
select dayofmonth(now());
select dayofweek(now());
select week(now());
select hour(now());
select minute(now());
select date_format('1997-04-14 04:25:00', '%Y년 %m월 %d일 %H시 %i분 %s초') as '날짜';
# datediff(날짜1, 날짜2)->날짜차이
# timediff(시간1, 시간2)->시간차이

# 실습
drop table mypokemon;

CREATE TABLE mypokemon (
number INT,
name VARCHAR(20),
type VARCHAR(10),
attack INT,
defense INT,
capture_date DATE
);

INSERT INTO mypokemon (number, name, type, attack, defense, capture_date)
VALUES (10, 'caterpie', 'bug', 30, 35, '2019-10-14'),
(25, 'pikachu', 'electric', 55, 40, '2018-11-04'),
(26, 'raichu', 'electric', 90, 55, '2019-05-28'),
(125, 'electabuzz', 'electric', 83, 57, '2020-12-29'),
(133, 'eevee', 'normal', 55, 50, '2021-10-03'),
(137, 'porygon', 'normal', 60, 70, '2021-01-16'),
(152, 'chikoirita', 'grass', 49, 65, '2020-03-05'),
(153, 'bayleef', 'grass', 62, 80, '2022-01-01');

select * from mypokemon;

# Mission 1
select name, length(name) from mypokemon order by length(name);

# Mission 2
select name, rank () over (order by defense desc) as 'defense_rank' from mypokemon;

# Mission 3
select * from mypokemon;
select name, datediff('2022-02-14', capture_date) as 'days' from mypokemon;