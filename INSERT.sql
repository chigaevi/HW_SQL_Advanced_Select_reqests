insert into genre(genre_name) 
values 
('хард-рок'),	
('поп'), 
('кантри'),	
('хип-хоп'), 
('регги'), 
('альтернативный рок');
	
-- Добавляем исполнителей
insert into musician(musician_name) 
values 
('Metallica'),
('AC/DC'),
('Britney Spears'),
('Michael Jackson'),
('Dolly Rebecca Parton'),
('Conway Twitty'),
('De La Soul'),
('A Tribe Called Quest'),
('Bob Marley'),
('Linkin Park'),
('Animal ДжаZ');

-- Связываем  музыкантов и жанры
insert into musician_genre 
values 
(1,1),
(2,1),
(10,1),
(10,2),
(3,2),
(4,2),
(5,3),
(6,3),
(7,4),
(8,4),
(10,4),
(9,5),
(10,6),
(11,6);

-- Добавляем альбомы
insert into album (album_name, release_year) 
values 
('Uprising',1980),  --Bob Marley
('Confrontation',1983), --Bob Marley
('Circus',2008), --Britney Spears
('Glory',2016), -- Britney Spears
('Meteora',2003), -- Linkin Park
('One More Light',2017), -- Linkin Park
('Load',1996), --Metallica
('Power Up',2020), --AC/DC
('Thriller',1982), --Michael Jackson
('Bad',1987), --Michael Jackson
('Run, Rose, Run',2022), --Dolly Rebecca Parton
('Buhloone Mindstate',1993), --De La Soul
('Счастье',2018); --Animal ДжаZ

-- Связываем  музыкантов и альбомы
insert into musician_album 
values 
(1,7),
(2,8),
(3,3),
(3,4),
(4,9),
(4,10),
(5,11),
(7,12),
(9,1),
(9,2),
(10,5),
(10,6),
(11,13);


-- Добавляем колекции
insert into collection (collection_name, release_year) 
values 
('Super collection', 1995),
('Angry collection', 1999),
('Clever collection', 1999),
('Friendly collection', 2020),
('Handsome collection', 2001),
('Cruel collection', 2022),
('Hot collection', 1996),
('Black collection', 2012);

delete from track

-- Добавляем треки
insert into track (track_name, musician_name, album_name, track_duration) 
values 
('Coming in From The Cold', 9, 1,'00:04:31'), --Bob Marley/Uprising 
('Chant Down Babylon', 9, 2,'00:02:35'), --Bob Marley/Confrontation
('Dont Stay', 10,5,'00:03:08'), -- Linkin Park/Meteora
('Sorry for Now', 10, 6,'00:03:23'), -- Linkin Park/One More Light
('The House Jack Built', 1, 7,'00:06:39'), --Metallica/Load
('Rejection', 2, 8,'00:04:06'), --AC/DC/Power Up
('Demon Fire', 2, 8,'00:03:30'), --AC/DC/Power Up
('Womanizer', 3, 3,'00:03:43'), -- Britney Spears/Circus 
('Invitation', 3, 4,'00:03:19'), -- Britney Spears/Glory 
('Baby Be Mine', 4, 9,'00:04:20'), --Michael Jackson/Thriller
('Beat It', 4, 9,'00:04:18'), --Michael Jackson/Thriller
('Bad', 4, 10,'00:04:07'), --Michael Jackson/Bad 
('Big Dreams and Faded Jeans', 5, 11,'00:04:07'), --Dolly Rebecca Parton/Run, Rose, Run
('Driven', 5, 11,'00:02:40'), --Dolly Rebecca Parton/Run, Rose, Run
('3 Days Later', 7, 12,'00:02:39'), --De La Soul/Buhloone Mindstate
('Eye Patch', 7, 12,'00:02:27'); --De La Soul/Buhloone Mindstate

delete from collection_track

-- Связываем  колекции и треки
insert into collection_track 
values
(1,1),
(1,2),
(2,3),
(2,2),
(3,4),
(3,1),
(4,5),
(4,6),
(4,1),
(5,7),
(5,8),
(6,8),
(6,7),
(6,2),
(7,9),
(7,10),
(7,11),
(8,12),
(8,5),
(8,8);

