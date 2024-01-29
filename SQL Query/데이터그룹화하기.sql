# 그룹화
# GROUP BY
# GROUP BY 컬럼명

use pokemon;

select type from mypokemon group by type;

select avg(attack) from mypokemon group by type;

select type,avg(attack) from mypokemon group by type;

select type, count(*), count(1), avg(attack), max(defense) from mypokemon group by type;

select type, count(*), count(1), avg(attack), max(defense) from mypokemon group by type having count(1)=2;

select type, count(1), max(attack) from mypokemon where name Like '%a%' group by type having max(attack)> 30
order by 3 desc;

drop table mypokemon;

CREATE TABLE mypokemon (
number int,
name varchar(20),
type varchar(10),
height float,
weight float
);

INSERT INTO mypokemon (number, name, type, height, weight)
VALUES (10, 'caterpie', 'bug', 0.3, 2.9),
(25, 'pikachu', 'electric', 0.4, 6),
(26, 'raichu', 'electric', 0.8, 30),
(125, 'electabuzz', 'electric', 1.1, 30),
(133, 'eevee', 'normal', 0.3, 6.5),
(137, 'porygon', 'normal', 0.8, 36.5),
(152, 'chikoirita', 'grass', 0.9, 6.4),
(153, 'bayleef', 'grass', 1.2, 15.8),
(172, 'pichu', 'electric', 0.3, 2),
(470, 'leafeon', 'grass', 1, 25.5); 

select * from mypokemon;

# Mission 1
select * from mypokemon;
select type, avg(weight) from mypokemon where length(name) > 5 group by type having avg(weight) >= 20 order by 2 desc;

# Mission 2
select * from mypokemon;
select type, max(height), min(height) from mypokemon 
where number < 200 group by type having max(weight) >=10 and min(weight) >=2
order by 3 desc, 2 desc;

##################################
select * from mypokemon;
# Mission 1
select type, avg(height) from mypokemon group by type;

# Mission 2
select type, avg(weight) from mypokemon group by type;

# Mission 3
select type, avg(height), avg(weight) from mypokemon group by type;

# Mission 4
select type from mypokemon group by type having avg(height) >= 0.5;

# Mission 5
select type from mypokemon group by type having avg(weight) >=20;

 # Mission 6
 select type, sum(number) from mypokemon group by type;

# Mission 7
select type, count(1) 
from mypokemon
where height >= 0.5
group by type;

# Mission 8
select type, min(height) from mypokemon group by type;

# Mission 9
select type, max(weight) from mypokemon group by type;

# Mission 10
select type
from mypokemon
group by type
having min(height) > 0.5 and max(weight) <30;
