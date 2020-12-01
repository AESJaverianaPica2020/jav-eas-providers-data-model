CREATE DATABASE VIVA_COLOMBIA_DB;
USE VIVA_COLOMBIA_DB;
CREATE TABLE VUELOS (
  id  INT PRIMARY KEY AUTO_INCREMENT,
  cabina VARCHAR(50) NOT NULL,
  ciudad_salida VARCHAR(250) NOT NULL,
  ciudad_llegada VARCHAR(250) NOT NULL,
  precio DECIMAL(12,2) NOT NULL,
  fecha_salida DATE NOT NULL,
  fecha_llegada DATE NOT NULL
);
INSERT INTO VUELOS (cabina, ciudad_salida, ciudad_llegada, precio, fecha_salida, fecha_llegada)
VALUES ('ECONOMICA', 'BOG', 'CTG', 160000, '2020-12-05', '2020-12-10'),
('MEDIANA', 'BOG', 'CTG', 360000, '2020-12-05', '2020-12-10'),
('PREMIUM', 'BOG', 'CTG', 860000, '2020-12-05', '2020-12-10');
CREATE TABLE RESERVAS_VUELOS (
    vuelo_id INT NOT NULL,
    cantidad_pasajeros INT NOT NULL DEFAULT 1
);
INSERT INTO RESERVAS_VUELOS (vuelo_id, cantidad_pasajeros)
VALUES (1, 2);
