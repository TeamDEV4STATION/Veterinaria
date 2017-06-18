create database veterenariaINT;
	use veterenaria;

create table servicio(
	cve_ser char(4),
	nomb_ser char(20),
	costo_ser double(8,2),
	constraint pk1 primary key(cve_ser)
);

create table municipio(
	cve_mun char(5),
	nom_mun char(20),
	constraint pk2 primary key(cve_mun)
);

create table estado(
	cve_est char(5),
	nom_est char(20),
	constraint pk3 primary key(cve_est)
);

create table tipo(
	cve_tipo char(3),
	nomb_tipo char(20),
	constraint pk4 primary key(cve_tipo)
);

create table usuario(
	cve_user char(5),
	nom_user char(20),
	passw_user char(12),
	cve_tipouser char(3),
	constraint pk5 primary key(cve_user),
	constraint fk1 foreign key(cve_tipouser) references tipo(cve_tipo)
);

/*pendiente*/create table cliente(
	cve_cli char(5),
	nom_cli char(30),
	ap_cli char(20),
	am_cli char(20),
	tel_cli char(12),
	rfc_cli char(13),
	cve_estcli char(5),
	constraint pk6 primary key(cve_cli),
	constraint fk2 foreign key(cve_estcli) references estado(cve_est)
);

//de aqui en adelante se debe corregir los pk y fk
create table empleado(
	cve_emp char(5),
	nom_emp char(30),
	ap_emp char(20),
	am_emp char(20),
	curp_emp char(18),
	cve_useremp char(5),
	constraint pk4 primary key(cve_emp),
	constraint fk2 foreign key(cve_useremp) references usuario(cve_user)
);