CREATE TABLE Departamento ( 
codDepto VARCHAR(4) PRIMARY KEY, 
nombreDpto VARCHAR(20) NOT NULL, 
ciudad VARCHAR(15), 
codDirector VARCHAR(12) 
); 

CREATE TABLE Empleado ( 
nDIEmp VARCHAR(12) NOT NULL PRIMARY KEY, 
nomEmp VARCHAR(30) NOT NULL, 
sexEmp CHAR(1) NOT NULL CHECK (sexEmp IN ('F', 'M')), 
fecNac DATE NOT NULL, fecIncorporacion DATE NOT NULL, 
salEmp FLOAT NOT NULL, comisionE FLOAT NOT NULL, 
cargoE VARCHAR(15) NOT NULL, 
jefeID VARCHAR(12), 
codDepto VARCHAR(4) NOT NULL, 
CONSTRAINT FK_Empl FOREIGN KEY (jefeID) REFERENCES Empleado(nDIEmp), 
CONSTRAINT FK_Dpto FOREIGN KEY (codDepto) REFERENCES Departamento(codDepto)
);
INSERT INTO Departamento (codDepto, nombreDpto, ciudad, codDirector) VALUES 
('1000', 'GERENCIA', 'CALI', '31.840.269'), 
('1500', 'PRODUCCIÓN', 'CALI', '16.211.383'), 
('2000', 'VENTAS', 'CALI', '31.178.144'), 
('3000', 'INVESTIGACIÓN', 'CALI', '16.759.060'), 
('3500', 'MERCADEO', 'CALI', '22.222.222'), 
('2100', 'VENTAS', 'POPAYAN', '31.751.219'), 
('2200', 'VENTAS', 'BUGA', '768.782'), 
('2300', 'VENTAS', 'CARTAGO', '737.689'), 
('4000', 'MANTENIMIENTO', 'CALI', '333.333.333'), 
('4100', 'MANTENIMIENTO', 'POPAYAN', '888.888'), 
('4200', 'MANTENIMIENTO', 'BUGA', '11.111.111'), 
('4300', 'MANTENIMIENTO', 'CARTAGO', '444.444');

INSERT INTO Empleado (nDIEmp, nomEmp, sexEmp, fecNac, fecIncorporacion, salEmp, comisionE, cargoE, jefeID, codDepto) VALUES 
('31.840.269', 'María Rojas', 'F', DATE '1959-01-15', DATE '1990-05-16', 6250000, 1500000, 'Gerente', NULL, '1000'), 
('16.211.383', 'Luis Pérez', 'M', DATE '1956-02-25', DATE '2000-01-01', 5050000, 0, 'Director', '31.840.269', '1500'), 
('31.178.144', 'Rosa Angulo', 'F', DATE '1957-03-15', DATE '1998-08-16', 3250000, 3500000, 'Jefe Ventas', '31.840.269', '2000'), 
('16.759.060', 'Darío Casas', 'M', DATE '1960-04-05', DATE '1992-11-01', 4500000, 500000, 'Investigador', '31.840.269', '3000'), 
('22.222.222', 'Carla López', 'F', DATE '1975-05-11', DATE '2005-07-16', 4500000, 500000, 'Jefe Mercadeo', '31.840.269', '3500'), 
('22.222.333', 'Carlos Rozo', 'M', DATE '1975-05-11', DATE '2001-09-16', 750000, 500000, 'Vigilante', '31.840.269', '3500'),
('31.751.219', 'Melissa Roa', 'F', DATE '1960-06-19', DATE '2001-03-16', 2250000, 2500000, 'Vendedor', '31.178.144', '2100'),
('768.782', 'Joaquín Rosas', 'M', DATE '1947-07-07', DATE '1990-05-16', 2250000, 2500000, 'Vendedor', '31.178.144', '2200'),
('737.689', 'Mario Llano', 'M', DATE '1945-08-30', DATE '1990-05-16', 2250000, 2500000, 'Vendedor', '31.178.144', '2300'),
('333.333.333', 'Elisa Rojas', 'F', DATE '1979-09-28', DATE '2004-06-01', 3000000, 1000000, 'Jefe Mecánicos', '31.840.269', '4000'),
('888.888', 'Iván Duarte', 'M', DATE '1955-08-12', DATE '1998-05-16', 1050000, 200000, 'Mecánico', '333.333.333', '4100'),
('11.111.111', 'Irene Díaz', 'F', DATE '1979-09-28', DATE '2004-06-01', 1050000, 200000, 'Mecánico', '333.333.333', '4200'),
('444.444', 'Abel Gómez', 'M', DATE '1939-12-24', DATE '2000-10-01', 1050000, 200000, 'Mecánico', '333.333.333', '4300'),
('1.130.222', 'José Giraldo', 'M', DATE '1985-01-20', DATE '2000-11-01', 1200000, 400000, 'Asesor', '22.222.222', '3500'),
('19.709.802', 'William Daza', 'M', DATE '1982-10-09', DATE '1999-12-16', 2250000, 1000000,'Investigador', '16.759.060', '3000'),
('31.174.099', 'Diana Solarte', 'F', DATE '1957-11-19', DATE '1990-05-16', 1250000, 500000, 'Secretaria', '31.840.269', '1000'),
('1.130.777', 'Marcos Cortez', 'M', DATE '1986-06-23', DATE '2000-04-16', 2550000, 500000, 'Mecánico', '333.333.333', '4000'),
('1.130.782', 'Antonio Gil', 'M', DATE '1980-01-23', DATE '2010-04-16', 850000, 1500000, 'Técnico', '16.211.383', '1500'),
('333.333.334', 'Marisol Pulido', 'F', DATE '1979-10-01', DATE '1990-05-16', 3250000, 1000000, 'Investigador', '16.759.060', '3000'),
('333.333.335', 'Ana Moreno', 'F', DATE '1992-01-05', DATE '2004-06-01', 1200000, 400000, 'Secretaria', '16.759.060', '3000'),
('1.130.333', 'Pedro Blanco', 'M', DATE '1987-10-28', DATE '2000-10-01', 800000, 3000000, 'Vendedor', '31.178.144', '2000'),
('1.130.444', 'Jesús Alfonso', 'M', DATE '1988-03-14', DATE '2000-10-01', 800000, 3500000, 'Vendedor', '31.178.144', '2000'),
('333.333.336', 'Carolina Ríos', 'F', DATE '1992-02-15', DATE '2000-10-01', 1250000, 500000, 'Secretaria', '16.211.383', '1500'),
('333.333.337', 'Edith Muñoz', 'F', DATE '1992-03-31', DATE '2000-10-01', 800000, 3600000, 'Vendedor', '31.178.144', '2100'),
('1.130.555', 'Julián Mora', 'M', DATE '1989-07-03', DATE '2000-10-01', 800000, 3100000, 'Vendedor', '31.178.144', '2200'),
('1.130.666', 'Manuel Millán', 'M', DATE '1990-12-08', DATE '2004-06-01', 800000, 3700000, 'Vendedor', '31.178.144', '2300');

ALTER TABLE Departamento ADD CONSTRAINT FK_EmpDir FOREIGN KEY (codDirector) REFERENCES Empleado(nDIEmp);
