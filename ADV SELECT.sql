-- 1.количество исполнителей в каждом жанре;

select genre_id, count(*)  from musician_genre mg
group by genre_id

select  genre_name, count(*) from genre g 
join musician_genre mg on mg.genre_id = g.genre_id
group by genre_name 


-- 2.количество треков, вошедших в альбомы 2019-2020 годов;
select count(*) from track t 
join album a on a.album_id = t.album_name
where release_year between 2019 and 2020; 

-- 3.средняя продолжительность треков по каждому альбому;
select album_name, avg(track_duration) from track 
group by album_name;

select a.album_name, avg(track_duration) from album a 
join track t on t.album_name = a.album_id 
group by a.album_name;

--4. все исполнители, которые не выпустили альбомы в 2020 году;
select musician_name from track t
join album a on a.album_id = t.album_name
where release_year != 2020;

--5. названия сборников, в которых присутствует конкретный исполнитель (Linkin Park у которых id = 10);
select collection_name, musician_name from collection c
join collection_track ct on ct.collection_id = c.collection_id 
join track t on ct.track_id = t.track_id
where musician_name = 10

--6. название альбомов, в которых присутствуют исполнители более 1 жанра;
select album_name from album a 
join musician_album ma on ma.album_id = a.album_id
join musician_genre mg on mg.musician_id = ma.musician_id 
group by album_name
having count(genre_id) > 1

--7. наименование треков, которые не входят в сборники;
select track_name  from track t
left join collection_track ct on ct.track_id = t.track_id
where collection_id is null

--8. исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько);
select m.musician_name from musician m 
join track t on t.musician_name = m.musician_id
where track_duration = (select min(track_duration) from track t2 )

--9. название альбомов, содержащих наименьшее количество треков.
select a.album_name from album a
join track t on t.album_name = a.album_id 
group by a.album_name 
having count(track_id) = 1 
