drop database if exists cadastros;
create database cadastros charset=UTF8 collate utf8_general_ci;
use cadastros;

create table usuarios (
	email varchar(30) not null,
    senha varchar(30) not null,
);

create table usuarios_novos(
	nome varchar(30) not null,
    bio varchar(30) not null,
    email varchar(30) not null,
    senha varchar(30) not null,
);

insert into usuarios(email, senha) values ("rafa@gmail.com","1234");
insert into usuarios(email, senha) values ("user@gmail.com","1211");

insert into usuarios_novos(nome, bio, email, senha) values ("Rafa", "oi", "rafa@gmail.com", "1234");

select * from usuarios;

show tables;