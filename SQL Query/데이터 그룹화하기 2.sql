use pokemon;

# mission1
select * from mypokemon;
select name, if(number<150,'old','new') as age from mypokemon;

# mission2
select name, if(attack+defense < 100, 'weak', 'strong') as strong from mypokemon;

# mission3
select type, if(avg(attack)>60,1,0) as is_strong_type from mypokemon group by type;

# mission 4
select name, case
	when attack > 100 and defense > 100 then 1
    when attack < 100 or defense < 100 then 0
    else null
end as ace
from mypokemon;

# mission 5
select name, case
	when number < 100 then '<100'
    when number < 200 then '<200'
    else '<500'
end as number_bin
from mypokemon;

select name, case
	when number >= 150 and attack >=50 then 'new_strong'
    when number >=150 and attack <50 then 'new_weak'
    when number < 150 and attack >=50 then 'old_strong'
    else 'old_weak'
end as age_attack
from mypokemon;

select type, case
	when count(1)=1 then 'solo'
    when count(1) > 3 then 'major'
    else 'minor'
end as count_by_type
from mypokemon
group by type;



































