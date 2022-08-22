use enterprisejavadevelopment302;

CREATE TABLE author(
id_author int auto_increment,
author_name varchar(255),
PRIMARY KEY (id_author)
);

CREATE TABLE post(
id_post int auto_increment,
id_author int,
title varchar(255),
word_count int,
view int,
PRIMARY KEY (id_post),
FOREIGN KEY (id_author) references author(id_author)
);

insert into author (author_name) values 
('Maria Charlotte'),
('Juan Perez'),
('Gemma Alcocer');

select * from author;

insert into post (id_author, title, word_count, view) values 
(1, 'Best Paint Colors', 814, 14),
(1, 'Hot Accessories', 986, 105),
(1, 'Mixing Textures', 765, 22),
(1, 'Homemade Art Hacks', 1002, 193),
(2, 'Small Space Decorating Tips', 1146, 221),
(2, 'Kitchen Refresh', 1242, 307),
(3, 'Refinishing Wood Floors', 1571, 7542);

select author_name, title, word_count, view from post inner join author
on post.id_author = author.id_author;



