set names utf8;
set foreign_key_checks = 0;
drop database if exists ecsite;
/*データベース名 "ecsite"*/
create database ecsite;
use ecsite;
/*テーブル名 "login_user_transaction"*/
drop table if exists login_user_transaction;
/*テーブルに情報を保存*/

create table login_user_transaction(
id int not null primary key auto_increment,/*auto_increment=>連番状態*/
login_id varchar(16) unique,
login_pass varchar(16),
user_name varchar(50),
admin_flg varchar(1),/*管理者限定ログインID入れる場所*/
insert_date datetime,
update_dated datetime
);

drop table if exists item_info_transaction;

create table item_info_transaction(
id int not null primary key auto_increment,
item_name varchar(30),
item_price int,
item_stock int,
insert_date datetime,
update_dated datetime
);

drop table if exists user_buy_item_transaction;

create table user_buy_item_transaction(
id int not null primary key auto_increment,
item_transaction_id int,
total_price int,
total_count int,
user_master_id varchar(16),
pay varchar(30),
insert_date datetime,
delete_date datetime
);

INSERT INTO item_info_transaction(item_name, item_price, item_stock) VALUES ("ノートBook", 100, 50);
INSERT INTO login_user_transaction(login_id, login_pass, user_name, admin_flg) VALUES ("internous", "internous01", "test", "0");
INSERT INTO login_user_transaction(login_id, login_pass, user_name, admin_flg) VALUES("admin", "admin", "admin", "1");