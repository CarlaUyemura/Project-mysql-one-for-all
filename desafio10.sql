SELECT
    m.music_name AS nome, COUNT(mh.id_music) AS reproducoes
FROM
    musics m
        INNER JOIN
    musics_history mh ON mh.id_music = m.id_music
        INNER JOIN
    users u ON u.id_user = mh.id_user
        INNER JOIN
    plans p ON p.id_plan = u.id_plan
WHERE
    p.id_plan = 1 OR p.id_plan = 3
GROUP BY m.id_music
ORDER BY nome;

