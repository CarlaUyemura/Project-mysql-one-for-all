SELECT
    COUNT(mh.id_user) AS quantidade_musicas_no_historico
FROM
    SpotifyClone.musics_history mh
        INNER JOIN
    users u ON u.id_user = mh.id_user
WHERE
    u.name = 'Barbara Liskov'; 