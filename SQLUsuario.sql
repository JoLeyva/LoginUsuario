create database BDUsuario;
use BDUsuario;
create table usuario(
idusuario int identity(1,1),
nombre varchar(25)not null,
contrasenia varchar(15)not null,
constraint pk_idusu primary key(idusuario),
constraint uq_nomusu unique(nombre));
insert into usuario values('admin','123456'),('invitado','442211'),('cajero','485612');
select * from usuario;