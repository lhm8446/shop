------------------------------------------------------------------------------------------------- Category
select * FROM CATEGORY order by no;

insert into category VALUES(category_seq.nextval, '123');

delete FROM CATEGORY;

select no, title from category;

delete from category where no = 41;

update category set title = 100 where title = 1;

commit;

------------------------------------------------------------------------------------------------- Product

select * from PRODUCT ; 

insert into product values (product_seq.nextval, NAME, MAIN_PHOTO, MAIN_DES, PRICE, SUB_PHOTO, SUB_DES, REG_DATE, CATEGORY_NO);

select c.title as title, 
	   p.no as no, 
	   p.name as name, 
	   p.main_photo as main_photo, 
	   p.price as price , 
	   p.reg_date as reg_date
from product p, category c
where p.CATEGORY_NO = c.no;

delete from product where no =43;

select no, name, main_photo, main_des, price, sub_photo, sub_des, reg_date, category_no from product where category_no = 1;










