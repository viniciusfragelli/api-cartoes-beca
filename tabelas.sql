CREATE TABLE login(

id INT NOT NULL AUTO_INCREMENT,
user varchar(100) NOT NULL,
pass varchar(100) NOT NULL,
nome varchar(200) NOT NULL,
email varchar(200) NOT NULL,
telefone varchar(100) NOT NULL,
datacriacao TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP(),

PRIMARY KEY (id),
INDEX(user)
)ENGINE=InnoDB, DEFAULT CHARACTER SET = latin1;

CREATE TABLE compras(

id INT NOT NULL AUTO_INCREMENT,
valor float NOT NULL,
parcelado int NOT NULL,
loja varchar(100) NOT NULL,
descricao varchar(100) NOT NULL,
dataCompra TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP(),
idUser INT NOT NULL,

PRIMARY KEY (id),
INDEX(idUser),
FOREIGN KEY(idUser) REFERENCES login(id) ON DELETE CASCADE
)ENGINE=InnoDB, DEFAULT CHARACTER SET = latin1;