-- select * from artists;

select count(*) from artists;

select * from playlists;

select * from playlists where Name LIKE '%s'

select * from artists where Name = "Lost"

select * from albums where artistId = 150; // foreigh keys

-- Find all the albums for a given artists
select * from artists
join albums on artists.ArtistId = albums.ArtistId
where artists.ArtistId ="17"

-- where Name = "Amy winehouse";
select * from artists
join albums on artists.ArtistId = albums.ArtistId
where artists.ArtistId = "Amy winehouse";

-- where Name = "U2";
-- where Name = "Lost"; find lost items

-- Find all the songs for a given Genre
SELECT * FROM Genres
JOIN tracks on Genres.GenreId = tracks.GenreId
-- WHERE Genres.Name = "Blues";
WHERE Genres.GenreId= 5;

select * from tracks;

-- * Find all the songs in a playlist - by playlist name...
SELECT * FROM playlists
JOIN playlist_track
   on playlist_track.PlaylistId = playlists.PlaylistId
JOIN tracks
   on playlist_track.TrackId = tracks.TrackId
WHERE playlists.Name = "Music";

SELECT * FROM playlists
JOIN playlist_track
   on playlist_track.PlaylistId = playlists.PlaylistId
JOIN tracks
   on playlist_track.TrackId = tracks.TrackId
WHERE playlists.Name = "Classical";

-- find all the artists for a given Genre
SELECT * FROM Genres
WHERE Genres.Name = "Rock"

-- Find all the artists for a given Genre
SELECT * FROM Genres
join tracks on tracks.GenreId = genres.genreId
join albums on albums.AlbumId = tracks.AlbumId
join artists on artists.ArtistId = albums.ArtistId
where Genres.Name = "Rock";

-- Find all the playlists containing a given genre
SELECT * FROM Genres
join playlists on playlists.PlaylistId = playlist_track. PlaylistId
join playlist_track on playlist_track.TrackId = tracks.TrackId
join tracks on tracks.GenreId = genres.GenreId
where Genres.Name = "Rock";

-- Find the artist with the most/least songs (needs group by)
SELECT count (*) from playlists
join playlist_track on playlists.PlaylistId = playlist_track.PlaylistId
group by playlists.Name


SELECT playlists.Name, count(*) as SongCount from playlists
JOIN playlist_track ON playlists.PlaylistId = playlist_track.PlaylistId
GROUP BY playlists.Name
ORDER BY SongCount DESC
LIMIT 1;

SELECT playlists.Name, count(*) as SongCount from playlists
JOIN playlist_track ON playlists.PlaylistId = playlist_track.PlaylistId
GROUP BY playlists.Name
ORDER BY SongCount ASC
LIMIT 1;

-- Find the total for a given invoice (will need a sum)
select * from invoices where invoices.InvoiceId = 17 ;

-- Find the biggest/smallest invoice amounts (needs group by)
select InvoiceId, Min(Total) from invoices;

-- Find the biggest invoice amounts (needs group by)
select InvoiceId, Max(Total) from invoices;

-- Find the artist with the most songs
select artists.Name, count(*) as TrackCount
from artists
join albums on albums.ArtistId = artists.ArtistId
join tracks on tracks.AlbumId = albums.AlbumId
group by artists.Name
order by trackCount desc
Limit 1;

-- Find the artist with the least songs
select artists.Name, count(*) as TrackCount
from artists
join albums on albums.ArtistId = artists.ArtistId
join tracks on tracks.AlbumId = albums.AlbumId
group by artists.Name
order by trackCount asc
Limit 1;

select artists.Name, count(*) as TrackCount
from artists
join albums on albums.ArtistId = artists.ArtistId
join tracks on tracks.AlbumId = albums.AlbumId
group by artists.Name
order by trackCount asc
Limit 3
Offset 1;

 