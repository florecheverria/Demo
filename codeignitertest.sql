/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50717
 Source Host           : localhost:3306
 Source Schema         : codeignitertest

 Target Server Type    : MySQL
 Target Server Version : 50717
 File Encoding         : 65001

 Date: 29/07/2017 01:01:34
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for emp_empleados
-- ----------------------------
DROP TABLE IF EXISTS `emp_empleados`;
CREATE TABLE `emp_empleados` (
  `emp_id` int(10) NOT NULL AUTO_INCREMENT,
  `emp_nombres` varchar(75) DEFAULT NULL,
  `emp_apellidos` varchar(75) DEFAULT NULL,
  `emp_cargo` varchar(25) DEFAULT NULL,
  `emp_identificacion` varchar(100) DEFAULT NULL,
  `emp_usu_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`emp_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of emp_empleados
-- ----------------------------
BEGIN;
INSERT INTO `emp_empleados` VALUES (1, 'Flor de Maria', 'Canas Echeverria', 'Agente', '15245578-9', 3);
INSERT INTO `emp_empleados` VALUES (2, 'Honorina', 'Muñoz Molina', 'Agente', '12345678-1', 4);
INSERT INTO `emp_empleados` VALUES (3, 'Marilyn Marlene', 'Arratia Rivas', 'Agente', '12345678-2', NULL);
INSERT INTO `emp_empleados` VALUES (4, 'Francisco Segundo', 'Ascencio Vera', 'Agente', '12345678-3', NULL);
INSERT INTO `emp_empleados` VALUES (5, 'Susana Angela', 'Mora Soutullo', 'Agente', '12345678-4', NULL);
INSERT INTO `emp_empleados` VALUES (6, 'Bernarda del Carmen', 'Fonseca', 'Agente', '12345678-5', NULL);
INSERT INTO `emp_empleados` VALUES (7, 'Segundo Ramón', 'Paz Zambrano', 'Agente', '12345678-6', NULL);
INSERT INTO `emp_empleados` VALUES (8, 'Flor Esilda', 'Bustos Riffo', 'Agente', '12345678-7', NULL);
INSERT INTO `emp_empleados` VALUES (9, 'Cecilia ', 'Gallardo Tapia', 'Agente', '12345678-8', NULL);
INSERT INTO `emp_empleados` VALUES (10, 'Samuel Segundo', 'Alarcón Valdebenito', 'Agente', '12345678-9', NULL);
INSERT INTO `emp_empleados` VALUES (11, 'Sonia Inés', 'Leal Leal', 'Agente', '12345679-1', NULL);
INSERT INTO `emp_empleados` VALUES (12, 'Lucila ', 'Aravena Hernandez', 'Agente', '12345679-2', NULL);
INSERT INTO `emp_empleados` VALUES (13, 'Juan', 'Carrasco Vega', 'Agente', '12345679-3', NULL);
INSERT INTO `emp_empleados` VALUES (14, 'Maritza ', 'Lagos Oliva ', 'Agente', '12345679-4', NULL);
INSERT INTO `emp_empleados` VALUES (15, 'Irma Eliana', 'Recabal Silva', 'Agente', '12345679-5', NULL);
INSERT INTO `emp_empleados` VALUES (16, 'José', 'Medina Cisternas', 'Agente', '12345679-6', NULL);
INSERT INTO `emp_empleados` VALUES (17, 'Rosa Eulalia', 'Vera Meli', 'Agente', '12345679-7', NULL);
INSERT INTO `emp_empleados` VALUES (18, 'Flilomena del Carmen', 'Loyola Cortéz', 'Agente', '12345679-8', NULL);
INSERT INTO `emp_empleados` VALUES (19, 'Juan', 'Ramos Peña', 'Agente', '12345679-9', NULL);
INSERT INTO `emp_empleados` VALUES (20, 'Edita', 'Salgado Ortiz', 'Agente', '12345680-1', NULL);
INSERT INTO `emp_empleados` VALUES (21, 'Rosa Elena', 'Romero benavente', 'Agente', '12345680-2', NULL);
INSERT INTO `emp_empleados` VALUES (22, 'Ema del Carmen', 'Rocha saez', 'Agente', '12345680-3', NULL);
INSERT INTO `emp_empleados` VALUES (23, 'María Angélica', 'Martinez Aravena', 'Agente', '12345680-4', NULL);
INSERT INTO `emp_empleados` VALUES (24, 'Heraldo', 'Cuevas Orellana', 'Agente', '12345680-5', NULL);
INSERT INTO `emp_empleados` VALUES (25, 'Sergio', 'Ibañez Torres', 'Agente', '12345680-6', NULL);
INSERT INTO `emp_empleados` VALUES (26, 'Moises', 'Alarcón salazar', 'Agente', '12345680-7', NULL);
INSERT INTO `emp_empleados` VALUES (27, 'Graciela', 'Salazar Hermosilla', 'Agente', '12345680-8', NULL);
INSERT INTO `emp_empleados` VALUES (28, 'José Maria', 'fierro Muñoz', 'Agente', '12345680-9', NULL);
INSERT INTO `emp_empleados` VALUES (29, 'Magaly del Pilar', 'Rivera Retamal', 'Agente', '12345681-1', NULL);
INSERT INTO `emp_empleados` VALUES (30, 'Hilda Ester', 'Contreras Pincheira', 'Agente', '12345681-2', NULL);
INSERT INTO `emp_empleados` VALUES (31, 'Juan Honorino ', 'Fredes Carrillo', 'Agente', '12345681-3', NULL);
INSERT INTO `emp_empleados` VALUES (32, 'Leonardo Manuel', 'Carrasco Palma', 'Agente', '12345681-4', NULL);
INSERT INTO `emp_empleados` VALUES (33, 'Marta', 'Faundez Baeza', 'Agente', '12345681-5', NULL);
INSERT INTO `emp_empleados` VALUES (34, 'Alejandra del Carmen', 'Contreras Rodriguez', 'Agente', '12345681-6', NULL);
INSERT INTO `emp_empleados` VALUES (35, 'Tania Angelica', 'Villar Cariaga', 'Agente', '12345681-7', NULL);
INSERT INTO `emp_empleados` VALUES (36, 'Irene del Carmen', 'Aguilera Rivera', 'Agente', '12345681-8', NULL);
INSERT INTO `emp_empleados` VALUES (37, 'Estela de Las Mercedes', 'Zapata Arriagada', 'Agente', '12345681-9', NULL);
INSERT INTO `emp_empleados` VALUES (38, 'Roguers Alberto', 'Morales Navarrete', 'Agente', '12345682-1', NULL);
INSERT INTO `emp_empleados` VALUES (39, 'Maria margarita', 'Fuentealba vallejos', 'Agente', '12345682-2', NULL);
INSERT INTO `emp_empleados` VALUES (40, 'Julio ', 'Avila Friz', 'Agente', '12345682-3', NULL);
INSERT INTO `emp_empleados` VALUES (41, 'Luis Ricardo', 'Faundez Retamal', 'Agente', '12345682-4', NULL);
INSERT INTO `emp_empleados` VALUES (42, 'Juan', 'Ortiz fuentealba', 'Agente', '12345682-5', NULL);
INSERT INTO `emp_empleados` VALUES (43, 'Ana Mercedes', 'Perez Perez', 'Agente', '12345682-6', NULL);
INSERT INTO `emp_empleados` VALUES (44, 'Isolina Sofia', 'Castillo Molina', 'Agente', '12345682-7', NULL);
INSERT INTO `emp_empleados` VALUES (45, 'Irma del Carmen', 'Díaz Ortiz', 'Agente', '12345682-8', NULL);
INSERT INTO `emp_empleados` VALUES (46, 'Maria del Carmen', 'Alarcon Pereira', 'Agente', '12345682-9', NULL);
INSERT INTO `emp_empleados` VALUES (47, 'Santos Alejandro', 'Altamirano Pinto', 'Agente', '12345683-1', NULL);
INSERT INTO `emp_empleados` VALUES (48, 'Jose Eduardo', '<<<<<<<<<<<<<<<<<<<', 'Agente', '12345683-2', NULL);
INSERT INTO `emp_empleados` VALUES (49, 'Maria Ester ', 'Carrillo carrillo', 'Agente', '12345683-3', NULL);
INSERT INTO `emp_empleados` VALUES (50, 'Celia del transito', 'Santibañez figueroa', 'Agente', '12345683-4', NULL);
INSERT INTO `emp_empleados` VALUES (51, 'Mercedes del Carmen', 'Cuevas Manriquez', 'Agente', '12345683-5', NULL);
INSERT INTO `emp_empleados` VALUES (52, 'Roberto', 'Rivas Avello', 'Agente', '12345683-6', NULL);
INSERT INTO `emp_empleados` VALUES (53, 'Maria Ximena', 'Puga Wilson ', 'Agente', '12345683-7', NULL);
INSERT INTO `emp_empleados` VALUES (54, 'Patricia Uberlinda', 'Gutierrez Canales', 'Agente', '12345683-8', NULL);
INSERT INTO `emp_empleados` VALUES (55, 'Enrique', 'Pampaloni Siley', 'Agente', '12345683-9', NULL);
INSERT INTO `emp_empleados` VALUES (56, 'María Isabel', 'Saez Carrasco', 'Agente', '12345684-1', NULL);
INSERT INTO `emp_empleados` VALUES (57, 'Flor Marina', 'Peña Mendoza', 'Agente', '12345684-2', NULL);
INSERT INTO `emp_empleados` VALUES (58, 'Mónica del Carmen', 'Martinez Carrera', 'Agente', '12345684-3', NULL);
INSERT INTO `emp_empleados` VALUES (59, 'Irma', 'Maldonado Montalba', 'Agente', '12345684-4', NULL);
INSERT INTO `emp_empleados` VALUES (60, 'Juan Alberto', 'Lara Rios', 'Agente', '12345684-5', NULL);
INSERT INTO `emp_empleados` VALUES (61, 'Fresia del Carmen', 'Trangulao Astorga', 'Agente', '12345684-6', NULL);
INSERT INTO `emp_empleados` VALUES (62, 'Irma del Carmen', 'Gallardo Toledo', 'Agente', '12345684-7', NULL);
INSERT INTO `emp_empleados` VALUES (63, 'Carlos Alberto', 'Rivera Retamal', 'Agente', '12345684-8', NULL);
INSERT INTO `emp_empleados` VALUES (64, 'Isabel Zunilda', 'Encina Bello', 'Agente', '12345684-9', NULL);
INSERT INTO `emp_empleados` VALUES (65, 'Segundo Ruperto', 'Marín Rocha', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (66, 'Andrea Araceli', 'Vilalobos Villalobos', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (67, 'Pedro', 'Gonzalez Sanzana', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (68, 'Nicolas', 'Fierro Monsalvez', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (69, 'Maria Irma', 'Gonzalez contreras', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (70, 'Uberlinda', 'Mella Arellano', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (71, 'Yenny', 'Pardo Perez', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (72, 'Basilia', 'Vasquez Rivera', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (73, 'Juan Plinio', 'Hermosilla Contreras', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (74, 'Julián', 'Matamala Escobar', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (75, 'Juan', 'Lara Rios', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (76, 'Patricia Jeannette', 'Fernandez Martinez', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (77, 'Ana Luisa', 'Lincura Boguen', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (78, 'María Isabel', 'Hernandez López', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (79, 'Yasna Evelyn', 'Cuevas Flores', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (80, 'Carlos Aladino', 'Carrasco Carrasco', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (81, 'José Luis', 'Flores Terán', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (82, 'Juan Bautista', 'Cuevas Orellana', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (83, 'José Aquiles', 'Aguayo Chávez', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (84, 'Herminio', 'Ruiz Cuevas', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (85, 'Edina', 'Alarcón Salazar', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (86, 'Ramón Segundo', 'Olivares Jerez', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (87, 'Patricio Segundo', 'Ancatrio Cruz', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (88, 'Nilda', 'Meza Maldonado', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (89, 'María Cristina ', 'Biava  Gonzalez', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (90, 'Rigoberto', 'Caceres Monsalve', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (91, 'Pedro Segundo', 'Carrillo Claro', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (92, 'Segundo  ', 'Marin Concha', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (93, 'Mario', 'Escobar Navarro', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (94, 'Demesio del Tránsito', 'Gutierrez Navarro', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (95, 'Carlos', 'Guerrero Miranda', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (96, 'Norma', 'hermosilla Sanhueza', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (97, 'Marcela Elizabeth', 'Espejo Valenzuela', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (98, 'Teresa del Carmen', 'Guerrero Leal', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (99, 'Maria Angelica', 'Román Ramos', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (100, 'René Luis Alberto', 'Aguirre Vignolo', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (101, 'Sergio', 'Muñoz Molina', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (102, 'Moises', 'Arratia Rivas', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (103, 'Graciela', 'Ascencio Vera', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (104, 'José Maria', 'Mora Soutullo', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (105, 'Magaly del Pilar', 'Fonseca', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (106, 'Hilda Ester', 'Paz Zambrano', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (107, 'Juan Honorino ', 'Bustos Riffo', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (108, 'Leonardo Manuel', 'Gallardo Tapia', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (109, 'Marta', 'Alarcón Valdebenito', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (110, 'Alejandra del Carmen', 'Leal Leal', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (111, 'Tania Angelica', 'Aravena Hernandez', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (112, 'Irene del Carmen', 'Carrasco Vega', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (113, 'Estela de Las Mercedes', 'Lagos Oliva ', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (114, 'Roguers Alberto', 'Recabal Silva', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (115, 'Maria margarita', 'Medina Cisternas', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (116, 'Julio ', 'Vera Meli', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (117, 'Luis Ricardo', 'Loyola Cortéz', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (118, 'Juan', 'Ramos Peña', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (119, 'Ana Mercedes', 'Salgado Ortiz', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (120, 'Isolina Sofia', 'Romero benavente', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (121, 'Irma del Carmen', 'Rocha saez', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (122, 'Maria del Carmen', 'Martinez Aravena', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (123, 'Mónica del Carmen', 'Cuevas Orellana', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (124, 'Irma', 'Carrillo carrillo', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (125, 'Juan Alberto', 'Santibañez figueroa', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (126, 'Fresia del Carmen', 'Cuevas Manriquez', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (127, 'Irma del Carmen', 'Rivas Avello', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (128, 'Carlos Alberto', 'Puga Wilson ', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (129, 'Isabel Zunilda', 'Gutierrez Canales', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (130, 'Segundo Ruperto', 'Pampaloni Siley', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (131, 'Andrea Araceli', 'Saez Carrasco', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (132, 'Pedro', 'Peña Mendoza', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (133, 'Nicolas', 'Martinez Carrera', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (134, 'Maria Irma', 'Maldonado Montalba', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (135, 'Uberlinda', 'Lara Rios', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (136, 'Yenny', 'Trangulao Astorga', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (137, 'Basilia', 'Gallardo Toledo', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (138, 'Juan Plinio', 'Rivera Retamal', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (139, 'Julián', 'Encina Bello', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (140, 'Juan', 'Marín Rocha', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (141, 'Patricia Jeannette', 'Vilalobos Villalobos', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (142, 'Ana Luisa', 'Gonzalez Sanzana', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (143, 'María Isabel', 'Fierro Monsalvez', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (144, 'Yasna Evelyn', 'Gonzalez contreras', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (145, 'Carlos Aladino', 'Mella Arellano', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (146, 'José Luis', 'Pardo Perez', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (147, 'Juan Bautista', 'Vasquez Rivera', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (148, 'José Aquiles', 'Hermosilla Contreras', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (149, 'Herminio', 'Matamala Escobar', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (150, 'Edina', 'Lara Rios', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (151, 'Ramón Segundo', 'Fernandez Martinez', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (152, 'Patricio Segundo', 'Lincura Boguen', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (153, 'Jose Eduardo', 'Hernandez López', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (154, 'Maria Ester ', 'Hermosilla Contreras', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (155, 'Celia del transito', 'Matamala Escobar', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (156, 'Mercedes del Carmen', 'Lara Rios', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (157, 'Roberto', 'Fernandez Martinez', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (158, 'Maria Ximena', 'Lincura Boguen', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (159, 'Patricia Uberlinda', 'Hernandez López', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (160, 'Enrique', 'Cuevas Flores', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (161, 'María Isabel', 'Carrasco Carrasco', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (162, 'Flor Marina', 'Flores Terán', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (163, 'Mónica del Carmen', 'Cuevas Orellana', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (164, 'Irma', 'Aguayo Chávez', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (165, 'Juan Alberto', 'Ruiz Cuevas', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (166, 'Fresia del Carmen', 'Alarcón Salazar', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (167, 'Irma del Carmen', 'Olivares Jerez', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (168, 'Carlos Alberto', 'Ancatrio Cruz', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (169, 'Isabel Zunilda', 'Meza Maldonado', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (170, 'Segundo Ruperto', 'Biava  Gonzalez', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (171, 'Andrea Araceli', 'Caceres Monsalve', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (172, 'Pedro', 'Carrillo Claro', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (173, 'Nicolas', 'Marin Concha', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (174, 'Maria Irma', 'Escobar Navarro', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (175, 'Uberlinda', 'Gutierrez Navarro', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (176, 'Yenny', 'Guerrero Miranda', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (177, 'Basilia', 'hermosilla Sanhueza', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (178, 'Juan Plinio', 'Espejo Valenzuela', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (179, 'Julián', 'Guerrero Leal', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (180, 'Juan', 'Román Ramos', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (181, 'Patricia Jeannette', 'Aguirre Vignolo', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (182, 'Ana Luisa', 'Bustos Riffo', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (183, 'María Isabel', 'Gallardo Tapia', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (184, 'Yasna Evelyn', 'Alarcón Valdebenito', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (185, 'Carlos Aladino', 'Leal Leal', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (186, 'José Luis', 'Aravena Hernandez', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (187, 'Juan Bautista', 'Carrasco Vega', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (188, 'José Aquiles', 'Lagos Oliva ', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (189, 'Herminio', 'Recabal Silva', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (190, 'Edina', 'Medina Cisternas', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (191, 'Ramón Segundo', 'Vera Meli', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (192, 'Patricio Segundo', 'Loyola Cortéz', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (193, 'Nilda', 'Ramos Peña', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (194, 'María Cristina ', 'Salgado Ortiz', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (195, 'Rigoberto', 'Romero benavente', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (196, 'Pedro Segundo', 'Rocha saez', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (197, 'Segundo  ', 'Martinez Aravena', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (198, 'Mario', 'Cuevas Orellana', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (199, 'Demesio del Tránsito', 'Ibañez Torres', 'Agente', NULL, NULL);
INSERT INTO `emp_empleados` VALUES (200, 'Carlos', 'Alarcón salazar', 'Agente', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for est_estados
-- ----------------------------
DROP TABLE IF EXISTS `est_estados`;
CREATE TABLE `est_estados` (
  `est_id` int(10) NOT NULL AUTO_INCREMENT,
  `est_nombre` varchar(25) DEFAULT NULL,
  `est_descripcion` varchar(100) DEFAULT NULL,
  `est_color` varchar(10) DEFAULT NULL,
  `est_icon` varchar(25) DEFAULT NULL,
  `est_activo` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`est_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of est_estados
-- ----------------------------
BEGIN;
INSERT INTO `est_estados` VALUES (1, 'Disponible', NULL, 'green', 'pe-7s-check', NULL);
INSERT INTO `est_estados` VALUES (2, 'No Disponible', NULL, 'red', 'pe-7s-delete-user', NULL);
INSERT INTO `est_estados` VALUES (3, 'En llamada', NULL, 'blue', 'pe-7s-headphones', NULL);
INSERT INTO `est_estados` VALUES (4, 'Reunion', NULL, 'orange', 'pe-7s-display2', NULL);
INSERT INTO `est_estados` VALUES (5, 'Almuerzo', NULL, 'yellow', 'pe-7s-coffee', NULL);
INSERT INTO `est_estados` VALUES (6, 'Break', NULL, 'pink', 'pe-7s-user', NULL);
COMMIT;

-- ----------------------------
-- Table structure for groups
-- ----------------------------
DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of groups
-- ----------------------------
BEGIN;
INSERT INTO `groups` VALUES (1, 'admin', 'Administrator');
INSERT INTO `groups` VALUES (2, 'members', 'General User');
INSERT INTO `groups` VALUES (3, 'Gerente', '');
INSERT INTO `groups` VALUES (4, 'Supervisor', '');
INSERT INTO `groups` VALUES (5, 'Agente', '');
INSERT INTO `groups` VALUES (6, 'nuevo', '');
COMMIT;

-- ----------------------------
-- Table structure for log_logactividades
-- ----------------------------
DROP TABLE IF EXISTS `log_logactividades`;
CREATE TABLE `log_logactividades` (
  `log_id` int(10) NOT NULL AUTO_INCREMENT,
  `log_usu_id` int(10) DEFAULT NULL,
  `log_est_id` int(11) DEFAULT NULL,
  `log_ip` varchar(16) DEFAULT NULL,
  `log_inicio_fecha` datetime DEFAULT NULL,
  `log_fin_fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`log_id`) USING BTREE,
  KEY `fk_iti_usu_id` (`log_usu_id`) USING BTREE,
  KEY `fk_iti_est_id` (`log_est_id`) USING BTREE,
  CONSTRAINT `fk_log_est_id` FOREIGN KEY (`log_est_id`) REFERENCES `est_estados` (`est_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log_logactividades
-- ----------------------------
BEGIN;
INSERT INTO `log_logactividades` VALUES (6, 4, 4, '127.0.0.1', '2017-07-26 07:35:25', '2017-07-26 08:35:51');
INSERT INTO `log_logactividades` VALUES (7, 3, 5, '127.0.0.1', '2017-07-26 06:36:51', '2017-07-26 07:36:59');
INSERT INTO `log_logactividades` VALUES (8, 4, 5, '127.0.0.1', '2017-07-26 08:35:52', '2017-07-26 08:39:11');
INSERT INTO `log_logactividades` VALUES (9, 3, 1, '127.0.0.1', '2017-07-26 08:37:00', '2017-07-26 08:40:05');
INSERT INTO `log_logactividades` VALUES (10, 5, 3, '127.0.0.1', '2017-07-26 09:36:51', '2017-07-26 11:36:59');
INSERT INTO `log_logactividades` VALUES (11, 6, 3, '127.0.0.1', '2017-07-26 11:36:51', '2017-07-26 11:46:59');
INSERT INTO `log_logactividades` VALUES (12, 3, 1, '127.0.0.1', '2017-07-26 18:37:00', '2017-07-26 19:40:05');
INSERT INTO `log_logactividades` VALUES (13, 3, 1, '127.0.0.1', '2017-07-27 18:37:00', '2017-07-27 19:40:05');
INSERT INTO `log_logactividades` VALUES (14, 3, 3, '127.0.0.1', '2017-07-27 18:37:00', '2017-07-27 19:40:05');
INSERT INTO `log_logactividades` VALUES (15, 6, 3, '127.0.0.1', '2017-07-26 11:50:51', '2017-07-26 15:46:59');
INSERT INTO `log_logactividades` VALUES (24, 7, 4, '127.0.0.1', '2017-07-27 10:57:04', '2017-07-27 10:57:26');
INSERT INTO `log_logactividades` VALUES (25, 7, 3, '127.0.0.1', '2017-07-27 10:57:26', '2017-07-27 10:57:56');
INSERT INTO `log_logactividades` VALUES (26, 7, 6, '127.0.0.1', '2017-07-27 10:57:56', '2017-07-27 10:59:26');
INSERT INTO `log_logactividades` VALUES (38, 1, 5, '190.62.191.228', '2017-07-27 20:30:34', NULL);
INSERT INTO `log_logactividades` VALUES (39, 7, 1, '::1', '2017-07-27 21:56:01', NULL);
INSERT INTO `log_logactividades` VALUES (40, 6, 1, '::1', '2017-07-27 22:07:47', NULL);
COMMIT;

-- ----------------------------
-- Table structure for login_attempts
-- ----------------------------
DROP TABLE IF EXISTS `login_attempts`;
CREATE TABLE `login_attempts` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(16) NOT NULL,
  `login` varchar(100) DEFAULT NULL,
  `time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of migrations
-- ----------------------------
BEGIN;
INSERT INTO `migrations` VALUES (20170724022824);
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(16) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(80) NOT NULL,
  `salt` varchar(40) NOT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) unsigned DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) unsigned NOT NULL,
  `last_login` int(11) unsigned DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES (1, '127.0.0.1', 'administrator', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', '', 'admin@admin.com', '', NULL, NULL, NULL, 1268889823, 1501310206, 1, 'Admin', 'istrator', 'ADMIN', '0');
INSERT INTO `users` VALUES (2, '127.0.0.1', 'user@gmail.com', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', '', 'user@gmail.com', NULL, NULL, NULL, NULL, 1500865703, NULL, 1, 'Jose', 'Velasquez', 'ninguna', '332223232');
INSERT INTO `users` VALUES (3, '127.0.0.1', 'flor@gmail.com', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', '', 'flor@gmail.com', NULL, NULL, NULL, NULL, 1501044838, NULL, 1, 'Flor', 'Canas', 'One Link', '3224242');
INSERT INTO `users` VALUES (4, '127.0.0.1', 'honorina@gmail.com', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', '', 'honorina@gmail.com', NULL, NULL, NULL, NULL, 1501044873, 1501311454, 1, 'Honorina', 'Munoz', 'One Link', '24241242424');
INSERT INTO `users` VALUES (5, '127.0.0.1', 'catalino@gmail.com', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', '', 'catalino@gmail.com', NULL, NULL, NULL, NULL, 1501090927, NULL, 1, 'Catalino', 'Esparsa', 'One Link', '334343434');
INSERT INTO `users` VALUES (6, '127.0.0.1', 'rebeca@gmail.com', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', '', 'rebeca@gmail.com', NULL, NULL, NULL, NULL, 1501090959, 1501193029, 1, 'Rebeca', 'Jones', 'One Link', '33434343');
INSERT INTO `users` VALUES (7, '127.0.0.1', 'testing@test.com', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', '', 'testing@test.com', NULL, NULL, NULL, NULL, 1501147031, 1501310682, 1, 'John', 'Doe', 'ninguna', '451-254-8547');
COMMIT;

-- ----------------------------
-- Table structure for users_groups
-- ----------------------------
DROP TABLE IF EXISTS `users_groups`;
CREATE TABLE `users_groups` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_groups
-- ----------------------------
BEGIN;
INSERT INTO `users_groups` VALUES (1, 1, 1);
INSERT INTO `users_groups` VALUES (2, 1, 2);
INSERT INTO `users_groups` VALUES (3, 2, 2);
INSERT INTO `users_groups` VALUES (6, 3, 5);
INSERT INTO `users_groups` VALUES (7, 4, 5);
INSERT INTO `users_groups` VALUES (8, 5, 2);
INSERT INTO `users_groups` VALUES (9, 6, 2);
INSERT INTO `users_groups` VALUES (10, 7, 2);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
