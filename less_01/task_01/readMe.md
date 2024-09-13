1) Какие типы связи использовались:
   многие(tb_music_tracks) к одному(tb_albums)
   многие(tb_albums) к одному(tb_artists)
   многие(tb_albums) к одному(tb_artists) 
2) Первичный ключ везде id
3) В tb_albums внешние ключи artist_id и genre_id
   В tb_music_tracks внешний ключ album_id
4) Родительские таблицы tb_music_tracks и tb_albums