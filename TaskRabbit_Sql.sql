create table customers(
uid int primary key identity(1,1),
name varchar(20),
email varchar(50),
pass varchar(50),
mobile decimal(10) check(mobile>=1800000000 and mobile<=9999999999)
)

select * from customers

create procedure sp_login1
(@email varchar(50),@pass varchar(50))
as begin
select * from customers where email=@email and pass=@pass
end

create procedure sp_register1
(@name varchar(20),@email varchar(50),@pass varchar(50),@mobile decimal(10))
as begin
insert into customers values(@name,@email,@pass,@mobile);
end

insert into customers values('vishwajitha','vishwajitha04@gmail.com','vishwa25',9247456483)