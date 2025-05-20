DROP TABLE IF EXISTS 'shop';
DROP INDEX IF EXISTS 'sqlite_autoindex_shop_1';
DROP TABLE IF EXISTS 'availability';
DROP INDEX IF EXISTS 'sqlite_autoindex_availability_1';
DROP TABLE IF EXISTS 'assortment';
DROP INDEX IF EXISTS 'sqlite_autoindex_assortment_1';
DROP TABLE IF EXISTS 'worker';
CREATE TABLE shop (
id INTEGER PRIMARY KEY,
name VARCHAR(255) UNIQUE,
balance FLOAT NOT NULL);
INSERT INTO 'shop' VALUES(1,'перекрёсток',652);
INSERT INTO 'shop' VALUES(2,'дикси',287);
INSERT INTO 'shop' VALUES(3,'магнит',516);
INSERT INTO 'shop' VALUES(4,'авокадо',420);
null;
CREATE TABLE availability (
shop_id INTEGER REFERENCES shop (id),
product_id INTEGER REFERENCES product (id),
quantity INTEGER NOT NULL,
PRIMARY KEY (shop_id, product_id));
INSERT INTO 'availability' VALUES(1,2,68);
INSERT INTO 'availability' VALUES(2,3,88);
INSERT INTO 'availability' VALUES(3,4,52);
INSERT INTO 'availability' VALUES(4,1,45);
null;
CREATE TABLE assortment (
id INTEGER PRIMARY KEY,
name VARCHAR(255) UNIQUE,
price FLOAT NOT NULL);
INSERT INTO 'assortment' VALUES(1,'курица',230);
INSERT INTO 'assortment' VALUES(2,'сыр',74);
INSERT INTO 'assortment' VALUES(3,'сок',52);
INSERT INTO 'assortment' VALUES(4,'мороженное',61);
null;
CREATE TABLE worker (
    worker_id INTEGER PRIMARY KEY,
    shop_id INTEGER REFERENCES shop(id),
    name VARCHAR(255),
    salary INTEGER NOT NULL,
    position VARCHAR(255)
);
INSERT INTO 'worker' VALUES(1,1,'Илья',50000,'Менеджер');
INSERT INTO 'worker' VALUES(2,1,'Дима',45000,'Продавец');
INSERT INTO 'worker' VALUES(3,2,'Сергей',60000,'Менеджер');
INSERT INTO 'worker' VALUES(4,2,'Максим',40000,'Кассир');
INSERT INTO 'worker' VALUES(5,3,'Лёша',55000,'Администратор');
