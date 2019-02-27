CREATE TABLE sp_product(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    img_url VARCHAR(255),
    price DECIMAL(10,2),
    bank INT
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO sp_product VALUES(1,'花王1','http://127.0.0.1:3000/picture/2018-12-07_211549.png',100.00,10);
INSERT INTO sp_product VALUES(2,'花王2','http://127.0.0.1:3000/picture/2018-12-07_211549.png',100.00,10);
INSERT INTO sp_product VALUES(3,'花王3','http://127.0.0.1:3000/picture/2018-12-07_211549.png',100.00,10);
INSERT INTO sp_product VALUES(4,'花王4','http://127.0.0.1:3000/picture/2018-12-07_211549.png',100.00,10);
INSERT INTO sp_product VALUES(5,'花王5','http://127.0.0.1:3000/picture/2018-12-07_211549.png',100.00,10);
INSERT INTO sp_product VALUES(6,'花王6','http://127.0.0.1:3000/picture/2018-12-07_211549.png',100.00,10);
INSERT INTO sp_product VALUES(7,'花王7','http://127.0.0.1:3000/picture/2018-12-07_211549.png',100.00,10);
INSERT INTO sp_product VALUES(8,'花王8','http://127.0.0.1:3000/picture/2018-12-07_211549.png',100.00,10);
INSERT INTO sp_product VALUES(9,'花王9','http://127.0.0.1:3000/picture/2018-12-07_211549.png',100.00,10);
INSERT INTO sp_product VALUES(10,'花王10','http://127.0.0.1:3000/picture/2018-12-07_211549.png',100.00,10);


#商品products
CREATE TABLE sp_products(
    pid INT PRIMARY KEY AUTO_INCREMENT,
	family_id INT,
   title VARCHAR(128),
   price DECIMAL(10,2),
   ori_price DECIMAL(10,2),
   img_url VARCHAR(128) 
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO sp_products VALUES(NULL,1,'澳洲贝拉米3段有机奶粉900g','187.50','281.00','http://127.0.0.1:3000/15483001693586102.jpg');
INSERT INTO sp_products VALUES(NULL,2,'澳洲贝拉米3段有机奶粉900g','187.50','281.00','http://127.0.0.1:3000/15483001693586102.jpg');
INSERT INTO sp_products VALUES(NULL,3,'澳洲贝拉米3段有机奶粉900g','187.50','281.00','http://127.0.0.1:3000/15483001693586102.jpg');
INSERT INTO sp_products VALUES(NULL,4,'澳洲贝拉米3段有机奶粉900g','187.50','281.00','http://127.0.0.1:3000/15483001693586102.jpg');
INSERT INTO sp_products VALUES(NULL,5,'澳洲贝拉米3段有机奶粉900g','187.50','281.00','http://127.0.0.1:3000/15483001693586102.jpg');
INSERT INTO sp_products VALUES(NULL,6,'澳洲贝拉米3段有机奶粉900g','187.50','281.00','http://127.0.0.1:3000/15483001693586102.jpg');
INSERT INTO sp_products VALUES(NULL,7,'澳洲贝拉米3段有机奶粉900g','187.50','281.00','http://127.0.0.1:3000/15483001693586102.jpg');
INSERT INTO sp_products VALUES(NULL,8,'澳洲贝拉米3段有机奶粉900g','187.50','281.00','http://127.0.0.1:3000/15483001693586102.jpg');
INSERT INTO sp_products VALUES(NULL,9,'【包邮保税】 anello日本离家出走妈妈包乐天防盗防水大容量书包 红白拼接小号','189.00','259.00','http://127.0.0.1:3000//15396538653234836.jpg');
INSERT INTO sp_products VALUES(NULL,10,'【包邮保税】 anello日本离家出走妈妈包乐天防盗防水大容量书包 红白拼接小号','189.00','259.00','http://127.0.0.1:3000//15396538653234836.jpg');
INSERT INTO sp_products VALUES(NULL,11,'【包邮保税】 anello日本离家出走妈妈包乐天防盗防水大容量书包 红白拼接小号','189.00','259.00','http://127.0.0.1:3000//15396538653234836.jpg');
INSERT INTO sp_products VALUES(NULL,12,'【包邮保税】 anello日本离家出走妈妈包乐天防盗防水大容量书包 红白拼接小号','189.00','259.00','http://127.0.0.1:3000//15396538653234836.jpg');
INSERT INTO sp_products VALUES(NULL,13,'【包邮保税】 anello日本离家出走妈妈包乐天防盗防水大容量书包 红白拼接小号','189.00','259.00','http://127.0.0.1:3000//15396538653234836.jpg');
INSERT INTO sp_products VALUES(NULL,14,'【包邮保税】 anello日本离家出走妈妈包乐天防盗防水大容量书包 红白拼接小号','189.00','259.00','http://127.0.0.1:3000//15396538653234836.jpg');
INSERT INTO sp_products VALUES(NULL,15,'【包邮保税】 anello日本离家出走妈妈包乐天防盗防水大容量书包 红白拼接小号','189.00','259.00','http://127.0.0.1:3000//15396538653234836.jpg');
INSERT INTO sp_products VALUES(NULL,16,'【包邮保税】 anello日本离家出走妈妈包乐天防盗防水大容量书包 红白拼接小号','189.00','259.00','http://127.0.0.1:3000//15396538653234836.jpg');
INSERT INTO sp_products VALUES(NULL,17,'Aptamil爱他美 澳洲金装奶粉3段1-2岁900g','163.18','219','http://127.0.0.1:3000//15349287413231593.jpg');
INSERT INTO sp_products VALUES(NULL,18,'Aptamil爱他美 澳洲金装奶粉3段1-2岁900g','163.18','219','http://127.0.0.1:3000//15349287413231593.jpg');
INSERT INTO sp_products VALUES(NULL,19,'Aptamil爱他美 澳洲金装奶粉3段1-2岁900g','163.18','219','http://127.0.0.1:3000//15349287413231593.jpg');
INSERT INTO sp_products VALUES(NULL,20,'Aptamil爱他美 澳洲金装奶粉3段1-2岁900g','163.18','219','http://127.0.0.1:3000//15349287413231593.jpg');
INSERT INTO sp_products VALUES(NULL,21,'Aptamil爱他美 澳洲金装奶粉3段1-2岁900g','163.18','219','http://127.0.0.1:3000//15349287413231593.jpg');
INSERT INTO sp_products VALUES(NULL,22,'Aptamil爱他美 澳洲金装奶粉3段1-2岁900g','163.18','219','http://127.0.0.1:3000//15349287413231593.jpg');
INSERT INTO sp_products VALUES(NULL,23,'Aptamil爱他美 澳洲金装奶粉3段1-2岁900g','163.18','219','http://127.0.0.1:3000//15349287413231593.jpg');
INSERT INTO sp_products VALUES(NULL,24,'Aptamil爱他美 澳洲金装奶粉3段1-2岁900g','163.18','219','http://127.0.0.1:3000//15349287413231593.jpg');





CREATE TABLE sp_user(
    uid INT PRIMARY KEY AUTO_INCREMENT,
   uname VARCHAR(32),
   user_name VARCHAR(32),
   upwd VARCHAR(32),
   email VARCHAR(64),
   phone VARCHAR(16),
   avatar VARCHAR(128),
   gender INT
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO sp_user VALUES('null','tom','张三','123456','1648666249@qq.com','18756991193','35454646','1');
INSERT INTO sp_user VALUES('null','dingding','李四','123456','1648666249@qq.com','18756871193','35454646','1');
INSERT INTO sp_user VALUES('null','dangdang','王思聪','123456','1648666249@qq.com','18754561193','35454646','1');
INSERT INTO sp_user VALUES('null','fbb','范冰冰','123456','1648666249@qq.com','18758621193','35454646','0');
INSERT INTO sp_user VALUES('null','zhangjie','张杰','123456','1648666249@qq.com','18756123193','35454646','1');
INSERT INTO sp_user VALUES('null','xiena','谢娜','123456','1648666249@qq.com','18745644193','35454646','0');


#创建商品表shoplist
CREATE TABLE sp_shoplist(
    id INT PRIMARY KEY AUTO_INCREMENT,
    img_url VARCHAR(255),
    shop_title VARCHAR(255),
    shop_price DECIMAL(10,2),
    new_price DECIMAL(10,2)
);
INSERT INTO sp_shoplist VALUES(NULL,'http://127.0.0.1:3000/2019-01-05_101457.png','pigeon贝亲 婴儿柔湿巾10片（KA38）','3.60','1.90');
INSERT INTO sp_shoplist VALUES(NULL,'http://127.0.0.1:3000/2019-01-05_101457.png','pigeon贝亲 婴儿柔湿巾10片（KA38）','3.60','1.90');
INSERT INTO sp_shoplist VALUES(NULL,'http://127.0.0.1:3000/2019-01-05_101457.png','pigeon贝亲 婴儿柔湿巾10片（KA38）','3.60','1.90');
INSERT INTO sp_shoplist VALUES(NULL,'http://127.0.0.1:3000/2019-01-05_101457.png','pigeon贝亲 婴儿柔湿巾10片（KA38）','3.60','1.90');
INSERT INTO sp_shoplist VALUES(NULL,'http://127.0.0.1:3000/2019-01-05_101457.png','pigeon贝亲 婴儿柔湿巾10片（KA38）','3.60','1.90');
INSERT INTO sp_shoplist VALUES(NULL,'http://127.0.0.1:3000/2019-01-05_101457.png','pigeon贝亲 婴儿柔湿巾10片（KA38）','3.60','1.90');
INSERT INTO sp_shoplist VALUES(NULL,'http://127.0.0.1:3000/2019-01-05_101457.png','pigeon贝亲 婴儿柔湿巾10片（KA38）','3.60','1.90');
INSERT INTO sp_shoplist VALUES(NULL,'http://127.0.0.1:3000/2019-01-05_101457.png','pigeon贝亲 婴儿柔湿巾10片（KA38）','3.60','1.90');
INSERT INTO sp_shoplist VALUES(NULL,'http://127.0.0.1:3000/2019-01-05_101457.png','pigeon贝亲 婴儿柔湿巾10片（KA38）','3.60','1.90');


#小程序  整点抢购 sale
CREATE TABLE sp_sale(
    id INT PRIMARY KEY AUTO_INCREMENT,
    discount INT,
    sname VARCHAR(255),
    img_url VARCHAR(255),
    price DECIMAL(10,2),
    ori_price DECIMAL(10,2)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO sp_sale VALUES(NULL,4.6,'【保税区直发】LG ON:THE BODY 闪耀梦幻香水保湿润体身体乳400ml','http://127.0.0.1:3000/2019-01-26_192023.png','59.00','65.00');
INSERT INTO sp_sale VALUES(NULL,4.6,'【保税区直发】LG ON:THE BODY 闪耀梦幻香水保湿润体身体乳400ml','http://127.0.0.1:3000/2019-01-26_192023.png','59.00','65.00');
INSERT INTO sp_sale VALUES(NULL,4.6,'【保税区直发】LG ON:THE BODY 闪耀梦幻香水保湿润体身体乳400ml','http://127.0.0.1:3000/2019-01-26_192023.png','59.00','65.00');
INSERT INTO sp_sale VALUES(NULL,4.6,'【保税区直发】LG ON:THE BODY 闪耀梦幻香水保湿润体身体乳400ml','http://127.0.0.1:3000/2019-01-26_192023.png','59.00','65.00');
INSERT INTO sp_sale VALUES(NULL,4.6,'【保税区直发】LG ON:THE BODY 闪耀梦幻香水保湿润体身体乳400ml','http://127.0.0.1:3000/2019-01-26_192023.png','59.00','65.00');
INSERT INTO sp_sale VALUES(NULL,4.6,'【保税区直发】LG ON:THE BODY 闪耀梦幻香水保湿润体身体乳400ml','http://127.0.0.1:3000/2019-01-26_192023.png','59.00','65.00');
INSERT INTO sp_sale VALUES(NULL,4.6,'【保税区直发】LG ON:THE BODY 闪耀梦幻香水保湿润体身体乳400ml','http://127.0.0.1:3000/2019-01-26_192023.png','59.00','65.00');
INSERT INTO sp_sale VALUES(NULL,4.6,'【保税区直发】LG ON:THE BODY 闪耀梦幻香水保湿润体身体乳400ml','http://127.0.0.1:3000/2019-01-26_192023.png','59.00','65.00');



#商品products


#商品图片
CREATE TABLE sp_pic(
pid INT PRIMARY KEY AUTO_INCREMENT,
milk_id INT,
sm VARCHAR(128),
md VARCHAR(128),
lg VARCHAR(128)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO sp_pic VALUES(NULL,1,'http://127.0.0.1:3000/15483001693586102.jpg','http://127.0.0.1:3000/15483001693586102.jpg','http://127.0.0.1:3000/15483001693586102.jpg');
INSERT INTO sp_pic VALUES(NULL,2,'http://127.0.0.1:3000/15483001693586102.jpg','http://127.0.0.1:3000/15483001693586102.jpg','http://127.0.0.1:3000/15483001693586102.jpg');
INSERT INTO sp_pic VALUES(NULL,3,'http://127.0.0.1:3000/15483001693586102.jpg','http://127.0.0.1:3000/15483001693586102.jpg','http://127.0.0.1:3000/15483001693586102.jpg');
INSERT INTO sp_pic VALUES(NULL,4,'http://127.0.0.1:3000/15483001693586102.jpg','http://127.0.0.1:3000/15483001693586102.jpg','http://127.0.0.1:3000/15483001693586102.jpg');
INSERT INTO sp_pic VALUES(NULL,5,'http://127.0.0.1:3000/15483001693586102.jpg','http://127.0.0.1:3000/15483001693586102.jpg','http://127.0.0.1:3000/15483001693586102.jpg');
INSERT INTO sp_pic VALUES(NULL,6,'http://127.0.0.1:3000/15483001693586102.jpg','http://127.0.0.1:3000/15483001693586102.jpg','http://127.0.0.1:3000/15483001693586102.jpg');
INSERT INTO sp_pic VALUES(NULL,7,'http://127.0.0.1:3000/15483001693586102.jpg','http://127.0.0.1:3000/15483001693586102.jpg','http://127.0.0.1:3000/15483001693586102.jpg');
INSERT INTO sp_pic VALUES(NULL,8,'http://127.0.0.1:3000/15483001693586102.jpg','http://127.0.0.1:3000/15483001693586102.jpg','http://127.0.0.1:3000/15483001693586102.jpg');
INSERT INTO sp_pic VALUES(NULL,9,'http://127.0.0.1:3000/15396538653234836.jpg','http://127.0.0.1:3000/15396538653234836.jpg','http://127.0.0.1:3000/15396538653234836.jpg');
INSERT INTO sp_pic VALUES(NULL,10,'http://127.0.0.1:3000/15396538653234836.jpg','http://127.0.0.1:3000/15396538653234836.jpg','http://127.0.0.1:3000/15396538653234836.jpg');

#商品名称家族
CREATE TABLE sp_family(
  fid INT PRIMARY KEY AUTO_INCREMENT,
  fname VARCHAR(32)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO sp_family VALUES(NULL,'澳洲贝拉米3段有机奶粉900g');
INSERT INTO sp_family VALUES(NULL,'澳洲贝拉米3段有机奶粉900g');
INSERT INTO sp_family VALUES(NULL,'澳洲贝拉米3段有机奶粉900g');
INSERT INTO sp_family VALUES(NULL,'澳洲贝拉米3段有机奶粉900g');
INSERT INTO sp_family VALUES(NULL,'澳洲贝拉米3段有机奶粉900g');
INSERT INTO sp_family VALUES(NULL,'澳洲贝拉米3段有机奶粉900g');
INSERT INTO sp_family VALUES(NULL,'澳洲贝拉米3段有机奶粉900g');
INSERT INTO sp_family VALUES(NULL,'澳洲贝拉米3段有机奶粉900g');
INSERT INTO sp_family VALUES(NULL,'【包邮保税】 anello日本离家出走妈妈包乐天防盗防水大容量书包 红白拼接小号');
INSERT INTO sp_family VALUES(NULL,'【包邮保税】 anello日本离家出走妈妈包乐天防盗防水大容量书包 红白拼接小号');


#购物车条目
CREATE TABLE sp_cart_item(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,
  product_id INT,
  count INT,    
  is_checked BOOLEAN
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO sp_cart_item VALUES(NULL,1,1,12,0);
INSERT INTO sp_cart_item VALUES(NULL,1,2,5,0);
INSERT INTO sp_cart_item VALUES(NULL,1,3,6,0);
INSERT INTO sp_cart_item VALUES(NULL,1,4,9,0);
INSERT INTO sp_cart_item VALUES(NULL,1,5,8,0);
INSERT INTO sp_cart_item VALUES(NULL,1,6,5,0);
INSERT INTO sp_cart_item VALUES(NULL,1,7,6,0);
INSERT INTO sp_cart_item VALUES(NULL,1,8,9,0);