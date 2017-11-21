create database pratica05;
use pratica05;

create table dados_multimidia(
Codigo int auto_increment primary key not null,
Nome varchar (30) not null,
Tipo varchar (20) not null,
Dados longblob
);

insert into dados_multimidia (Nome, Tipo, Dados) values
('warner', 'jpeg', load_file ("C:\\ProgramData\\MySQL\\MySQL Server 5.7\\Uploads\\warner.jpeg"));

insert into dados_multimidia (Nome, Tipo, Dados) values
('Gato-Preto', 'jpeg', load_file ("C:\\ProgramData\\MySQL\\MySQL Server 5.7\\Uploads\\Gato-Preto.jpeg"));

select * from dados_multimidia;

select Dados into outfile 'C:\\ProgramData\\MySQL\\MySQL Server 5.7\\Uploads\\WER.jpeg'
 from dados_multimidia where Codigo = 2;