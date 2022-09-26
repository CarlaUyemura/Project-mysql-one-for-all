SELECT
    u.name AS usuario,
    COUNT(mh.id_user) AS qt_de_musicas_ouvidas,
ROUND(SUM(m.duration_seconds / 60), 2) AS total_minutos
FROM
    SpotifyClone.users u
        INNER JOIN
    musics_history mh ON mh.id_user = u.id_user
        INNER JOIN
    musics m ON m.id_music = mh.id_music
GROUP BY u.id_user
ORDER BY u.name;

