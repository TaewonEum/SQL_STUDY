# Mission 1
select right(name,3) as 'last_char' from mypokemon;

# Mission 2
select left(name,2) as 'left2' from mypokemon;

# Mission 3
select replace(name,'o','O') as 'bigO' from mypokemon;

# Mission 4
select upper(concat(left(type,1),right(type,1))) as 'type_code' from mypokemon;

# Mission 5
select * from mypokemon where length(name) > 8;

# Mission 6
select ceiling(avg(attack)) from mypokemon;

# Mission 7
select Floor(avg(defense)) from mypokemon;

# Mission 8
select name, POWER(attack,2) from mypokemon where length(name) < 8;

# Mission 9
select name, MOD(attack,2) as 'div2' from mypokemon;

# Mission 10
select name, abs(attack-defense) as 'diff' from mypokemon where attack <=50;

# Mission 11
select now() as 'now_date', time(now()) as 'now_time';

# Mission 12
select * from mypokemon;
select month(capture_date) as 'month_num', monthname(capture_date) as 'month_eng' from mypokemon;

# Mission 13
select dayofweek(capture_date) as 'day_num', dayname(capture_date) as 'day_eng' from mypokemon;

# Mission 14
select year(capture_date) as year, month(capture_date) month, day(capture_date) as day from mypokemon;








