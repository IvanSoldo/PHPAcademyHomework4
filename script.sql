drop database if exists shop_db;
CREATE database shop_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

use shop_db;

CREATE TABLE IF NOT EXISTS country
(
    code char(3)      not null primary key,
    name varchar(255) not null unique
);

CREATE TABLE IF NOT EXISTS address
(
    id           int          not null primary key auto_increment,
    country_code char(3)      not null,
    city_name    varchar(255) not null,
    postal_code  int          not null,
    address      varchar(255) not null,
    foreign key (country_code) references country (code)
);

CREATE TABLE IF NOT EXISTS shop
(
    id         int not null primary key auto_increment,
    address_id int not null,
    foreign key (address_id) references address (id)
);

CREATE TABLE IF NOT EXISTS role
(
    id   int          not null primary key auto_increment,
    name varchar(255) not null
);

CREATE TABLE IF NOT EXISTS user
(
    id         int                 not null primary key auto_increment,
    email      varchar(255) UNIQUE not null,
    username varchar(255) UNIQUE not null,
    first_name varchar(255)        not null,
    last_name  varchar(255)        not null,
    password   varchar(255)        not null,
    address_id int                 not null,
    role_id    int                 not null,
    otp_password char(6) not null,
    otp_timestamp datetime not null default CURRENT_TIMESTAMP,
    foreign key (address_id) references address (id),
    foreign key (role_id) references role (id)
);

CREATE TABLE IF NOT EXISTS product_type
(
    id                       int          not null primary key auto_increment,
    product_type_description varchar(255) not null
);

CREATE TABLE IF NOT EXISTS product
(
    id                  int          not null primary key auto_increment,
    product_type_id     int          not null,
    product_name        varchar(255) not null,
    product_price       double       not null,
    product_description varchar(255) not null,
    foreign key (product_type_id) references product_type (id)
        on delete cascade
);

CREATE TABLE IF NOT EXISTS `order`
(
    id         int not null primary key auto_increment,
    user_id    int not null,
    order_date datetime not null default CURRENT_TIMESTAMP,
    foreign key (user_id) references user (id)
        on delete cascade
);

CREATE TABLE IF NOT EXISTS order_product
(
    id         int not null primary key auto_increment,
    order_id   int not null,
    product_id int not null,
    quantity   int not null,
    foreign key (order_id) references `order` (id)
        on delete cascade,
    foreign key (product_id) references product (id)
        on delete cascade
);

CREATE TABLE IF NOT EXISTS inventory
(
    id                int     not null primary key auto_increment,
    product_id        int     not null UNIQUE,
    quantity int not null,
    product_available tinyint not null,
    foreign key (product_id) references product (id)
        on delete cascade
);

create trigger tr_insert_country
    before insert
    on country
    for each row
    set new.name = UPPER(new.name);

create trigger tr_update_country
    before update
    on country
    for each row
    set new.name = UPPER(new.name);

insert into role (name)
values ('admin'),
       ('customer');


INSERT INTO COUNTRY
VALUES ('004', 'Afghanistan'),
       ('008', 'Albania'),
       ('010', 'Antarctica'),
       ('012', 'Algeria'),
       ('016', 'American Samoa'),
       ('024', 'Angola'),
       ('028', 'Antigua and Barbuda'),
       ('031', 'Azerbaijan'),
       ('032', 'Argentina'),
       ('036', 'Australia'),
       ('040', 'Austria'),
       ('044', 'Bahamas'),
       ('048', 'Bahrain'),
       ('050', 'Bangladesh'),
       ('051', 'Armenia'),
       ('052', 'Barbados'),
       ('056', 'Belgium'),
       ('060', 'Bermuda'),
       ('064', 'Bhutan'),
       ('068', 'Bolivia (Plurinational State of)'),
       ('070', 'Bosnia and Herzegovina'),
       ('072', 'Botswana'),
       ('074', 'Bouvet Island'),
       ('076', 'Brazil'),
       ('084', 'Belize'),
       ('086', 'British Indian Ocean Territory'),
       ('090', 'Solomon Islands'),
       ('092', 'Virgin Islands (British)'),
       ('096', 'Brunei Darussalam'),
       ('100', 'Bulgaria'),
       ('104', 'Myanmar'),
       ('108', 'Burundi'),
       ('112', 'Belarus'),
       ('116', 'Cambodia'),
       ('120', 'Cameroon'),
       ('124', 'Canada'),
       ('132', 'Cabo Verde'),
       ('136', 'Cayman Islands'),
       ('140', 'Central African Republic'),
       ('144', 'Sri Lanka'),
       ('148', 'Chad'),
       ('152', 'Chile'),
       ('156', 'China'),
       ('158', 'Taiwan, Province of China'),
       ('162', 'Christmas Island'),
       ('166', 'Cocos (Keeling) Islands'),
       ('170', 'Colombia'),
       ('174', 'Comoros'),
       ('175', 'Mayotte'),
       ('178', 'Congo'),
       ('180', 'Congo, Democratic Republic of the Congo'),
       ('184', 'Cook Islands'),
       ('188', 'Costa Rica'),
       ('191', 'Croatia'),
       ('192', 'Cuba'),
       ('196', 'Cyprus'),
       ('203', 'Czechia'),
       ('204', 'Benin'),
       ('208', 'Denmark'),
       ('212', 'Dominica'),
       ('214', 'Dominican Republic'),
       ('218', 'Ecuador'),
       ('222', 'El Salvador'),
       ('226', 'Equatorial Guinea'),
       ('231', 'Ethiopia'),
       ('232', 'Eritrea'),
       ('233', 'Estonia'),
       ('234', 'Faroe Islands'),
       ('238', 'Falkland Islands (Malvinas)'),
       ('239', 'South Georgia and the South Sandwich Islands'),
       ('242', 'Fiji'),
       ('246', 'Finland'),
       ('248', 'Aland Islands'),
       ('250', 'France'),
       ('254', 'French Guiana'),
       ('258', 'French Polynesia'),
       ('260', 'French Southern Territories'),
       ('262', 'Djibouti'),
       ('266', 'Gabon'),
       ('268', 'Georgia'),
       ('270', 'Gambia'),
       ('275', 'Palestine, State of'),
       ('276', 'Germany'),
       ('288', 'Ghana'),
       ('292', 'Gibraltar'),
       ('296', 'Kiribati'),
       ('300', 'Greece'),
       ('304', 'Greenland'),
       ('308', 'Grenada'),
       ('312', 'Guadeloupe'),
       ('316', 'Guam'),
       ('320', 'Guatemala'),
       ('324', 'Guinea'),
       ('328', 'Guyana'),
       ('332', 'Haiti'),
       ('334', 'Heard Island and McDonald Islands'),
       ('336', 'Holy See'),
       ('340', 'Honduras'),
       ('344', 'Hong Kong'),
       ('348', 'Hungary'),
       ('352', 'Iceland'),
       ('356', 'India'),
       ('360', 'Indonesia'),
       ('364', 'Iran (Islamic Republic of)'),
       ('368', 'Iraq'),
       ('372', 'Ireland'),
       ('376', 'Israel'),
       ('380', 'Italy'),
       ('384', 'Cote d''Ivoire'),
       ('388', 'Jamaica'),
       ('392', 'Japan'),
       ('398', 'Kazakhstan'),
       ('400', 'Jordan'),
       ('404', 'Kenya'),
       ('408', 'Korea (Democratic People''s Republic of)'),
       ('410', 'Korea, Republic of'),
       ('414', 'Kuwait'),
       ('417', 'Kyrgyzstan'),
       ('418', 'Lao People''s Democratic Republic'),
       ('422', 'Lebanon'),
       ('426', 'Lesotho'),
       ('428', 'Latvia'),
       ('430', 'Liberia'),
       ('434', 'Libya'),
       ('438', 'Liechtenstein'),
       ('440', 'Lithuania'),
       ('442', 'Luxembourg'),
       ('446', 'Macao'),
       ('450', 'Madagascar'),
       ('454', 'Malawi'),
       ('458', 'Malaysia'),
       ('462', 'Maldives'),
       ('466', 'Mali'),
       ('470', 'Malta'),
       ('474', 'Martinique'),
       ('478', 'Mauritania'),
       ('480', 'Mauritius'),
       ('484', 'Mexico'),
       ('492', 'Monaco'),
       ('496', 'Mongolia'),
       ('498', 'Moldova, Republic of'),
       ('499', 'Montenegro'),
       ('500', 'Montserrat'),
       ('504', 'Morocco'),
       ('508', 'Mozambique'),
       ('512', 'Oman'),
       ('516', 'Namibia'),
       ('520', 'Nauru'),
       ('524', 'Nepal'),
       ('528', 'Netherlands'),
       ('531', 'Curacao'),
       ('533', 'Aruba'),
       ('534', 'Sint Maarten (Dutch part)'),
       ('535', 'Bonaire, Sint Eustatius and Saba'),
       ('540', 'New Caledonia'),
       ('548', 'Vanuatu'),
       ('554', 'New Zealand'),
       ('558', 'Nicaragua'),
       ('562', 'Niger'),
       ('566', 'Nigeria'),
       ('570', 'Niue'),
       ('574', 'Norfolk Island'),
       ('578', 'Norway'),
       ('580', 'Northern Mariana Islands'),
       ('581', 'United States Minor Outlying Islands'),
       ('583', '	Micronesia (Federated States of)'),
       ('584', 'Marshall Islands'),
       ('585', 'Palau'),
       ('586', 'Pakistan'),
       ('591', 'Panama'),
       ('598', 'Papua New Guinea'),
       ('600', 'Paraguay'),
       ('604', 'Peru'),
       ('608', 'Philippines'),
       ('612', 'Pitcairn'),
       ('616', 'Poland'),
       ('620', 'Portugal'),
       ('624', 'Guinea-Bissau'),
       ('626', 'Timor-Leste'),
       ('630', 'Puerto Rico'),
       ('634', 'Qatar'),
       ('638', 'Reunion'),
       ('642', 'Romania'),
       ('643', 'Russian Federation'),
       ('646', 'Rwanda'),
       ('652', 'Saint Barthelemy'),
       ('654', 'Saint Helena, Ascension and Tristan da Cunha'),
       ('659', 'Saint Kitts and Nevis'),
       ('660', 'Anguilla'),
       ('662', 'Saint Lucia'),
       ('663', 'Saint Martin (French part)'),
       ('666', 'Saint Pierre and Miquelon'),
       ('670', 'Saint Vincent and the Grenadines'),
       ('674', 'San Marino'),
       ('678', 'Sao Tome and Principe'),
       ('682', 'Saudi Arabia'),
       ('686', 'Senegal'),
       ('688', 'Serbia'),
       ('690', 'Seychelles'),
       ('694', 'Sierra Leone'),
       ('702', 'Singapore'),
       ('703', 'Slovakia'),
       ('704', 'Viet Nam'),
       ('705', 'Slovenia'),
       ('706', 'Somalia'),
       ('710', 'South Africa'),
       ('716', 'Zimbabwe'),
       ('724', 'Spain'),
       ('728', 'South Sudan'),
       ('729', 'Sudan'),
       ('732', 'Western Sahara'),
       ('740', 'Suriname'),
       ('744', 'Svalbard and Jan Mayen'),
       ('748', 'Eswatini'),
       ('752', 'Sweden'),
       ('756', 'Switzerland'),
       ('760', 'Syrian Arab Republic'),
       ('762', 'Tajikistan'),
       ('764', 'Thailand'),
       ('768', 'Togo'),
       ('772', 'Tokelau'),
       ('776', 'Tonga'),
       ('780', 'Trinidad and Tobago'),
       ('784', 'United Arab Emirates'),
       ('788', 'Tunisia'),
       ('792', 'Turkey'),
       ('795', 'Turkmenistan'),
       ('796', 'Turks and Caicos Islands'),
       ('798', 'Tuvalu'),
       ('800', 'Uganda'),
       ('804', 'Ukraine'),
       ('807', 'North Macedonia'),
       ('818', 'Egypt'),
       ('826', 'United Kingdom of Great Britain and Northern Ireland'),
       ('831', 'Guernsey'),
       ('832', 'Jersey'),
       ('833', 'Isle of Man'),
       ('834', 'Tanzania, United Republic of'),
       ('840', 'United States of America'),
       ('850', '	Virgin Islands (U.S.)'),
       ('854', 'Burkina Faso'),
       ('858', 'Uruguay'),
       ('860', 'Uzbekistan'),
       ('862', 'Venezuela (Bolivarian Republic of)'),
       ('876', 'Wallis and Futuna'),
       ('882', 'Samoa'),
       ('887', 'Yemen'),
       ('894', 'Zambia');

insert into address (country_code, city_name, postal_code, address)
values ('191', 'Osijek', 31000, 'Ulica 1'),
       ('191', 'Vinkovci', 32100, 'Ulica 2'),
       ('191', 'Vukovar', 32000, 'Ulica 3'),
       ('191', 'Zagreb', 10000, 'Ulica 4'),
       ('191', 'Split', 21000, 'Ulica 5'),
       ('191', 'Osijek', 31000, 'Ulica 6'),
       ('191', 'Vinkovci', 32100, 'Ulica 7'),
       ('191', 'Vukovar', 32000, 'Ulica 8'),
       ('191', 'Zagreb', 10000, 'Ulica 9'),
       ('191', 'Split', 21000, 'Ulica 10'),
       ('191', 'Vukovar', 32000, 'Ulica 11'),
       ('191', 'Zagreb', 10000, 'Ulica 12'),
       ('191', 'Split', 21000, 'Ulica 13');

insert into shop (address_id)
values (11),
       (12),
       (13);

insert into user (email,username, first_name, last_name, password, address_id, role_id, otp_password)
values ('rgoodrum0@imageshack.us','Roodie', 'Roddie', 'Goodrum', 'U4oPFypTlPl', 1, 2, 000000),
       ('kwyllt1@nbcnews.com','Kale', 'Kale', 'Wyllt', '2F3uyA', 2, 2, 111111),
       ('mlinggood2@nih.gov','Linggood','Kale', 'Linggood', 'McW7Fi1Z5S', 3, 2, 222222),
       ('rwagstaff3@dagondesign.com','Rickie', 'Rickie', 'Wagstaff', 'Zo8TQC', 4, 2, 333333),
       ('jwesgate4@intel.com','Jeffy', 'Jeffy', 'Wesgate', '6r6WHagvSmT', 5, 2, 444444),
       ('dsylvester0@java.com','Delano', 'Delano', 'Sylvester', 'Male', 6, 2, 555555),
       ('mgriffoen1@opensource.org','Mala', 'Mala', 'Griffoen', 'Female', 7, 2, 666666),
       ('cjobe2@desdev.cn', 'Celine','Jobe', 'Jobe', 'Female', 8, 2, 777777),
       ('kmccusaig3@simplemachines.org','Kristian', 'Kristan', 'McCuaig', 'Female', 9, 2, 888888),
       ('dedelmann4@tiny.cc', 'Derward','Edelmann', 'Edelmann', 'Male', 10, 2, 999999),
       ('ivandragosoldo@gmail.com','Ivan', 'Ivan', 'Soldo', 'Smvhasvbn', 7, 1, 123456);

insert into product_type (product_type_description)
values ('book'),
       ('phone'),
       ('table'),
       ('chair'),
       ('pillow'),
       ('lamp'),
       ('cup'),
       ('vase'),
       ('plate'),
       ('flower');

insert into product (product_type_id, product_name, product_price, product_description)
values (4, 'Wooden chair', 15, 'Simple wooden chair'),
       (3, 'Wooden table', 50, 'Modern wooden table'),
       (5, 'Big pillow', 10, 'Fluffy big pillow'),
       (2, 'Z-phone', 100, 'Z-phone x'),
       (1, 'Fairytale', 5, 'Fairytale for children'),
       (6, 'Table lamp', 5, 'Modern table lamp'),
       (7, 'Plastic cup', 5, 'Small plastic cup'),
       (8, 'Ceramic vase', 5, 'Small ceramic vase'),
       (9, 'Ceramic plate', 5, 'Standard ceramic plate'),
       (10, 'Artificial flower', 3, 'Artificial rose');

insert into `order` (user_id)
values (2),
       (3),
       (1),
       (4),
       (5),
       (6),
       (7),
       (8),
       (9),
       (10);

insert into order_product (order_id, product_id, quantity)
values (1, 1, 4),
       (1, 2, 1),
       (2, 3, 2),
       (3, 4, 1),
       (4, 5, 1),
       (5, 4, 1),
       (6, 6, 1),
       (7, 7, 1),
       (8, 8, 1),
       (9, 9, 1),
       (10, 10, 1);

insert into inventory (product_id, quantity, product_available)
values (1,10, 1),
       (2,10, 1),
       (3,0, 1),
       (4,5, 1),
       (5,0, 1),
       (6,6, 1),
       (7,6, 1),
       (8,5, 1),
       (9,5, 1),
       (10,5, 1);


select count(*) as order_count
from `order`;
select sum(quantity) as total_number_of_items
from order_product
where order_id = 1;
select distinct first_name as unique_names
from user;
select *
from user
where address_id = 5;
select *
from inventory
where product_available = 1;

#List users and their adress from Vinkovci
select u.last_name, c.name as country, a.city_name, a.postal_code, a.address
from user u
         inner join address a on u.address_id = a.id
         inner join country c on a.country_code = c.code
where a.postal_code = 32100 && a.country_code = '191';

#List products with price 10 or more
select p.product_name, pt.product_type_description, p.product_price
from product p
         inner join product_type pt on p.product_type_id = pt.id
where p.product_price > 9;

#List available products
select p.product_name as products_available
from product p
         inner join inventory i on p.id = i.product_id
where i.product_available = 1;

#List all ordered items for specific user
select concat(u.last_name, ' ', u.first_name) as full_name,
       p.product_name,
       op.quantity,
       (op.quantity * p.product_price)        as total_price
from user u
         inner join `order` o on u.id = o.user_id
         inner join order_product op on o.id = op.order_id
         inner join product p on op.product_id = p.id
where u.id = 2;

#List specific order
select o.id, o.order_date, p.product_name, op.quantity
from `order` o
         inner join order_product op on o.id = op.order_id
         inner join product p on op.product_id = p.id
where op.order_id = 1;

select * from product
where product_price > (select AVG(product_price) from product);

delete
from shop
where address_id = 1;

delete
from inventory
where product_available = 0;

delete
from user
where id = 1;

delete
from product_type
where product_type_description = 'phone';

delete
from `order`
where user_id = 10;

delete
from order_product
where id = 11;


update order_product
set quantity = 5
where order_id = 1 && product_id = 1;

update user
set email = 'pero13@gmail.com'
where id = 2;


update product_type
set product_type_description = 'Flowers'
where product_type_description = 'flower';

update product
set product_price = 45
where product_type_id = 3;

update inventory
set product_available = 0
where quantity = 0;
























