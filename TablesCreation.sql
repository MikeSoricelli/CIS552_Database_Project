
Create Table GeoLocation (zip_code varchar(50), lat double, lng double, city varchar(50), state varchar(10));

Create Index zipcode on GeoLocation(zip_code);

Create TABLE Customers(id varchar(50), customer_order_id varchar(50), zip_code varchar(50), city varchar(50), state varchar(50), 
Primary Key(id));

Create Index customer_order_id on Customers(customer_order_id);

Create Table Orders(id varchar(50), customer_id varchar(50), status varchar(10), purchase_timestamp datetime null, approved_timestamp datetime null, delivered_carrier_date date null, delivered_customer_date date null, estimated_delivery_date date null,
Primary Key(id),
foreign key(customer_id) references Customers(id)
);

Create TABLE Sellers(id varchar(50), zip_code varchar(50), city varchar(50), state varchar(50),
primary key(id),
foreign key(zip_code) references GeoLocation(zip_code)
);

Create table Products_Category_Translation(category_name varchar(50), category_name_english varchar(50),
primary key(category_name)
);

Create table Order_Review(id varchar(50), order_id varchar(50), score int, comment_title varchar(50) null, comment_message varchar(1000) null, creation_date datetime, answer_timeStamp datetime,
Primary Key(id),
foreign key (order_id) references Orders(id)
);

Create table Order_lines(order_id varchar(50), item_sequence int, product_id varchar(50), seller_id varchar(50), shipping_limit_date varchar(50), price double, freight_value double,
foreign key (order_id) references Orders(id),
foreign key (product_id) references Products(id),
foreign key (seller_id) references Sellers(id),
primary key(order_id, item_sequence)
);

Create table Products(id varchar(50), category_name varchar (50), weight int, length int, height int, width int,
primary key(id),
foreign key(category_name) references Products_Category_Translation(category_name)
);

Create Table Payment(order_id varchar(50), sequential_methods int, type varchar(50), installments int, value double,
foreign Key (order_id) references Orders(id),
primary Key(order_id, sequential_methods));

