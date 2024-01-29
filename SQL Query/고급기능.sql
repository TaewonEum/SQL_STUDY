# 고급기능
use pokemon;
select * from ability;
select * from mypokemon;
delete from ability where attack > 50;

update mypokemon
set number=150
where name='chikoirita';

#제약조건
# Not null, unique, default, primary key, foreign key

# DCL
# DDL=>데이터 정의어
# DML=>데이터 조작어
# DCL=>데이터 제어어

use mysql;
select user,host from user;

#권한 부여하기
Grant 권환 on 데이터베이스이름.테이블이름 to 사용자이름@IP주소;
#권한 확인하기
#SHOW GRANTS FOR 사용자이름@IP주소;
#권한 삭제하기
#revoke 권환 ON 데이터베이스이름.테이블이름 FROM 사용자이름@IP주소;
#권한 적용하기
#FLUSH privileges;

#권한 모두 부여하기
#GRANT ALL PRIVILEGES ON mydb.mytb to newuser@%;
#select, insert 권한 부여하기
#grant select, insert on *.* to newuser@%;

# TCL=>트랜잭션 제어어
#트랜잭션
Start transaction; #시작하기
commit; #트랜잭션 확정하기
Rollback; 돌아가기

savepoint 세이브포인트 이름; #세이브 포인트 지정
rollback to 세이브포인트 이름; #세이브 포인트로 돌아가기




