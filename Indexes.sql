Create Index zipcode on GeoLocation(zip_code);

Create Index Customer_location on Customers(zip_code, city, state);

Create Index Location on GeoLocation(city, state);

Create Index Order_price on Order_lines(price, freight_value);

Create Index Payments_details on Payment(type, installments, value);

Create Index reviewScore on Order_review(score);

Create Index OrderStatus on Orders(status, purchase_timestamp, delivered_customer_date, estimated_delivery_date);

Create Index productDetails on Products(weight, length, height, width);

Create Index SellerLocation on Sellers(city, state);






