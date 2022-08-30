
select distinct p.transaction_payment_id, p.transaction_id , p.user_id ,p.level_user ,
				p.payment_source ,p.payment_amount , sum(d.discount_amount) discount ,
				p.transaction_date 
	from payment p 
	inner join discount d on p.transaction_id = d.transaction_id 
	where p.payment_amount > 0 
	and d.discount_amount < p.payment_amount 
	and d.discount_amount not in (select distinct discount_amount  from discount d where discount_amount  < 500 )  
	group by p.transaction_payment_id , p.transaction_id , p.user_id, p.payment_amount, p.transaction_date 
union
select distinct p.transaction_payment_id, p.transaction_id , p.user_id ,p.level_user ,
				p.payment_source, p.payment_amount , 0 as discount , p.transaction_date 
	from payment p 
	left join discount d on p.transaction_id = d.transaction_id 
	where d.transaction_discount_id isnull 
	and p.payment_amount > 0