//INSERTAR DATOS

INSERT INTO proveedor (ruc, nombres, apellidos, telefono, correo)
VALUES
	('1150711313001', 'Alisson', 'Gaona', '0993842741', 'alisson.g@gmail.com'),
	('1105095621001', 'Yahir', 'Velasquez','095260852','yahir.v@gmail.com'),
	('0926629262001', 'Yoli', 'Torres', '0939615057', 'nanci.t@gmail.com'),
	('1106238767001', 'Eduardo', 'Moreno', '0959546025', 'eduardo.m@gmail.com'),
	('1105687360001', 'Luis', 'Ríos', '0989724740', 'luis.r@gmail.com'
);

INSERT INTO usuario (cedula, nombres, apellidos, telefono, correo)
VALUES
	('1102567899', 'Juan', 'López', '0997856412', 'juan_lopez@gmail.com'),
	('1155896340', 'Mishell', 'Castillo', '0948446972', 'mishell02@gmail.com'),
	('1759961223', 'Eimy', 'Gallegos', '0903358961', 'gallegos-eimy01@gmail.com'
);

INSERT INTO rol (nombre_rol)
VALUES
	('Lopez.J'),
	('CasMishell'),
	('EimyG'
);

INSERT INTO usuario_rol (id_usuario, id_rol)
VALUES
(1,1),
(2,1),
(3,2);

INSERT INTO credencial (nombre_usuario, contraseña, id_usuario)
VALUES
	('Lopez.J', 'juan123', 1),
	('CasMishell', 'mishell2007', 2),
	('EimyG','eimygallegos01', 3
);


INSERT INTO producto (nombre, tipo, marca, precio, stock, fecha_vencimiento, id_proveedor)
VALUES
	('Zinc', 'Tabletas', 'NutriFit', 9.00, 20, '2027-05-10', 1),
	('Vitamina C', 'Capsulas', 'VitaPlus', 12.50, 50, '2028-11-15', 2),
	('Omega 3', 'Capsulas', 'HealthLife', 9.50, 35, '2028-01-20', 3),
	('Colágeno', 'Polvo', 'OnlyNatural', 15.00, 15, '2029-08-30', 4),
	('Te Verde', 'Sobres', 'EcoNatural', 8.99, 40, '2027-12-01', 5
);

INSERT INTO cliente (nombres, apellidos, cedula, telefono, direccion, correo)
VALUES
	('Rene', 'Guaman', '1102345678', '0938428710', 'Daniel Alvarez', 'rene@gmail.com'),
	('Jenny', 'Jaramillo', '1790058644', '0998877631', 'Epoca', 'Jenny_J@gmail.com'),
	('Stalin', 'Vicente', '1124683309', '0996859016', 'Amaluza', 'vicente-st@gmail.com'
);


INSERT INTO detalle_compra (id_compra, id_producto, cantidad, total)
VALUES (1, 10, 2, 50.00
);

INSERT INTO compra (id_cliente)
VALUES (1);

INSERT INTO factura (nro_factura, fecha_emision, subtotal, iva, total, id_compra) 
VALUES 
	('F001', '2026-05-14', 5.50, 0.00, 5.50, 2), 
	('F002', '2026-05-16', 6.00, 0.90, 6.90, 3), 
	('F003', '2026-05-18', 8.60, 1.29, 9.89, 4), 
	('F004', '2026-05-20', 2.25, 0.33, 2.58, 5
);
