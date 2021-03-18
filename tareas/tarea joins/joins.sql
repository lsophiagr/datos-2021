

select e.first_name, e.last_name, d.department_name, l.city, c.country_name, r.region_name
		from employees e
		left outer join departments d
		on d.department_id = e.department_id
		left outer join locations l
		on l.location_id = d.location_id
		left outer join countries c
		on c.country_id = l.country_id
		left outer join regions r
		on r.region_id = c.region_id
		order by r.region_name;



SELECT D.department_name , L.city , L.country_id, L.street_address
FROM  departments D 
JOIN locations L 
ON  D.location_id = L.location_id;


SELECT e.last_name,  d.department_name
FROM employees e, departments d
WHERE e.department_id = d.department_id;

SELECT 	e.last_name, e.first_name, d.department_name
FROM 	employees e JOIN departments d
ON 	(e.department_id = d.department_id)
JOIN 	locations l
ON 	(d.location_id = l.location_id)
WHERE LOWER(l.city) = 'seattle';


SELECT e.last_name AS "Apellido Empleado", e.employee_id AS "id empleado",
m.last_name AS "Apellido Manager", m.manager_id AS "id manager"
FROM employees e 
JOIN employees m
ON e.manager_id = m.employee_id;

SELECT * FROM EMPLOYEES WHERE manager_id IS NULL


SELECT e.first_name, e.last_name, e.hire_date 
FROM employees e 
JOIN employees bissot 
ON (bissot.last_name = 'Bissot') 
WHERE bissot.hire_date < e.hire_date;


SELECT w.last_name, w.hire_date, m.last_name, m.hire_date
FROM employees w, employees m
WHERE w.manager_id = m.employee_id
AND w.hire_date > m.hire_date;
