create table artista(
	id serial NOT NULL,
	nome text NULL,
	img_url text NULL,
	nasc date NULL,
	CONSTRAINT usuario_pkey PRIMARY KEY (id)
);

CREATE TABLE disco (
	id serial NOT NULL,
	artista_id int NULL,
	titulo text NULL,
	youtube_url text NULL,
	lancamento text NULL, 
	img_url text NULL,
	CONSTRAINT disco_pk PRIMARY KEY (id),
	constraint disco_artista_fk foreign key (artista_id) references artista(id)
);


insert into artista(nome, nasc, img_url) values
('Beyoncé', '1981-09-04', 'https://i.pinimg.com/originals/44/f8/72/44f8721b4bf433a0ce16b02d9c131e9c.jpg'),
('Nina Simone', '1933-02-21', 'https://studiosol-a.akamaihd.net/uploadfile/letras/fotos/2/6/a/8/26a84994724b28b4a042a3a7601d134a.jpg');


insert into disco (artista_id, titulo, youtube_url, lancamento, img_url) values
(1, 'Homecoming', 'NPigmYfco3s', 'abr de 2019', 'https://i.scdn.co/image/ab67616d0000b2736d7ffdc64b1933f01a392470'),
(2, 'I Put a Spell on You', 'DvZIWXxa-3g', 'jun de 1965', 'https://images-na.ssl-images-amazon.com/images/I/91YxSFjU08L._AC_SL1500_.jpg');