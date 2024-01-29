# 규칙 만들기
# IF 사용
# IFNULL(컬럼, NULL일때 값)
select name, if(height>0.3,'tall','small') as height_class from mypokemon;

# 여러조건 만들기
# CASE()

select name,
case
	when attack>1 then 'very tall'
    when attack>0.5 then 'tall'
    else 'small'
End as height_class
from mypokemon;

# 함수만들기
# create function 함수이름 (입력값 데이터타입)
# drop function 함수이름

set global log_bin_trust_function_creators=1;
select * from mypokemon;

delimiter //

create function getability1(attack INT, defense INT)
	returns INT
begin
	declare a int;
    declare b int;
    declare ab int;
    set a=attack;
    set b=defense;
    select a+b into ab;
    return ab;
end

//
delimiter ;

select name, getability1(attack,defense) as sum_of_hw from mypokemon;

# Mission 1

drop table mypokemon;

CREATE TABLE mypokemon (
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
(125, 'electabuzz', 'electric', 83, 57),
(133, 'eevee', 'normal', 55, 50),
(137, 'porygon', 'normal', 60, 70),
(152, 'chikoirita', 'grass', 49, 65),
(153, 'bayleef', 'grass', 62, 80),
(172, 'pichu', 'electric', 40, 15),
(470, 'leafeon', 'grass', 110, 130);

# Mission 1
set global log_bin_trust_function_creators=1;

delimiter //

create function isStrong(attack INT,defense INT)
	returns varchar(20)
    
begin
	declare a int;
    declare b int;
    declare isstrong varchar(20);
    set a=attack;
    set b=defense;
    select case
		when a+b>120 then 'very strong'
        when a+b>90 then 'strong'
        else 'not strong'
		end into isstrong;
	return isstrong;
end

//
delimiter ;