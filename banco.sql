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
('Alicia Keys', '1981-01-25', 'https://i1.wp.com/br.nacaodamusica.com/wp-content/uploads/2016/06/13267724_10153497083917051_3121958198698038226_n.jpg'),
('Mary J. Blige', '1971-01-11', 'http://www.soulbounce.com/wp-content/uploads/2014/09/Mary-J-Blige-Black-White-Wearing-Hat.jpg'),
('Rihanna', '1988-02-20', 'https://www.zastavki.com/pictures/1600x1200/2018Music_Singer_Rihanna__black_and_white_photo_129837_2.jpg'),
('Beyoncé', '1981-09-04', 'https://i.pinimg.com/originals/44/f8/72/44f8721b4bf433a0ce16b02d9c131e9c.jpg'),
('Nina Simone', '1933-02-21', 'https://studiosol-a.akamaihd.net/uploadfile/letras/fotos/2/6/a/8/26a84994724b28b4a042a3a7601d134a.jpg'),
('Ledisi', '1972-03-28', 'http://www.soulwalking.co.uk/00Images%202014-1/LEDISI-Nice15.jpg'),
('Lauryn Hill', '1975-05-26', 'https://f.i.uol.com.br/fotografia/2019/05/02/15568487735ccba08548d28_1556848773_3x2_md.jpg'),
('Solange Knowles', '1986-06-24', 'http://imgsapp.df.divirtasemais.com.br/app/noticia_133890394703/2014/07/07/150214/20140707122229541132a.jpg');


insert into disco (artista_id, titulo, youtube_url, lancamento, img_url) values
(1, 'The Diary of Alicia Keys', 'gyos9cVQQcA', 'dez de 2003', 'https://images-na.ssl-images-amazon.com/images/I/61ddUMhR14L._AC_SY355_.jpg'),
(2, 'The London Sessions', 'ihrH45QFelw', 'nov de 2014', 'https://studiosol-a.akamaihd.net/uploadfile/letras/albuns/3/e/b/b/400251418815160.jpg'),
(3, 'Loud', 'sEhy-RXkNo0', 'nov de 2010', 'https://upload.wikimedia.org/wikipedia/pt/1/14/Rihanna_Loud.jpg'),
(4, 'Homecoming', 'NPigmYfco3s', 'abr de 2019', 'https://i.scdn.co/image/ab67616d0000b2736d7ffdc64b1933f01a392470'),
(5, 'I Put a Spell on You', 'DvZIWXxa-3g', 'jun de 1965', 'https://images-na.ssl-images-amazon.com/images/I/91YxSFjU08L._AC_SL1500_.jpg'),
(6, 'Lost & Found', 'zaJB-utPQsU', 'ago de 2007', 'https://studiosol-a.akamaihd.net/uploadfile/letras/albuns/b/b/c/3/27710.jpg'),
(7, 'The Miseducation of Lauryn Hill', 'V89ZjRwMlvM', 'ago de 1998', 'https://images-na.ssl-images-amazon.com/images/I/91RwRgo%2B-gL._AC_SX466_.jpg'),
(8, 'A Seat at the Table', 'qJSVEeuTwPU', 'set de 2016', 'https://images-na.ssl-images-amazon.com/images/I/81sNPBZrmfL._AC_SY355_.jpg'),
(4, 'B Day', '9gheDwGfUK0', 'set de 2006', 'https://www.vagalume.com.br/beyonce/discografia/bday-deluxe-edition.jpg');