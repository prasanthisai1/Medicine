/*seeker table creation*/

create table seeker(
    sname varchar2(30),
    semail varchar2(30) primary key,
    spswrd varchar2(30),
    sphone varchar2(10),
    saddress varchar2(100)
);

/*Stored Procedure to insert a record into seeker table table*/

create or replace procedure new_seeker(
    sname varchar2,
    semail varchar2,
    spwd varchar2,
    sphone varchar2,
    saddr varchar2) is

begin
insert into seeker values(sname,semail,spwd,sphone,saddr);
Commit;
End;
/

/*Function to verify Login*/

create or replace function verifylogin(
    mail varchar2,
    pw varchar2) return number is
  r number;

begin
select count(*) into r from seeker where semail=mail and spswrd=pw;
if r>0 then
return 1;
else
return 0;
end if;
end;
/
