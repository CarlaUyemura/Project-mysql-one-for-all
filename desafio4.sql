SELECT
    u.name AS usuario,
    IF(MAX(YEAR(mh.reproduction_date)) >= 2021,
        'Usuário ativo',
        'Usuário inativo') AS status_usuario
FROM
    SpotifyClone.users u
        INNER JOIN
    musics_history mh ON mh.id_user = u.id_user
GROUP BY u.name
ORDER BY u.name;