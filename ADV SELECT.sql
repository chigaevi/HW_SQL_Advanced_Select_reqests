-- 1.количество исполнителей в каждом жанре;
select genre_id, count(*)  from musician_genre mg
group by genre_id


-- 2.количество треков, вошедших в альбомы 2019-2020 годов;
select album_name, count(*)  from track
where album_name = (select album_id from album where release_year >= 2019 and release_year <= 2020)
group by album_name;

-- 3.средняя продолжительность треков по каждому альбому;
select album_name, avg(track_duration) from track 
group by album_name;

--4. все исполнители, которые не выпустили альбомы в 2020 году;
select musician_name, release_year  from track t
left join album a on a.album_id = t.album_name
where release_year != 2020;



--5. названия сборников, в которых присутствует конкретный исполнитель (выберите сами);
--6. название альбомов, в которых присутствуют исполнители более 1 жанра;
--7. наименование треков, которые не входят в сборники;
--8. исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько);
--9. название альбомов, содержащих наименьшее количество треков.