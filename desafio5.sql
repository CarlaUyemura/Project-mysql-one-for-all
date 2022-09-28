SELECT
    m.music_name AS cancao, COUNT(mh.id_user) AS reproducoes
FROM
    SpotifyClone.musics m
        INNER JOIN
    musics_history mh ON mh.id_music = m.id_music
        INNER JOIN
    users u ON u.id_user = mh.id_user
GROUP BY m.id_music
ORDER BY reproducoes DESC , cancao ASC
LIMIT 2;
