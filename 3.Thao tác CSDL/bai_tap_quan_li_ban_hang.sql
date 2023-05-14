-- Hiển thị các thông tin  gồm oID, oDate, oPrice của tất cả các hóa đơn trong bảng Order
SELECT o_id, date , total_price
FROM `order`;

-- Hiển thị danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được mua bởi các khách
SELECT c.name, p.name, SUM(od.od_QTY) 
FROM customer c 
JOIN `order` o on c.c_id = o.c_id
JOIN orderdetail od on o.o_id = od.o_id
JOIN product p on od.p_id = p.p_id
GROUP BY c.name , p.name;

-- Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào
select * from customer 
left join `order` using (c_id)
where o_id is null;

select * from customer
where c_id not in (select c_id from `order`);

-- Hiển thị mã hóa đơn, ngày bán và giá tiền của từng hóa đơn (giá một hóa đơn được tính bằng tổng giá bán của từng loại mặt hàng xuất hiện trong hóa đơn. Giá bán của từng loại được tính = odQTY*pPrice)
SELECT o.o_id , o.date , SUM( od.od_QTY * p.price)
FROM `order` o 
JOIN orderdetail od ON od.o_id = o.o_id
JOIN product p ON od.p_id = p.p_id
GROUP BY o.o_id;
