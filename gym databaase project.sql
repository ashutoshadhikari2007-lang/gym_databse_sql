DROP DATABASE IF EXISTS gym_management;

CREATE DATABASE gym_management;

USE gym_management;

CREATE TABLE membership_plans(
    plan_id INT PRIMARY KEY NOT NULL,
    plan_name VARCHAR(50),
    duration INT,
    price DECIMAL(10,2) NOT NULL
);

CREATE TABLE trainer(
    trainer_id INT PRIMARY KEY NOT NULL,
    trainer_name VARCHAR(50),
    gender VARCHAR(50),
    age INT,
    specialization VARCHAR(50),
    phone_no VARCHAR(50),
    salary DECIMAL(10,2)
);

CREATE TABLE member(
    member_id INT PRIMARY KEY NOT NULL,
    member_name VARCHAR(50),
    gender VARCHAR(50),
    age INT,
    phone_no VARCHAR(50),
    email_id VARCHAR(50),
    join_date DATE,
    membership_status VARCHAR(50),
    trainer_id INT NOT NULL,
    plan_id INT
); 

ALTER TABLE member
ADD CONSTRAINT fk_member_trainer
FOREIGN KEY (trainer_id)
REFERENCES trainer(trainer_id);

ALTER TABLE member
ADD CONSTRAINT fk_member_plan
FOREIGN KEY (plan_id)
REFERENCES membership_plans(plan_id);

CREATE TABLE payments(
    payment_id INT PRIMARY KEY NOT NULL,
    member_id INT,
    payment_date DATE,
    amount DECIMAL(10,2),
    payment_method VARCHAR(50),
    payment_status VARCHAR(50)
);

ALTER TABLE payments
ADD CONSTRAINT fk_payment_member
FOREIGN KEY (member_id)
REFERENCES member(member_id);

INSERT INTO membership_plans
(plan_id, plan_name, duration, price)
VALUES
(1, 'Monthly', 1, 2500.00),
(2, 'Quarterly', 3, 6500.00),
(3, 'Half-Yearly', 6, 12000.00),
(4, 'Yearly', 12, 22000.00),
(5, 'Student Monthly', 1, 1800.00),
(6, 'Student Quarterly', 3, 5000.00),
(7, 'Couple Monthly', 1, 4500.00),
(8, 'Couple Quarterly', 3, 12000.00),
(9, 'Premium Monthly', 1, 3500.00),
(10, 'Premium Yearly', 12, 30000.00);

SELECT * FROM membership_plans;

insert into trainer (trainer_id,trainer_name,gender,age,specialization,phone_no, salary)
values
(101, 'Aarav Sharma', 'Male', 28, 'Strength Training', '9801001001', 45000.00),
(102, 'Sneha Thapa', 'Female', 26, 'Yoga', '9801001002', 40000.00),
(103, 'Rohan Gurung', 'Male', 32, 'Bodybuilding', '9801001003', 55000.00),
(104, 'Anisha Rai', 'Female', 29, 'Cardio', '9801001004', 42000.00),
(105, 'Sujan Karki', 'Male', 35, 'Weight Loss', '9801001005', 50000.00),
(106, 'Priya Shrestha', 'Female', 31, 'CrossFit', '9801001006', 52000.00),
(107, 'Nabin Tamang', 'Male', 27, 'Functional Training', '9801001007', 46000.00),
(108, 'Kritika Adhikari', 'Female', 25, 'Pilates', '9801001008', 43000.00),
(109, 'Bikash Magar', 'Male', 38, 'Personal Training', '9801001009', 60000.00),
(110, 'Samiksha Gurung', 'Female', 30, 'Nutrition & Fitness', '9801001010', 48000.00);
select* from trainer;

insert into member( member_id,member_name,gender,age,phone_no,email_id,join_date,membership_status,trainer_id,plan_id)
values
(1001, 'Rahul Karki', 'Male', 24, '9811111001', 'rahul.karki@gmail.com', '2026-01-10', 'Active', 101, 1),
(1002, 'Sita Thapa', 'Female', 22, '9811111002', 'sita.thapa@gmail.com', '2026-01-15', 'Active', 102, 5),
(1003, 'Bibek Gurung', 'Male', 29, '9811111003', 'bibek.gurung@gmail.com', '2026-02-01', 'Active', 103, 2),
(1004, 'Anu Rai', 'Female', 26, '9811111004', 'anu.rai@gmail.com', '2026-02-05', 'Active', 104, 1),
(1005, 'Sagar Shrestha', 'Male', 31, '9811111005', 'sagar.shrestha@gmail.com', '2026-02-12', 'Active', 105, 3),
(1006, 'Puja Adhikari', 'Female', 23, '9811111006', 'puja.adhikari@gmail.com', '2026-02-18', 'Active', 106, 5),
(1007, 'Nischal Tamang', 'Male', 27, '9811111007', 'nischal.tamang@gmail.com', '2026-03-01', 'Active', 107, 4),
(1008, 'Riya Shrestha', 'Female', 25, '9811111008', 'riya.shrestha@gmail.com', '2026-03-07', 'Inactive', 108, 6),
(1009, 'Aayush Magar', 'Male', 30, '9811111009', 'aayush.magar@gmail.com', '2026-03-12', 'Active', 109, 9),
(1010, 'Smriti Gurung', 'Female', 28, '9811111010', 'smriti.gurung@gmail.com', '2026-03-20', 'Active', 110, 10),
(1011, 'Kiran Lama', 'Male', 21, '9811111011', 'kiran.lama@gmail.com', '2026-04-02', 'Active', 101, 5),
(1012, 'Mina Khatri', 'Female', 27, '9811111012', 'mina.khatri@gmail.com', '2026-04-08', 'Active', 102, 7),
(1013, 'Roshan KC', 'Male', 34, '9811111013', 'roshan.kc@gmail.com', '2026-04-15', 'Inactive', 103, 4),
(1014, 'Bina Shrestha', 'Female', 24, '9811111014', 'bina.shrestha@gmail.com', '2026-05-01', 'Active', 104, 8),
(1015, 'Prakash Gurung', 'Male', 28, '9811111015', 'prakash.gurung@gmail.com', '2026-05-10', 'Active', 105, 3),
(1016, 'Nisha Tamang', 'Female', 30, '9811111016', 'nisha.tamang@gmail.com', '2026-05-18', 'Active', 106, 9),
(1017, 'Dipesh Rai', 'Male', 26, '9811111017', 'dipesh.rai@gmail.com', '2026-06-01', 'Active', 107, 1),
(1018, 'Karuna Thapa', 'Female', 29, '9811111018', 'karuna.thapa@gmail.com', '2026-06-10', 'Inactive', 108, 6),
(1019, 'Manish Adhikari', 'Male', 32, '9811111019', 'manish.adhikari@gmail.com', '2026-06-15', 'Active', 109, 10),
(1020, 'Sushma Karki', 'Female', 23, '9811111020', 'sushma.karki@gmail.com', '2026-06-20', 'Active', 110, 2);

UPDATE member
SET email_id = 'sushma.karki@gmail.com'
WHERE member_id = 1020;
select*from member;

insert into payments(payment_id,member_id,payment_date,amount,payment_method,payment_status)
values
(5001, 1001, '2026-01-10', 2500.00, 'Cash', 'Paid'),
(5002, 1002, '2026-01-15', 1800.00, 'Card', 'Paid'),
(5003, 1003, '2026-02-01', 6500.00, 'Online', 'Paid'),
(5004, 1004, '2026-02-05', 2500.00, 'Cash', 'Paid'),
(5005, 1005, '2026-02-12', 12000.00, 'Online', 'Paid'),
(5006, 1006, '2026-02-18', 1800.00, 'Card', 'Paid'),
(5007, 1007, '2026-03-01', 22000.00, 'Online', 'Paid'),
(5008, 1008, '2026-03-07', 5000.00, 'Cash', 'Pending'),
(5009, 1009, '2026-03-12', 3500.00, 'Card', 'Paid'),
(5010, 1010, '2026-03-20', 30000.00, 'Online', 'Paid'),
(5011, 1011, '2026-04-02', 1800.00, 'Cash', 'Paid'),
(5012, 1012, '2026-04-08', 4500.00, 'Card', 'Paid'),
(5013, 1013, '2026-04-15', 22000.00, 'Online', 'Paid'),
(5014, 1014, '2026-05-01', 12000.00, 'Cash', 'Paid'),
(5015, 1015, '2026-05-10', 12000.00, 'Online', 'Paid'),
(5016, 1016, '2026-05-18', 3500.00, 'Card', 'Paid'),
(5017, 1017, '2026-06-01', 2500.00, 'Cash', 'Paid'),
(5018, 1018, '2026-06-10', 5000.00, 'Online', 'Pending'),
(5019, 1019, '2026-06-15', 30000.00, 'Card', 'Paid'),
(5020, 1020, '2026-06-20', 6500.00, 'Online', 'Paid');
select*from payments;

select*from membership_plans;
select trainer_name,specialization, salary
from trainer;
select member_name, age, membership_status
from member;
select payment_id, member_id, amount
from payments;

select distinct gender
from trainer;

select distinct specialization
from trainer;

select distinct membership_status 
from member;

select distinct payment_method
from payments;

select age 
from member
where age>25;

select membership_status
from member
where membership_status="Active";

select salary
from trainer
where salary>50000;

select amount 
from payments
where amount >10000;

select price
from membership_plans
where price <5000;

select salary 
from trainer 
order by salary asc;

select salary 
from trainer 
order by salary desc;

select age
from member
order by age asc;

select price
from membership_plans
order by price asc;

select trainer_name
from trainer
limit 5;

select member_name
from member
limit 10;

select plan_name
from membership_plans
limit 3;

select salary 
from trainer
order by salary asc
limit 5;

update member
set phone_no="9761726290"
where member_id=101;

delete from member
where member_id=101;
select*from member;

select member.member_name,trainer.trainer_name,trainer.specialization
from member
inner join trainer
on member.trainer_id=trainer.trainer_id;

select member.member_name,membership_plans.plan_name,membership_plans.duration,membership_plans.price
from membership_plans
inner join member
on member.plan_id=membership_plans.plan_id;

select member.member_name,trainer.trainer_name,trainer.specialization,membership_plans.plan_name,membership_plans.price
from member
inner join trainer
ON member.trainer_id = trainer.trainer_id

INNER JOIN membership_plans
ON member.plan_id = membership_plans.plan_id;

select member.member_name,payments.payment_date,payments.amount,payments.payment_method,payments.payment_status
from member
inner join payments
on member.member_id=payments.member_id;

select count( member_id) as total_member
from member;

select sum(amount) as total
from payments;

select avg(amount) as avg_amount
from payments;

select max(amount) as max_amount
from payments;

select min(amount) as min_amount
from payments;

select count(gender) ,gender as gender
from member
group by gender;

select count(member_id) as total_member
from member
group by membership_status;

select sum(amount) as total_anount,payment_method
from payments
group by payment_method;

select avg(age) as age,gender
from member
group by gender;

select max(salary) as heighst_salary,specialization
from trainer
group by specialization;

select min(price) as price,duration
from membership_plans
group by duration;

select trainer_id, count(member_id) as member_id,avg(age) as average_age
from member
group by trainer_id;

select payment_status,count(payment_id) as payment_id ,sum(amount) as total
from payments
group by payment_status;

select count(duration) as total_plans, avg(price) as avg_price,max(price) as max_price,min(price) as low_price
from membership_plans
group by duration;

select trainer_id, count(member_id) as total_member 
from member
group by trainer_id
having count(member_id)>3;

select payment_method,sum(amount) as total_amount
from payments
group by payment_method
having sum(amount)>2000;

select gender,avg(age) as avg_age
from member
group by gender
having avg(age)>25;

	select specialization,max(salary) as salary
	from trainer
	group by specialization
	having max(salary)>50000;

select member_name,age,
case
when age <25 then "young"
when age between 25 and 30 then "adult"
else "senior"
end as age_category
from member;

select member_name,membership_status,
case 
when membership_status="Active" then "currently_active"
when membership_status="Inactive" then "Not_active"
else "Unkown"
end as status_category
from member;

select payment_id,amount,
case 
when amount <500 then "low"
when amount between 5000 and 15000 then "medium"
else "high"
end as payment_category
from payments;

select trainer_name,salary,
case 
when salary <45000 then "low"
when salary between 45000 and 55000 then "medium"
else "high"
end as salary_category
from trainer;

select member_name,plan_name,price,
case
when price <5000 then "budget"
when price between 5000 and 15000 then "standard"
else "premium"
end as price_category
from member
inner join membership_plans
on member.plan_id=membership_plans.plan_id;

select member_name,join_date,
year(join_date) as join_date
from member;

select member_name,join_date,
month(join_date) as joined_month
from member;

select member_name,join_date,
monthname(join_date) as month_name
from member;

select member_name,join_date,
datediff(curdate(),join_date) as number_of_days
from member;

SELECT
    MONTHNAME(join_date) AS join_month,
    COUNT(member_id) AS total_members
FROM member
GROUP BY MONTHNAME(join_date);

select payment_id,member_id,payment_date,amount
from payments
where month(payment_date)=3 and year(payment_date)=2026;

select monthname(payment_date)as payment_month,sum(amount) as total_amount
from payments
group by payment_date;

select member_name,join_date
from member
where month(join_date)>4;

select member.member_name,trainer.trainer_name,trainer.specialization,member.membership_status
from member
inner join trainer
on member.member_id=trainer.trainer_id
where member.membership_status="Active"
order by member.member_name asc;

select member.member_name,sum(payments.amount) as total_amount
from member
inner join payments
on member.member_id=payments.member_id
group by member.member_name
order by total_amount desc;

select plan_name,price
from membership_plans
where price >(select avg(price)
from membership_plans);

select trainer_name,specialization,salary
from trainer
where salary <(select max(salary)
from trainer);

select member_name,plan_id,membership_status
from member
where plan_id in(select plan_id 
from membership_plans
where plan_name="Quaterly");

select member_name,age,membership_status
from member
where age > (select avg(age)
from member);

select member_name,gender,age
from member m
where age>(select avg(age)
from member
where gender=m.gender);

with active_member as(
select
member_name,age,membership_status
from member
where membership_status="Active"
)
select 
member_name,age,membership_status
from active_member;

with total_paid as(
select
sum(amount) as total_paid
from payments
where payment_status="Paid"
)
select total_paid
from total_paid;

select trainer_name,salary,
rank() over(order by salary desc) as salary_rank
from trainer;

select payment_id,member_id,amount,sum(amount) over(order by payment_date) as running_total
from payments
where payment_status="Paid";

select member_name,member_id
from member
where exists(
select 1
from payments
where payments.payment_id=member.member_id
);

select member_name from member 
where gender="Male"
union
select gender from member
where gender="Female";

create view active_member as
select  member_id,member_name,age,gender,membership_status
from member 
where membership_status="Active";
select*from active_member;

select member.member_name,trainer.trainer_name,membership_plans.plan_name,membership_plans.price
from member
join trainer
on member.member_id=trainer.trainer_id
join membership_plans
on member.plan_id=membership_plans.plan_id
where member.membership_status="Active";

select m.member_name,mb.plan_name,mb.price,m.membership_status
from member m
join membership_plans mb
on m.member_id=mb.plan_id
where m.membership_status="Active"
and mb.price>(select avg(price)
from membership_plans);
