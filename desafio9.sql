select 
	concat(e.FirstName, ' ', e.LastName) as `Nome Compelto`,
    count(o.OrderID) as `Total de pedidos`
    from
		w3schools.employees as e
        join
        w3schools.orders as o on o.EmployeeID = e.EmployeeID
        group by o.EmployeeID
	order by `Total de pedidos`;