SELECT music_name AS nome_musica,
CASE
WHEN musics.music_name LIKE '%Bard%' THEN REPLACE(music_name, 'Bard', 'QA')
WHEN musics.music_name LIKE '%Amar%' THEN REPLACE(music_name, 'Amar', 'Code Review')
WHEN musics.music_name LIKE '%Pais%' THEN REPLACE(music_name, 'Pais', 'Pull Requests')
WHEN musics.music_name LIKE '%SOUL%' THEN REPLACE(music_name, 'SOUL', 'CODE')
WHEN musics.music_name LIKE '%SUPERSTAR%' THEN REPLACE(music_name, 'SUPERSTAR', 'SUPERDEV')
END  novo_nome
FROM SpotifyClone.musics
GROUP BY nome_musica
HAVING novo_nome <> 'NULL'
ORDER BY nome_musica DESc;