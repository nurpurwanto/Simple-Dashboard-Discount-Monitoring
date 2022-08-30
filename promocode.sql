select distinct
				p.transaction_payment_id, p.transaction_id , p.user_id ,p.level_user ,p.payment_source ,
				p.transaction_date , d.promo_code, d.discount_amount 
from payment p 
inner join discount d on p.transaction_id = d.transaction_id 
where p.payment_amount > 0 
and d.discount_amount < p.payment_amount 
and d.discount_amount not in (select distinct discount_amount  from discount d where discount_amount  < 500 )
and d.promo_code !=''