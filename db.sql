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
