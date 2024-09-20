--задание3
select ta.id, ta."name" from student12.tb_artists ta
left join student12.tb_albums ta2 on ta.id = ta2.artist_id
left join student12.tb_genres tg on ta2.genre_id = tg.id
where tg."name" = 'Рок'

--задание4
select ta.id, ta."name" from student12.tb_artists ta
left join student12.tb_albums ta2 on ta.id = ta2.artist_id
left join student12.tb_genres tg on ta2.genre_id = tg.id
where tg."name" != 'Рок' or tg."name" is nul

--задание5
select tmt."name" from student12.tb_music_tracks tmt
left join student12.tb_albums ta2 on tmt.album_id = ta2.id
left join student12.tb_genres tg on ta2.genre_id = tg.id
where tg."name" = 'Рок' and tmt."time" > 30000

--задание6
select ta.name from student12.tb_artists ta
left join student12.tb_albums ta2 on ta2.artist_id = ta.id
left join student12.tb_music_tracks tmt  on tmt.album_id = ta2.id
left join student12.tb_genres tg on ta2.genre_id = tg.id
where tg."name" = 'Рок'
group by ta."name"
having avg(tmt.time) > 20000000

--задание7
select sum(mt.number_plays) from student12.tb_music_tracks mt
left join student12.tb_albums ta on mt.album_id = ta.id
left join student12.tb_genres tg on ta.genre_id = tg.id
where  tg."name" = 'Рок'

--задание8
select tg."name" , sum(mt.number_plays) as sum_plays from student12.tb_music_tracks mt
left join student12.tb_albums ta on mt.album_id = ta.id
left join student12.tb_genres tg on ta.genre_id = tg.id
group by tg."name"
order by sum_plays

--задание9
select ta.name, avg(tmt.number_plays) as avg_cnt from student12.tb_artists ta
left join student12.tb_albums ta2 on ta2.artist_id = ta.id
left join student12.tb_music_tracks tmt  on tmt.album_id = ta2.id
group by ta.name
order by avg_cnt desc

--задание10
select ta.name, sum(tmt.number_plays) as sum_play from student12.tb_artists ta
left join student12.tb_albums ta2 on ta2.artist_id = ta.id
left join student12.tb_music_tracks tmt  on tmt.album_id = ta2.id
group by ta.name
order by sum_play

--задание11
select ta.name, s.sum_track from student12.tb_artists ta
left join
(select tmt.album_id, count(*) as sum_track
from  student12.tb_music_tracks tmt
group by tmt.album_id) s on ta.id = s.album_id

--задание12
INSERT INTO student12.tb_genres (name) VALUES
('Драм'),
('Транс'),
('Хаус');

select * from student12.tb_music_tracks tmt
join student12.tb_albums ta on ta.id = tmt.album_id
join student12.tb_artists ta2 on ta.artist_id = ta2.id


--задание13
INSERT INTO student12.tb_genres (name) VALUES
(NULL);

INSERT INTO student12.tb_albums (artist_id, "name", genre_id, "year") VALUES
((select id from student12.tb_artists where name = 'Запевун2'),
'ЛучшийАльбом',
(select id from student12.tb_genres where name is NULL),
'2016');

select tg.name from student12.tb_genres tg
join student12.tb_albums ta on ta.genre_id = tg.id
left join student12.tb_music_tracks tm on tm.album_id = ta.id
where tm.id is NULL
