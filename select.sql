--PART 1
SELECT name, duration FROM (SELECT * from music_site.Tracks ORDER BY duration DESC LIMIT 1);
SELECT name FROM music_site.Tracks WHERE duration >= INTERVAL '3m 30s';
SELECT name FROM music_site.Compilations WHERE year BETWEEN 2018 AND 2020;
SELECT name FROM music_site.Artists WHERE name NOT LIKE '% %';
SELECT name FROM Msusic_site.Tracks WHERE name ILIKE '%my%';

--PART 2
SELECT g.name, COUNT(a.ArtistID) artist_q FROM music_site.Artists a
JOIN music_site.ArtistsGenres ag ON a.ArtistID = ag.ArtistID
join music_site.Genres g on ag.GenreID = g.GenreID
GROUP BY g.name, ag.GenreID
ORDER BY artist_q DESC;

SELECT COUNT(TrackID) track_q FROM music_site.Albums alb
JOIN music_site.Tracks tr ON alb.AlbumID = tr.AlbumID
WHERE alb.year BETWEEN 2019 AND 2020


SELECT alb.name, AVG(duration) avg_dur FROM music_site.Tracks tr
JOIN music_site.Albums alb ON tr.AlbumID = alb.AlbumID
GROUP BY alb.name, alb.AlbumID
order by alb.AlbumID;

SELECT a.name FROM music_site.Artists a 
JOIN (music_site.Albums alb JOIN music_site.ArtistsAlbums aa ON alb.AlbumID = aa.AlbumID) aaa 
ON a.ArtistID = aaa.ArtistID WHERE year <> 2020
group by a.name, a.ArtistID;

SELECT comp.name FROM music_site.Artists a 
join music_site.ArtistsAlbums aa ON a.ArtistID = aa.ArtistID 
join music_site.Albums alb ON aa.AlbumID = alb.AlbumID 
join music_site.Tracks tr ON alb.AlbumID = tr.AlbumID
join music_site.TracksCompilations tc on tr.TrackID = tc.TrackID
join music_site.Compilations comp on tc.CompilationID = comp.CompilationID
WHERE a.name = 'The Beatles';

--PART 3
select alb.name from music_site.Albums alb
join music_site.ArtistsAlbums aa on alb.AlbumID = aa.AlbumID
join music_site.Artists a on a.ArtistID = aa.ArtistID
join music_site.ArtistsGenres ag on ag.ArtistID = a.ArtistID
group by alb.name, a.ArtistID
having COUNT(ag.GenreID) > 1;

select tr.name from music_site.Tracks tr
left join music_site.TracksCompilations tc on tr.TrackID = tc.TrackID
group by tr.name, tr.TrackID
having COUNT(tc.CompilationID) = 0;

select a.name from music_site.Artists a
join music_site.ArtistsAlbums aa on a.ArtistID = aa.ArtistID
join music_site.Tracks tr on tr.AlbumID = aa.AlbumID
where tr.duration = (select MAX(duration) from music_site.Tracks)

select alb.name from music_site.Albums alb
join music_site.Tracks tr on tr.AlbumID = alb.AlbumID
group by alb.name
having COUNT(tr.TrackID) = (
	select COUNT(tr.TrackID) from music_site.Tracks tr
	join music_site.Albums alb on tr.AlbumID = alb.AlbumID
	group by alb.AlbumID
	order by COUNT(tr.TrackID) limit 1);







