SELECT
    art.artist_name AS artista, alb.album_name AS album
FROM
    SpotifyClone.artists art
        INNER JOIN
    albums alb ON alb.id_artist = art.id_artist
WHERE
    art.artist_name = 'Elis Regina';