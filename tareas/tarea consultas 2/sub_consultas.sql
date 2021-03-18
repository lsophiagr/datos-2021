select last_name, salary
from employees
intersect
select last_name, salary
from employees where salary > (select avg(salary)from employees);

select employee_id, last_name from employees
where department_id
in
(select department_id from employees
intersect
select department_id from employees
where last_name like 'L%')

select last_name
from employees
intersect
select last_name
from employees
where salary >
(select max(salary)
from employees
where department_id = 60)

select department_name from departments where department_id
in
(select department_id
from departments
minus
select distinct department_id from employees
where job_id = 'ST_CLERK')


select country_name, country_id
from countries
minus
select distinct c.country_name, l.country_id from countries c, locations l, departments d where c.country_id = l.country_id
and d.location_id = l.location_id

select department_id, job_id, employee_id from employees
where department_id = 80
union all
select department_id, job_id, employee_id from employees
where department_id = 50
order by 1


select employee_id, first_name, last_name from employees
where department_id = 80
intersect
select employee_id, first_name, last_name from employees
where job_id='SA_REP'