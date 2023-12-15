/*create new customer*/

select * from customers;



/* example of new customer placing order of 1 product x with credit card, create customer order No. create order, create line*, create payment/

*/
select * from sellers;

select * from Order_lines;

select * from Payment where order_id = '0005a1a1728c9d785b8e2b08b904576c';



Insert into Orders values(TO_BASE64(RANDOM_BYTES(32)),'00012a2ce6f8dcda20d059ce98491703', 'processing', NOW(), null, null, null, date_add(NOW(), interval 10 day));

select * from Orders Where customer_id = '00012a2ce6f8dcda20d059ce98491703';


Insert into Order_lines Values('RLMqmwerazSdgF5W+wiEhWIG7mbMTEO1F+12DLQ7wHc=',  1, '4244733e06e7ecb4970a6e2683c13e61', '01bcc9d254a0143f0ce9791b960b2a47', date_add(NOW(), interval 10 day), 58.90, 13.29);

Insert into Payment Values('RLMqmwerazSdgF5W+wiEhWIG7mbMTEO1F+12DLQ7wHc=', 1, 'credit_card', 1, 82.19);


/* have order be approved*/

Update Orders 
set status = 'approved', approved_timestamp = date_add(NOW(), interval 1 hour)
Where id = 'RLMqmwerazSdgF5W+wiEhWIG7mbMTEO1F+12DLQ7wHc=';

/* have order be shipped */

Update Orders 
set status = 'shipped', delivered_carrier_date = date_add(NOW(), interval 1 day)
Where id = 'RLMqmwerazSdgF5W+wiEhWIG7mbMTEO1F+12DLQ7wHc=';

/* have order be delivered */

Update Orders 
set status = 'delivered', delivered_customer_date  = date_add(NOW(), interval 5 day)
Where id = 'RLMqmwerazSdgF5W+wiEhWIG7mbMTEO1F+12DLQ7wHc=';


select * from Orders where id = 'RLMqmwerazSdgF5W+wiEhWIG7mbMTEO1F+12DLQ7wHc=';
/* have customer put in review */

Insert into Order_Review Values(TO_BASE64(RANDOM_BYTES(32)), 'RLMqmwerazSdgF5W+wiEhWIG7mbMTEO1F+12DLQ7wHc=', 5, 'Great Product', 'This was a great product I would reccomend this product for anyone who is considering buying it.', NOW(), NOW());

select * from Order_Review where order_id = 'RLMqmwerazSdgF5W+wiEhWIG7mbMTEO1F+12DLQ7wHc='

