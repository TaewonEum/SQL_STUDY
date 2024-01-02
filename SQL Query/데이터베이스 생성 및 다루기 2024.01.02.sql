# DB(스키마) 생성
CREATE DATABASE pokemon;
SHOW DATABASES;
USE pokemon;

# 테이블 생성
Create table mypokemon (
	number INT,
    name VARCHAR(20),
    type VARCHAR(10)
);

#테이블에 값 넣기
INSERT INTO mypokemon (number,name,type)
values(10,'caterpie','bug'),
	  (25,'pikachu','electric'),
      (133,'eevee','normal');
      
select * from mypokemon;

#새로운 테이블 생성하기
create table mynewpokemon (
	number INT,
    name VARCHAR(20),
    type VARCHAR(10)
);

# 새로운 테이블에 값 넣기
INSERT INTO mynewpokemon (number,name,type)
values(77,'포니타','불꽃'),
	  (132,'메타몽','노말'),
      (151,'뮤','에스퍼');
      
select * from mynewpokemon;

# 테이블명 변경 및 컬럼명 변경
alter table mypokemon rename myoldpokemon;
select * from myoldpokemon;
alter table myoldpokemon change column name eng_name VARCHAR(20);

select * from myoldpokemon;

# 컬럼명 변경
alter table mynewpokemon change column name kor_name VARCHAR(20);

select * from mynewpokemon;

#테이블 값만 지우기
truncate table myoldpokemon;
select * from myoldpokemon;

#테이블 전체 지우기
drop table if exists mynewpokemon;
select * from mynewpokemon;

