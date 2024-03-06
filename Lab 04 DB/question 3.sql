select 
		CO.cus_gender as `Gender`,
        count(CO.cus_gender) as `NoOfCustomers`
        from
(

		select
		   c.CUS_id,
		   c.CUS_name,
		   c.CUS_gender
		   
		   from
			customer c
			inner join `order` o
			on
			c.cus_id = o.CUS_ID
			where 
			o.ORD_AMOUNT >=3000
            
            group by
            c.cus_id

) AS CO
group by
    CO.cus_gender
