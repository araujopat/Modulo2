use db_rh;

create table tb_rh(
id bigint (5) auto_increment,
nome varchar (20) not null,
cargo varchar (20) not null,
setor varchar (20) not null,
contrato boolean,

primary key(id)

);