-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema dark
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `dark` ;

-- -----------------------------------------------------
-- Schema dark
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `dark` DEFAULT CHARACTER SET utf8 ;
USE `dark` ;

-- -----------------------------------------------------
-- Table `temporada`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `temporada` ;

CREATE TABLE IF NOT EXISTS `temporada` (
  `id_temporada` INT(11) NOT NULL AUTO_INCREMENT,
  `temp` VARCHAR(45) NOT NULL,
  `descrip_temp` TEXT NOT NULL,
  `img_temp` VARCHAR(60) NOT NULL,
  `enlace_trailer` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_temporada`))
ENGINE = InnoDB
AUTO_INCREMENT = 5
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `capitulo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `capitulo` ;

CREATE TABLE IF NOT EXISTS `capitulo` (
  `id_capitulo` INT(11) NOT NULL,
  `cap_temp` INT NOT NULL,
  `titulo` VARCHAR(55) NOT NULL,
  `descrip_cap` TEXT NOT NULL,
  `img_cap` VARCHAR(60) NOT NULL,
  `temporada_id_temporada` INT(11) NOT NULL,
  PRIMARY KEY (`id_capitulo`),
  CONSTRAINT `fk_capitulo_temporada1`
    FOREIGN KEY (`temporada_id_temporada`)
    REFERENCES `temporada` (`id_temporada`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 27
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `galeria`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `galeria` ;

CREATE TABLE IF NOT EXISTS `galeria` (
  `id_galeria` INT(11) NOT NULL,
  `img_galeria` VARCHAR(60) NOT NULL,
  `nombre_img` VARCHAR(45) NOT NULL,
  `temporada_id_temporada` INT(11) NOT NULL,
  PRIMARY KEY (`id_galeria`),
  CONSTRAINT `fk_galeria_temporada1`
    FOREIGN KEY (`temporada_id_temporada`)
    REFERENCES `temporada` (`id_temporada`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 22
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `personaje`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `personaje` ;

CREATE TABLE IF NOT EXISTS `personaje` (
  `id_personaje` INT(11) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `apellido` VARCHAR(45) NOT NULL,
  `img_personaje` VARCHAR(60) NOT NULL,
  `descrip_personaje` TEXT NOT NULL,
  PRIMARY KEY (`id_personaje`))
ENGINE = InnoDB
AUTO_INCREMENT = 17
DEFAULT CHARACTER SET = utf8;





INSERT INTO `temporada` (`id_temporada`, `temp`, `descrip_temp`, `img_temp`, `enlace_trailer`) VALUES (1, 'Primera Temporada', 'Tras la desaparición de un joven, cuatro familias desesperadas tratan de entender lo ocurrido a medida que van desvelando un retorcido misterio que abarca tres décadas... Saga familiar con un giro sobrenatural, \"Dark\" se sitúa en un pueblo alemán, donde dos misteriosas desapariciones dejan al descubierto las dobles vidas y las relaciones resquebrajadas entre estas cuatro familias.', 'imagenes/inicio/Temporada-1.jpg', 'https://www.youtube.com/watch?v=IJ_AZCvCacw');
INSERT INTO `temporada` (`id_temporada`, `temp`, `descrip_temp`, `img_temp`, `enlace_trailer`) VALUES (2, 'Segunda Temporada', 'Transcurridos seis meses de las desapariciones, la policía forma un grupo de trabajo muy completo. En el año 2052, Jonas se entera de que muchas muertes se dieron en un evento apocalíptico, asimismo, Clausen y Charlotte entrevistan a Regina lo que conlleva a una desenlace nada agradable. Por ende, un extraño lleva a Hannah a 1987, donde Claudia tiene un encuentro desconcertante y Egon visita a un antiguo némesis.', 'imagenes/inicio/Temporada-2.jpg', 'https://www.youtube.com/watch?v=Nghb6pT0ghk');
INSERT INTO `temporada` (`id_temporada`, `temp`, `descrip_temp`, `img_temp`, `enlace_trailer`) VALUES (3, 'Tercera Temporada', ' En 2019, Jonas sale de la cueva y entra en un mundo extraño pero conocido: el pueblo de Winden, estremecido por la desaparición de uno de sus jóvenes. Martha viaja a 1888 para alertar a sus amigos sobre el desastre de 2020. Los habitantes presentes y pasados de Winden buscan a sus seres queridos desaparecidos.', 'imagenes/inicio/Temporada-3.jpg', 'https://www.youtube.com/watch?v=z2wPBG-GSJ0&t');

INSERT INTO `galeria` (`id_galeria`, `img_galeria`, `nombre_img`, `temporada_id_temporada`) VALUES (1, '../imagenes/galeria/Temporada-1-1.png', 'Temporada-1-1', 1);
INSERT INTO `galeria` (`id_galeria`, `img_galeria`, `nombre_img`, `temporada_id_temporada`) VALUES (2, '../imagenes/galeria/Temporada-1-2.png', 'Temporada-1-2', 1);
INSERT INTO `galeria` (`id_galeria`, `img_galeria`, `nombre_img`, `temporada_id_temporada`) VALUES (3, '../imagenes/galeria/Temporada-1-3.png', 'Temporada-1-3', 1);
INSERT INTO `galeria` (`id_galeria`, `img_galeria`, `nombre_img`, `temporada_id_temporada`) VALUES (4, '../imagenes/galeria/Temporada-1-4.png', 'Temporada-1-4', 1);
INSERT INTO `galeria` (`id_galeria`, `img_galeria`, `nombre_img`, `temporada_id_temporada`) VALUES (5, '../imagenes/galeria/Temporada-1-5.png', 'Temporada-1-5', 1);
INSERT INTO `galeria` (`id_galeria`, `img_galeria`, `nombre_img`, `temporada_id_temporada`) VALUES (6, '../imagenes/galeria/Temporada-1-6.png', 'Temporada-1-6', 1);
INSERT INTO `galeria` (`id_galeria`, `img_galeria`, `nombre_img`, `temporada_id_temporada`) VALUES (7, '../imagenes/galeria/Temporada-2-1.png', 'Temporada-2-1', 2);
INSERT INTO `galeria` (`id_galeria`, `img_galeria`, `nombre_img`, `temporada_id_temporada`) VALUES (8, '../imagenes/galeria/Temporada-2-2.png', 'Temporada-2-2', 2);
INSERT INTO `galeria` (`id_galeria`, `img_galeria`, `nombre_img`, `temporada_id_temporada`) VALUES (9, '../imagenes/galeria/Temporada-2-3.png', 'Temporada-2-3', 2);
INSERT INTO `galeria` (`id_galeria`, `img_galeria`, `nombre_img`, `temporada_id_temporada`) VALUES (10, '../imagenes/galeria/Temporada-2-4.png', 'Temporada-2-4', 2);
INSERT INTO `galeria` (`id_galeria`, `img_galeria`, `nombre_img`, `temporada_id_temporada`) VALUES (11, '../imagenes/galeria/Temporada-2-5.png', 'Temporada-2-5', 2);
INSERT INTO `galeria` (`id_galeria`, `img_galeria`, `nombre_img`, `temporada_id_temporada`) VALUES (12, '../imagenes/galeria/Temporada-2-6.png', 'Temporada-2-6', 2);
INSERT INTO `galeria` (`id_galeria`, `img_galeria`, `nombre_img`, `temporada_id_temporada`) VALUES (13, '../imagenes/galeria/Temporada-3-1.png', 'Temporada-3-1', 3);
INSERT INTO `galeria` (`id_galeria`, `img_galeria`, `nombre_img`, `temporada_id_temporada`) VALUES (14, '../imagenes/galeria/Temporada-3-2.png', 'Temporada-3-2', 3);
INSERT INTO `galeria` (`id_galeria`, `img_galeria`, `nombre_img`, `temporada_id_temporada`) VALUES (15, '../imagenes/galeria/Temporada-3-3.png', 'Temporada-3-3', 3);
INSERT INTO `galeria` (`id_galeria`, `img_galeria`, `nombre_img`, `temporada_id_temporada`) VALUES (16, '../imagenes/galeria/Temporada-3-4.png', 'Temporada-3-4', 3);
INSERT INTO `galeria` (`id_galeria`, `img_galeria`, `nombre_img`, `temporada_id_temporada`) VALUES (17, '../imagenes/galeria/Temporada-3-5.png', 'Temporada-3-5', 3);
INSERT INTO `galeria` (`id_galeria`, `img_galeria`, `nombre_img`, `temporada_id_temporada`) VALUES (18, '../imagenes/galeria/Temporada-3-6.png', 'Temporada-3-6', 3);



INSERT INTO `personaje` (`id_personaje`, `nombre`, `apellido`, `img_personaje`, `descrip_personaje`) VALUES (1, 'Jonas', 'Kahnwald', '../imagenes/personajes/Jonas-Kahnwald.jpg', 'Jonas Kahnwald es el hijo de Michael y Hannah Kahnwald.Es una persona reflexiva cuyo suicidio de padre lo golpea con fuerza, incluso peor después de descubrir su verdadera identidad.');
INSERT INTO `personaje` (`id_personaje`, `nombre`, `apellido`, `img_personaje`, `descrip_personaje`) VALUES (2, 'Hannah', 'Kahnwald', '../imagenes/personajes/Hannah-Kahnwald.jpg', 'Hannah Kahnwald es la madre de Jonas y la esposa del difunto padre de Jonas, Michael Kahnwald.Cuando este se suicida, sume a la familia en una depresión.');
INSERT INTO `personaje` (`id_personaje`, `nombre`, `apellido`, `img_personaje`, `descrip_personaje`) VALUES (3, 'Michael', 'Kahnwald', '../imagenes/personajes/Michael-Kahnwald.jpg', 'Michael Kahnwald es el padre de Jonas Kahnwald, esposo de Hannah Kahnwald e hijo adoptivo de Ines Kahnwald.');
INSERT INTO `personaje` (`id_personaje`, `nombre`, `apellido`, `img_personaje`, `descrip_personaje`) VALUES (4, 'Ines', 'Kahnwald', '../imagenes/personajes/Ines-Kahnwald.jpg', 'Ines Kahnwald era la madre adoptiva de Michael y la abuela adoptiva de Jonas.Ella es una enfermera jubilada en el Hospital Winden.');
INSERT INTO `personaje` (`id_personaje`, `nombre`, `apellido`, `img_personaje`, `descrip_personaje`) VALUES (5, 'Martha', 'Nielsen', '../imagenes/personajes/Martha-Nielsen.jpg', 'Martha Nielsen es la hija de Ulrich y Katharina Nielsen, y la hermana de Magnus y Mikkel Nielsen.');
INSERT INTO `personaje` (`id_personaje`, `nombre`, `apellido`, `img_personaje`, `descrip_personaje`) VALUES (6, 'Mikkel', 'Nielsen', '../imagenes/personajes/Mikkel-Nielsen.jpg', 'Mikkel Nielsen, hijo de Ulrich y Katharina Nielsen y hermano menor de Magnus y Martha Nielsen.');
INSERT INTO `personaje` (`id_personaje`, `nombre`, `apellido`, `img_personaje`, `descrip_personaje`) VALUES (7, 'Magnus', 'Nielsen', '../imagenes/personajes/Magnus-Nielsen.jpg', 'Magnus Nielsen es el hijo mayor de Katharina y Ulrich Nielsen y el hermano de Martha y Mikkel.');
INSERT INTO `personaje` (`id_personaje`, `nombre`, `apellido`, `img_personaje`, `descrip_personaje`) VALUES (8, 'Katharina', 'Nielsen', '../imagenes/personajes/Katharina-Nielsen.jpg', 'Katharina Nielsen es la directora del instituto y la madre de Magnus, Martha y Mikkel. Está casada con Ulrich Nielsen.Su hijo menor, Mikkel, desaparece, con lo que entra en depresión y desatiende a Magnus y a Martha.');
INSERT INTO `personaje` (`id_personaje`, `nombre`, `apellido`, `img_personaje`, `descrip_personaje`) VALUES (9, 'Ulrich', 'Nielsen', '../imagenes/personajes/Ulrich-Nielsen.jpg', 'Ulrich Nielsen es el marido de Katharina Nielsen y el padre de Magnus Nielsen, Martha Nielsen y Mikkel Nielsen.Es un oficial de policía testarudo.Después de la desaparición de uno de sus hijos, Mikkel Nielsen , intenta ferozmente encontrarlo, enredado en los misterios de Winden.');
INSERT INTO `personaje` (`id_personaje`, `nombre`, `apellido`, `img_personaje`, `descrip_personaje`) VALUES (10, 'Regina', 'Tiedemann', '../imagenes/personajes/Regina-Tiedemann.jpg', 'Regina Tiedemann es la esposa de Aleksander Tiedemann , que adopta su apellido y con el que tiene un hijo, Bartosz.Está enemistada con los Nielsen, sobre todo con Katharina, por los abusos que recibió de su parte cuando era adolescente en el instituto, ya que era objeto frecuente del bullying de Katharina.');
INSERT INTO `personaje` (`id_personaje`, `nombre`, `apellido`, `img_personaje`, `descrip_personaje`) VALUES (11, 'Aleksander', 'Tiedemann', '../imagenes/personajes/Aleksander-Tiedemann.jpg', 'Aleksander Tiedemann (alias Boris Niewald) es el director de la central de energía nuclear de Winden. Está casado con Regina Tiedemann y es el padre de Bartosz Tiedemann.');
INSERT INTO `personaje` (`id_personaje`, `nombre`, `apellido`, `img_personaje`, `descrip_personaje`) VALUES (12, 'Bartosz', 'Tiedemann', '../imagenes/personajes/Bartosz-Tiedemann.jpg', 'Bartosz Tiedemann es el hijo de Regina y Aleksander Tiedemann . En la primera temporada sale con Martha Nielsen y es amigo de Jonas Kahnwald.');
INSERT INTO `personaje` (`id_personaje`, `nombre`, `apellido`, `img_personaje`, `descrip_personaje`) VALUES (13, 'Charlotte', 'Doppler', '../imagenes/personajes/Charlotte-Doppler.jpg', 'Charlotte Doppler es jefa de la Policía de Winden en 2019. Está casada con Peter Doppler con quien tiene dos hijas, Franziska y Elisabeth.');
INSERT INTO `personaje` (`id_personaje`, `nombre`, `apellido`, `img_personaje`, `descrip_personaje`) VALUES (14, 'Peter', 'Doppler', '../imagenes/personajes/Peter-Doppler.jpg', 'Peter Doppler es terapeuta en Winden y asesora a Jonas Kahnwald después del suicidio de su padre Michael Kahnwald.');
INSERT INTO `personaje` (`id_personaje`, `nombre`, `apellido`, `img_personaje`, `descrip_personaje`) VALUES (15, 'Elisabeth', 'Doppler', '../imagenes/personajes/Elisabeth-Doppler.jpg', 'Elisabeth Doppler es la hija menor de Charlotte y Peter Doppler . Ella es sorda, por lo que se comunica usando lenguaje de señas. Una niña segura y extrovertida, le gusta robar el lápiz labial rojo de su hermana mayor Franziska.');
INSERT INTO `personaje` (`id_personaje`, `nombre`, `apellido`, `img_personaje`, `descrip_personaje`) VALUES (16, 'Franziska', 'Doppler', '../imagenes/personajes/Franziska-Doppler.jpg', 'Franziska Doppler es la hija de Peter Doppler y Charlotte Doppler y una hermana mayor de Elisabeth . Una adolescente en 2019, es una gimnasta rítmica, tiene calificaciones perfectas y es considerada una nerd por sus compañeros de clase, incluidos Jonas y Bartosz.');


INSERT INTO `capitulo` (`id_capitulo`, `cap_temp`, `titulo`, `descrip_cap`, `img_cap`, `Temporada_id_temporada`) VALUES (1, '1', 'Secretos', '2019. La desaparición de un niño local aterroriza a los habitantes de Winden, un pueblito alemán con una historia tan trágica como extraña.', '../imagenes/capitulos/Dark-1-1.jpg', 1);
INSERT INTO `capitulo` (`id_capitulo`, `cap_temp`, `titulo`, `descrip_cap`, `img_cap`, `Temporada_id_temporada`) VALUES (2, '2', 'Mentiras', 'La policía queda desconcertada tras un descubrimiento macabro, y Ulrich busca una orden de allanamiento para la planta nuclear. Un extraño se registra en el hotel.', '../imagenes/capitulos/Dark-1-2.jpg', 1);
INSERT INTO `capitulo` (`id_capitulo`, `cap_temp`, `titulo`, `descrip_cap`, `img_cap`, `Temporada_id_temporada`) VALUES (3, '3', 'Pasado y presente', '1986. Mads, el hermano de Ulrich, está desaparecido desde hace un mes. La confusión se apodera de la situación cuando el pasado y el presente se entrecruzan.', '../imagenes/capitulos/Dark-1-3.jpg', 1);
INSERT INTO `capitulo` (`id_capitulo`, `cap_temp`, `titulo`, `descrip_cap`, `img_cap`, `Temporada_id_temporada`) VALUES (4, '4', 'Dobles vidas', 'Charlotte siente un déjà vu tras una serie de sucesos inquietantes y sospecha que Peter oculta algo. Franziska se quiebra cuando Magnus la confronta.', '../imagenes/capitulos/Dark-1-4.jpg', 1);
INSERT INTO `capitulo` (`id_capitulo`, `cap_temp`, `titulo`, `descrip_cap`, `img_cap`, `Temporada_id_temporada`) VALUES (5, '5', 'Verdades', 'Hannah lleva demasiado lejos su obsesión con Ulrich. El Extraño le pide a Regina que entregue un paquete importante. Jonas y Bartosz ponen a Martha en un dilema.', '../imagenes/capitulos/Dark-1-5.jpg', 1);
INSERT INTO `capitulo` (`id_capitulo`, `cap_temp`, `titulo`, `descrip_cap`, `img_cap`, `Temporada_id_temporada`) VALUES (6, '6', 'Sic mundus creatus est', 'Ulrich busca respuestas en el pasado y desentierra secretos familiares. Jonas usa sus nuevas herramientas para abrirse camino en la oscuridad de la cueva.', '../imagenes/capitulos/Dark-1-6.jpg', 1);
INSERT INTO `capitulo` (`id_capitulo`, `cap_temp`, `titulo`, `descrip_cap`, `img_cap`, `Temporada_id_temporada`) VALUES (7, '7', 'Encrucijadas', 'En el asilo, Ulrich interroga a Helge, que está frágil y asustado. Jonas busca a Mikkel, pero el Extraño le advierte que no se meta con el pasado.', '../imagenes/capitulos/Dark-1-7.jpg', 1);
INSERT INTO `capitulo` (`id_capitulo`, `cap_temp`, `titulo`, `descrip_cap`, `img_cap`, `Temporada_id_temporada`) VALUES (8, '8', 'Cosechas lo que siembras', '1953. En una obra en construcción, se exhuman los restos desfigurados de dos niños. Se trata del mismo lugar donde estará la planta nuclear de Winden.', '../imagenes/capitulos/Dark-1-8.jpg', 1);
INSERT INTO `capitulo` (`id_capitulo`, `cap_temp`, `titulo`, `descrip_cap`, `img_cap`, `Temporada_id_temporada`) VALUES (9, '9', 'Todo es ahora', 'Ulrich se desvía del camino de la ley, Helge intenta esquivar a Egon Tiedemann, Claudia usa los poderes de la cueva, y Katharina se desquita con Hannah.', '../imagenes/capitulos/Dark-1-9.jpg', 1);
INSERT INTO `capitulo` (`id_capitulo`, `cap_temp`, `titulo`, `descrip_cap`, `img_cap`, `Temporada_id_temporada`) VALUES (10, '10', 'Alfa y omega', 'Peter queda conmocionado. Jonas descubre la verdad acerca de su familia, pero todavía quedan sorpresas. Helge hace un sacrificio.', '../imagenes/capitulos/Dark-1-10.jpg', 1);
INSERT INTO `capitulo` (`id_capitulo`, `cap_temp`, `titulo`, `descrip_cap`, `img_cap`, `Temporada_id_temporada`) VALUES (11, '1', 'Principios y finales', 'Seis meses después de las desapariciones, la policía forma un grupo de trabajo. En el año 2052, Jonas se entera de que muchas muertes se dieron en un evento apocalíptico.', '../imagenes/capitulos/Dark-2-1.jpg', 2);
INSERT INTO `capitulo` (`id_capitulo`, `cap_temp`, `titulo`, `descrip_cap`, `img_cap`, `Temporada_id_temporada`) VALUES (12, '2', 'Materia oscura', 'Clausen y Charlotte entrevistan a Regina. El Extraño lleva a Hannah a 1987, donde Claudia tiene un encuentro desconcertante y Egon visita a un antiguo némesis.', '../imagenes/capitulos/Dark-2-2.jpg', 2);
INSERT INTO `capitulo` (`id_capitulo`, `cap_temp`, `titulo`, `descrip_cap`, `img_cap`, `Temporada_id_temporada`) VALUES (13, '3', 'Fantasmas', 'En 1954, Helge reaparece, pero solo habla con Noah. En 1987, Claudia le lleva la máquina del tiempo a Tannhaus. Egon interroga a Ulrich de nuevo.', '../imagenes/capitulos/Dark-2-3.jpg', 2);
INSERT INTO `capitulo` (`id_capitulo`, `cap_temp`, `titulo`, `descrip_cap`, `img_cap`, `Temporada_id_temporada`) VALUES (14, '4', 'Los viajeros', 'Jonas se encuentra con una figura inquietante. Mientras los chicos buscan respuestas en la cueva, los adultos se reúnen en el búnker para hablar de los viajeros.', '../imagenes/capitulos/Dark-2-4.jpg', 2);
INSERT INTO `capitulo` (`id_capitulo`, `cap_temp`, `titulo`, `descrip_cap`, `img_cap`, `Temporada_id_temporada`) VALUES (15, '5', 'Perdido y encontrado', 'En 1987, Ulrich aprovecha una oportunidad. Los chicos regresan a la cueva con la máquina del tiempo. Jonas descubre algo que podría cambiar el futuro.', '../imagenes/capitulos/Dark-2-5.jpg', 2);
INSERT INTO `capitulo` (`id_capitulo`, `cap_temp`, `titulo`, `descrip_cap`, `img_cap`, `Temporada_id_temporada`) VALUES (16, '6', 'Un ciclo sin fin', 'Jonas viaja al año 2019 con un plan para prevenir el apocalipsis. Durante su fiesta de aniversario, Ulrich se escapa con Hannah.', '../imagenes/capitulos/Dark-2-6.jpg', 2);
INSERT INTO `capitulo` (`id_capitulo`, `cap_temp`, `titulo`, `descrip_cap`, `img_cap`, `Temporada_id_temporada`) VALUES (17, '7', 'El demonio blanco', 'Martha conoce al Extraño y se entera de su verdadera identidad. Claudia intenta evitar la muerte de Egon en 1987. Hannah viaja a 1954 para ver a Ulrich.', '../imagenes/capitulos/Dark-2-7.jpg', 2);
INSERT INTO `capitulo` (`id_capitulo`, `cap_temp`, `titulo`, `descrip_cap`, `img_cap`, `Temporada_id_temporada`) VALUES (18, '8', 'Finales e inicios', 'El día del apocalipsis, Clausen ejecuta una orden de allanamiento en la planta. Jonas y Claudia usan la máquina del tiempo para conectar el pasado y el futuro.', '../imagenes/capitulos/Dark-2-8.jpg', 2);
INSERT INTO `capitulo` (`id_capitulo`, `cap_temp`, `titulo`, `descrip_cap`, `img_cap`, `Temporada_id_temporada`) VALUES (19, '1', 'Déjà vu', 'En 2019, Jonas sale de la cueva y entra en un mundo extraño pero conocido: el pueblo de Winden, estremecido por la desaparición de uno de sus jóvenes.', '../imagenes/capitulos/Dark-3-1.jpg', 3);
INSERT INTO `capitulo` (`id_capitulo`, `cap_temp`, `titulo`, `descrip_cap`, `img_cap`, `Temporada_id_temporada`) VALUES (20, '2', 'Los sobrevivientes', 'Martha viaja a 1888 para alertar a sus amigos sobre el desastre de 2020. Los habitantes presentes y pasados de Winden buscan a sus seres queridos desaparecidos.', '../imagenes/capitulos/Dark-3-2.jpg', 3);
INSERT INTO `capitulo` (`id_capitulo`, `cap_temp`, `titulo`, `descrip_cap`, `img_cap`, `Temporada_id_temporada`) VALUES (21, '3', 'Adán y Eva', 'Charlotte y Ulrich intentan descifrar lo que pasó en el búnker. En épocas y mundos distintos, Jonas y Martha se esfuerzan por ganarse el uno la confianza del otro.', '../imagenes/capitulos/Dark-3-3.jpg', 3);
INSERT INTO `capitulo` (`id_capitulo`, `cap_temp`, `titulo`, `descrip_cap`, `img_cap`, `Temporada_id_temporada`) VALUES (22, '4', 'El origen', 'Martha y Jonas viajan a 2052 y entrevén un futuro desalentador. En 1954, desaparecen dos habitantes de Winden, y Hannah recibe noticias inesperadas.', '../imagenes/capitulos/Dark-3-4.jpg', 3);
INSERT INTO `capitulo` (`id_capitulo`, `cap_temp`, `titulo`, `descrip_cap`, `img_cap`, `Temporada_id_temporada`) VALUES (23, '5', 'Vida y muerte', 'En 2020, una visita le hace una advertencia a Claudia. El día anterior al apocalipsis, Jonas comienza a dudar de los motivos de Eva.', '../imagenes/capitulos/Dark-3-5.jpg', 3);
INSERT INTO `capitulo` (`id_capitulo`, `cap_temp`, `titulo`, `descrip_cap`, `img_cap`, `Temporada_id_temporada`) VALUES (24, '6', 'Luces y sombras', 'Adán mantiene presa a Martha en 2020. El día del apocalipsis, Martha —cada vez más descontrolada— le ruega a Bartosz que la ayude.', '../imagenes/capitulos/Dark-3-6.jpg', 3);
INSERT INTO `capitulo` (`id_capitulo`, `cap_temp`, `titulo`, `descrip_cap`, `img_cap`, `Temporada_id_temporada`) VALUES (25, '7', 'Entre tiempos', 'A lo largo de tres siglos, los habitantes de Winden persisten en su desesperado esfuerzo por cambiar su destino y salvar a los seres que aman.', '../imagenes/capitulos/Dark-3-7.jpg', 3);
INSERT INTO `capitulo` (`id_capitulo`, `cap_temp`, `titulo`, `descrip_cap`, `img_cap`, `Temporada_id_temporada`) VALUES (26, '8', ' El paraíso', 'Claudia le revela a Adán cómo se interconecta todo... y cómo él puede destruir el nudo.', '../imagenes/capitulos/Dark-3-8.jpg', 3);


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
