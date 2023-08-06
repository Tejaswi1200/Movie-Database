create table Language_Details(
Language_id int PRIMARY KEY,
Language varchar(10));

CREATE TABLE Actor_Details(
Actor_id int PRIMARY KEY,
Actor_Name varchar(30),
Actor_Phone_Number Varchar(30),
remuneration varchar(10));

CREATE TABLE Actress_Details(
Actress_id int PRIMARY KEY,
Actress_Name varchar(30),
Actress_Phone_Number Varchar(30),
remuneration varchar(10));

CREATE TABLE Director_Details(
Director_id int PRIMARY KEY,
Director_Name varchar(30),
Director_Phone_Number Varchar(30));

CREATE TABLE Producer_Details(
Producer_id int PRIMARY KEY,
Producer_Name varchar(30),
Producer_Phone_Number Varchar(30));

CREATE TABLE Movie_Review_Details(
Review_id int PRIMARY KEY,
Review_Star varchar(30),
Review_Comments varchar(100),
Reviewer_Name varchar(30));

create table Movie_genre_details(
Movie_genre_id int PRIMARY KEY,
Movie_genre varchar(20));

create table Movie_format(
Movie_format_id int PRIMARY KEY,
Movie_format varchar(10));

create table Movie_Details(
Movie_id int PRIMARY KEY,
Movie_Title varchar(100),
movie_language int,
FOREIGN KEY(Movie_Language) references Language_Details(Language_id),
Movie_Release_Year varchar (20),
movie_genre int,
FOREIGN KEY(Movie_Genre) REFERENCES Movie_genre_details(Movie_genre_id),
movie_format int,
FOREIGN KEY(Movie_Format) REFERENCES Movie_format(Movie_format_id),
movie_review int,
FOREIGN KEY(Movie_Review) REFERENCES Movie_Review_Details(Review_id),
budget varchar(20));

create table Movie_Cast(
MovieCast_id int PRIMARY KEY,
movie_details int,
FOREIGN KEY(movie_details) REFERENCES Movie_details(movie_id),
actor int,
FOREIGN KEY(Actor) REFERENCES Actor_Details(Actor_id),
actress int,
FOREIGN KEY(Actress) REFERENCES Actress_Details(Actress_id),
director int,
FOREIGN KEY(Director) REFERENCES Director_Details(Director_id),
producer int,
FOREIGN KEY(Producer) REFERENCES Producer_Details(Producer_id));

#TABLE 1
INSERT INTO Language_Details VALUES
(101, 'English'),
(102, 'Hindi'),
(103, 'Telugu'),
(104, 'Korean');
SELECT * FROM Language_Details;

#Table 2
INSERT INTO Actor_Details VALUES
(201, 'Chris Evans', '001532656','500'),
(202, 'Tom Holland', '001234578','450'),
(203, 'Chris Hemworth', '0012363874','350'),
(204, 'Varun Dhawan', '910000002','400'),
(205, 'Siddharth Malhotra', '91000056','250'),
(206, 'Karthik Aaryan', '910000326','300'),
(207, 'Nikhil', '923000214','300'),
(208, 'Allu Arjun', '923000538','500'),
(209, 'Mahesh Babu', '923000985','450'),
(210, 'Hyo Seop', '005623556','250'),
(211, 'Gong Yoo', '005625458','300'),
(212, 'Yoon Chan Young', '005623652','350');
select * from actor_details;

INSERT INTO Actress_Details VALUES
(301, 'Scarllet Johonson', '001587512','350'),
(302, 'Ana de Armas', '001257215','300'),
(303, 'Sophia Ali', '0012368725','250'),
(304, 'Zendaya', '910078255','150'),
(305, 'Natalie', '9100062482','200'),
(306, 'Farahani', '9100098725','200'),
(307, 'Kriti Sanon', '9230087256','150'),
(308, 'Shraddha Kappor', '923082194','200'),
(309, 'Alia Bhatt', '9230031792','250'),
(310, 'Kiara Advani', '0056282197','300'),
(311, 'Anupama Parameshwaran', '0056235795','250'),
(312, 'Swathi Reddy', '0056216743','150'),
(313, 'kajal', '0056235795','200'),
(314, 'Rashmika', '0056235795','300'),
(315, 'Kim Sejeong', '0056235795','250'),
(316, 'shin hye sun', '0056235795','200'),
(317, 'Jung Yu-mi', '0056235795','300'),
(318, 'Bae Donna', '0056235795','350'),
(319, 'Jung Yu-mi', '0056235795','200'),
(320, 'Park Ji-hu', '0056235795','350'),
(321, 'Lim Ji-yeon', '0056235795','200'),
(322, 'Jung Yu-mi', '0056235795','150');
select * from Actress_Details;


insert into director_details values 
('401','Anthony Russo','0056216865'),
('402','Dexter','0056267168'),
('403','Ruben Fleischer','001257876'),
('404','Jon whatts','001282206'),
('405','Taika Waititi','9230039960'),
('406','Sam Hargrave','9286523012'),
('407','Amar Kaushik','9286523002'),
('408','Remo D souza','9286523023'),
('409','Shakun Batra','9286523232'),
('410','Karan Johar','9286523212'),
('411','Sameer Vidwans','9281223012'),
('412','Annes Bazme','9281523012'),
('413','Chandoo Mondeti','9285623012'),
('414','Sudheer varma','9281856012'),
('415','Sukumar','965323012'),
('416','Park Seon-ho','9223023012'),
('417','Jo soo-won','9281298657'),
('418','Yeon Sang-ho','9288998657'),
('419','Choi Hang-yong','928196557'),
('420','Kim Nam su','9281298867'),
('421','Koratala Siva','9285612357'),
('422','Puri Jaganath','9281289747'),
('423','Yoen Ji-moon','92812856237')
;
select * from director_details;

insert into producer_details values 
('501','Kevin Feige','0056216001'),
('502','David Ellison','0056260020'),
('503','Charles Roven','001250006'),
('504','Joe Russo','001285555'),
('505','Dinesh Vijan','9280562960'),
('506','Siddarth Roy Kapoor','9286562102'),
('507','Karan Johar','9256562102'),
('508','Kishore Arora','9286653202'),
('509','Abhishek Agarwal','9286553212'),
('510','Aditya','9286653202'),
('511','Naveen','9286556402'),
('512','Kim Young-gyu','9286533322'),
('513','Kim Jong-hak','9286685622'),
('514','DVV','9286655100'),
('515','RR Venkat','9286533301'),
('516','Chakri','9285563301'),
('517','Lee Dong-ha','9285336301')
;
select * from producer_details;

insert into Movie_Review_Details values
('601','1','Movie is outdated and boring watch. The execution of movie is disappointing.','Jeeva'),
('602','3','The picture is good. Narration and story are engaging audience','Karn'),
('603','4','Engaging entertainer with decent performances. The film is a perfect option for everyone to watch.','Raj');

select * from Movie_Review_Details;

insert into movie_genre_details values
('701','Comedy'),
('702','Action'),
('703','Drama'),
('704','Thriller'),
('705','Horror'),
('706','Fantasy');

select * from movie_genre_details;

insert into Movie_format values 
('801','2D'),
('802','3D'),
('803','4DX'),
('804','IMAX');

select * from Movie_format;
 
insert into movie_details values
('901','Captain America : The winter soldier',101,'2014','706','801','602','300'),
('902','Ghosted',101,'2023','705','802','602','350'),
('903','UnChartered',101,'2022','702','801','601','200'),
('904','Spider Man No way Home',101,'2021','706','803','602','400'),
('905','Thor - Love and Thunder',101,'2022','706','804','602','450'),
('906','Extraction 2',101,'2023','702','802','602','400'),
('907','Bhediya',102,'2022','705','802','602','300'),
('908','ABCD 2',102,'2014','703','801','601','250'),
('909','Kapoor and Sons',102,'2016','703','801','601','150'),
('910','Student of the year',102,'2012','701','801','602','100'),
('911','Satyaprem ki katha',102,'2023','703','801','601','150'),
('912','Bhool Bhulaiya 2',102,'2022','705','801','602','250'),
('913','Karthikeya 2',103,'2022','706','802','603','300'),
('914','Swami Rara',103,'2013','706','801','602','150'),
('915','Arya2',103,'2009','701','801','603','250'),
('916','Pushpa',103,'2021','703','802','603','350'),
('917','Business Proposal',104,'2023','701','801','602','200'),
('918','Still 17',104,'2018','703','801','602','300'),
('919','Train to Busan',104,'2016','705','802','603','400'),
('920','The Silent Sea',104,'2021','704','801','602','250'),
('921','All of us are Dead',104,'2022','705','802','603','200'),
('922','Blow Breeze',104,'2016','701','801','602','150'),
('923','Bharat Ane Nenu',103,'2018','703','801','603','350'),
('924','Businessman',103,'2012','703','801','602','300')
;
select * from movie_details;

insert into movie_cast values 
('1001','901','201','301','401','501'),
('1002','902','201','302','402','502'),
('1003','903','202','303','403','503'),
('1004','904','202','304','404','501'),
('1005','905','203','305','405','501'),
('1006','906','203','306','406','504'),
('1007','907','204','307','407','505'),
('1008','908','204','308','408','506'),
('1009','909','205','309','409','507'),
('1010','910','205','309','410','507'),
('1011','911','206','310','411','508'),
('1012','912','206','310','412','507'),
('1013','913','207','311','413','509'),
('1014','914','207','312','414','516'),
('1015','915','208','313','415','510'),
('1016','916','208','314','415','511'),
('1017','917','210','315','416','512'),
('1018','918','210','316','417','513'),
('1019','919','211','317','418','517'),
('1020','920','211','318','419','513'),
('1021','921','212','320','420','517'),
('1022','922','212','321','423','512'),
('1023','923','209','310','421','514'),
('1024','924','209','313','422','515');

select * from movie_cast;


select * from language_details;
select * from Actor_Details;
select * from Actress_Details;
select * from Director_Details;
select * from Producer_Details;
select * from Movie_Review_Details;
select * from Movie_genre_details;
select * from Movie_format;
select * from movie_details;
select * from movie_cast;

# 1. Query to fetch movie name, cast details, movie format, review star and comments
select movie_title,actor_name,actress_name,director_name,producer_name,review_star, review_comments,gen.movie_genre,h.movie_format, lan.language, movie_release_year
from
movie_cast a
join movie_details b on a.movie_details=b.movie_id
join actor_details c on a.actor=c.actor_id
join actress_details d on a.actress=d.actress_id
join director_details e on a.director=e.director_id
join producer_details f on a.producer=f.producer_id
join movie_review_details g on b.movie_review=g.review_id 
join movie_format h on b.movie_format=h.movie_format_id
join movie_genre_details gen on b.movie_genre=gen.movie_genre_id
join language_details lan on b.movie_language=lan.language_id;


# 2. Query to to find out the cast of a particular movie
select actor_name, actress_name, director_name,producer_name, movie_title,l.language
from
actor_details a, actress_details b, director_details c, producer_details d, movie_details e, movie_cast f, language_details l
where 
e.movie_id=f.movie_details
and f.actor=a.actor_id
and f.actress=b.actress_id
and f.director=c.director_id
and f.producer=d.producer_id
and e.movie_language=l.language_id
and e.movie_title='ABCD 2';

# 3. Query to find out movies released before 2018. return movie title, year
select movie_title , movie_release_year
from movie_details
where 
movie_release_year < '2018';

# 4. Query to find out number of movies released after 2015 with more than 1 star rating
select movie_release_year, count(*)
from 
movie_details where movie_review in (select review_id from movie_review_details where review_star not in ('1')) and movie_release_year > '2015' 
group by movie_release_year;

# 5. Query to find out directors and their phone numbers who have directed Horror Movies
select director_name, director_phone_number, b.movie_genre
from
movie_details a join movie_genre_details b on a.movie_genre=b.movie_genre_id 
join movie_cast c on a.movie_id=c.movie_details
join director_details d on d.director_id=c.director 
where b.movie_genre='Horror';

# 6. Query to return all the movies with movie_genre, format, budget , language, release year
select movie_title, movie_release_year, c.movie_genre,d.movie_format,e.language,budget
from
movie_details a 
join movie_genre_details c on a.movie_genre=c.movie_genre_id
join movie_format d on a.movie_format=d.movie_format_id
join language_details e on a.movie_language=e.language_id order by movie_release_year asc;

# 7. Query to return producer details and their movies which has more than 250 CR budget
select producer_name, producer_phone_number, movie_title , c.language, budget
from
movie_details a
inner join movie_cast b on a.movie_id=b.movie_details
inner join language_details c on a.movie_language=c.language_id
inner join producer_details d on b.producer=d.producer_id
where a.budget>'250' order by budget desc;

# 8 . Query to return the movie details which has maximum budget in 2021 year
select movie_title , b.language, movie_release_year, budget
from 
movie_details a, language_details b
where
a.movie_language=b.language_id
and a.budget in (select max(budget) from movie_details where movie_release_year='2021')
and a.movie_release_year='2021';

# 9. Query to fetch the films released in each year based on genre
select movie_release_year, b.movie_genre, count(1) 
from
movie_details a, movie_genre_details b
where
a.movie_genre=b.movie_genre_id
group by movie_release_year, b.movie_genre
order by movie_release_year asc;

# 10. Query to fetch the films reviewed by specific reviewer
select movie_title, review_star, reviewer_name
from
movie_details a join movie_review_details b on a.movie_review=b.review_id
where b.reviewer_name='Karn';

# 11. Query to get the movie details  low star rating 
select movie_title, movie_release_year,budget, review_star,review_comments
from
movie_details a 
join movie_review_details b on a.movie_review=b.review_id
where 
b.review_star in (select min(review_star) from movie_review_details);


# 12 . Query to fetch the movie details whose actors name starts with Ch
select movie_title, actor_name, actor_phone_number, c.language
from 
movie_details a 
JOIN movie_cast b on a.movie_id=b.movie_details
join language_details c on a.movie_language=c.language_id
join actor_details d on b.actor=d.actor_id
where d.actor_name like 'Ch%';

# 13. Query to return highest rated Drama movies
select movie_title, c.movie_genre, d.review_star, d.review_comments
from 
movie_cast a
join movie_details b on b.movie_id=a.movie_details
join movie_genre_details c on b.movie_genre=c.movie_genre_id and c.movie_genre='Drama'
join movie_review_details d on b.movie_review= d.review_id
where
d.review_star in (select max(review_star) from movie_review_details );

# 14. Query to fetch movie details which are in 3D and 4dX
select movie_title, movie_release_year, budget, b.movie_format
from
movie_details a
join movie_format b on a.movie_format=b.movie_format_id
where b.movie_format in ('3D','4DX');

# 15 . Query to fetch movies list year and language wise
select movie_release_year, b.language, count(1)
from 
movie_details a
join language_details b on a.movie_language=b.language_id
group by movie_release_year, b.language
order by movie_release_year desc;

# 16. Query to fetch average budget of movies in a particular year
select round(avg(budget)) , movie_release_year
from movie_details
where movie_release_year='2023';

# 17. Query to fetch movie details where a particular director havnt directed
select movie_title, director_name,movie_release_year
from
movie_cast a
join movie_details b on b.movie_id=a.movie_details
join director_details c on a.director = c.director_id
where
c.director_name not in ('Sukumar');

# 18 . Query to fetch the movie details where produced and directed by same person
select movie_title, director_name,producer_name,lan.language
from movie_details a, movie_cast b, director_details c, producer_details d, language_details lan
where
a.movie_id=b.movie_details
and b.director=c.director_id
and b.producer=d.producer_id
and c.director_name=d.producer_name
and a.movie_language=lan.language_id;

#19 . Query to fetch actor records with maximum remuneration
select * from actor_details
where
remuneration in (select max(remuneration) from actor_details);















