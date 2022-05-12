use db;
INSERT INTO usuario(id,email,password,rol)
VALUES (1,"BruceWayne@gmail.com","1111","suscriptor"),
       (2,"BruceasdasWayne@gmail.com","1111","trainer");

INSERT INTO plan(id,modalidad,nombre,precio)
VALUES	(100,"IN-SITE","BASIC",2000),
          (200,"MIXTO","MIX",3500),
          (300,"FULL-SITE","POWER",5000);

select * from usuario;