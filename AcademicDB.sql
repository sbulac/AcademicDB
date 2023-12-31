CREATE DATABASE academic;

CREATE TABLE estudiante();
ALTER TABLE estudiante ADD COLUMN estudiante_id SERIAL NOT NULL;
ALTER TABLE estudiante ADD COLUMN nombre VARCHAR(50) NOUT NULL;
ALTER TABLE estudiante ADD COLUMN edad INT NOT NULL;
ALTER TABLE estudiante ADD COLUMN direccion VARCHAR(50);
ALTER TABLE estudiante ADD COLUMN celular BIGINT NOT NULL;

CREATE TABLE profesor();
ALTER TABLE profesor ADD COLUMN profesor_id SERIAL NOT NULL;
ALTER TABLE profesor ADD COLUMN nombre VARCHAR(50) NOUT NULL;
ALTER TABLE profesor ADD COLUMN edad INT NOT NULL;
ALTER TABLE profesor ADD COLUMN direccion VARCHAR(50);
ALTER TABLE profesor ADD COLUMN celular BIGINT NOT NULL;

CREATE TABLE clase();
ALTER TABLE clase ADD COLUMN clase_id SERIAL NOT NULL;
ALTER TABLE clase ADD COLUMN nombre VARCHAR(50) NOT NULL;
ALTER TABLE clase ADD COLUMN hora TIME NOT NULL;
ALTER TABLE clase ADD COLUMN profesor_id INT NOT NULL;
ALTER TABLE clase ADD COLUMN estudiante_id INT NOT NULL;

ALTER TABLE clase
ADD CONSTRAINT fk_profesor
FOREIGN KEY (profesor_id) REFERENCES profesor(profesor_id);

ALTER TABLE clase
ADD CONSTRAINT fk_estudiante
FOREIGN KEY (estudiante_id) REFERENCES estudiante(estudiante_id);
