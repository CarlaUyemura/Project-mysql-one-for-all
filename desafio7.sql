SELECT
    art.artist_name AS artista,
    alb.album_name AS album,
    COUNT(fol.id_artist) AS seguidores
FROM
    SpotifyClone.albums alb
        INNER JOIN
    artists art ON art.id_artist = alb.id_artist
        INNER JOIN
    followers fol ON fol.id_artist = art.id_artist
GROUP BY alb.id_album
ORDER BY seguidores DESC , artista ASC, album ASC;