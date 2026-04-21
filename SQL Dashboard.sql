create database today;
use today;
select * from `bank data analytics 11`;


select count(distinct `Account ID`) as Total_Loan_Applications
from `bank data analytics 11`;

select sum(`Loan Amount`) as Total_Loan_Amount
from `bank data analytics 11`;

select sum(`Funded Amount`) as Total_Funded_Amount
from `bank data analytics 11`;

select sum(`Total Pymnt`) as Total_Loan_Received
from `bank data analytics 11`;

select avg(`Int Rate`) as Avg_Interest_Rate
from `bank data analytics 11`;

Select count(`Account ID`) as Good_Loan_Applications
from `bank data analytics 11`
where `Loan Status`='Fully Paid';

select sum(`Loan Amount`) as Good_Loan_Funded_Amount
from `bank data analytics 11`
where `Loan Status`='Fully Paid';

Select count(`Account ID`) as Bad_Loan_Applications
from `bank data analytics 11`
where `Loan Status`='NPA';

select sum(`Loan Amount`) as Bad_Loan_Funded_Amount
from `bank data analytics 11`
where `Loan Status`='NPA';

select `Loan Status`,
count(`Account ID`) as LoanCount,
sum(`Total Pymnt`) as Total_Amount_Received,
sum(`Loan Amount`) as Total_Funded_Amount
from `bank data analytics 11`
group by `Loan Status`;