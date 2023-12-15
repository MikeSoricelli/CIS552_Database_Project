/* query to find the top 10 states with the most orders placed*/

select C.state, count(*) as x from customers as C inner join orders as O on C.id = O.customer_id Group by C.state order by x desc Limit 10;

/*query to find top 20 worst selling products*/

select P.id, count(*) * o.price as x from products as P inner join order_lines as O on P.id = O.product_id Group by P.id order by x asc Limit 20;

/* query to find the highest average score of product review for products that have been ordered more than 10 times*/

select O.product_id, AVG(R.score) as score, count(product_id) as C from Order_lines as O inner join Order_Review as R on O.order_id = R.order_id Group by O.product_id Having C > 10 order by score desc LIMIT 10;
