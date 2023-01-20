select version();
create table klients(
	id serial primary key,
	vārds  text ,
	uzvārds  text,
	tel_numurs int
	
);

create table instrumenti(
	id  serial primary key,
	instr_nosaukums text, 
    cena int
);

create table klienta_instruments (
	noma_laiks TIME, 
	klient_id int,
	instruments_id int,
	constraint fk_klients foreign key (klient_id) references klients(id),
	constraint fk_intrumenti foreign key (instruments_id) references instrumenti(id)
);

insert into klients(vārds, uzvārds, tel_numurs)
values  ( 'Aleksejs', 'Mikins', 22231321),
		( 'Nikita', 'Auzis', 29436621),
		( 'Nika', 'Liepa', 22849250),
		( 'Kristaps', 'Lokiteps', 94382321)
;

insert into instrumenti(instr_nosaukums,cena)
values  ( 'urbis', 15),
		( 'lāpsta', 7),
		( 'trepes', 5)
;

insert into klienta_instruments(noma_laiks, klient_id , instruments_id)
values  ( '9:23:43', 23, 56436),
		( '14:32:54', 41, 34677),
		( '12:23:33', 42, 21231)
;







