//TABLAS

CREATE TABLE Rol (
    id_rol INT AUTO_INCREMENT PRIMARY KEY,
    nombre_rol VARCHAR(50) NOT NULL
);

CREATE TABLE Usuario (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nombres VARCHAR(20) NOT NULL,
    apellidos VARCHAR(20) NOT NULL,
    cedula VARCHAR(10) UNIQUE NOT NULL,
    telefono VARCHAR(10),
    correo VARCHAR(30) UNIQUE
);

CREATE TABLE Usuario_Rol (
    id_usuario INT NOT NULL,
    id_rol INT NOT NULL,
    PRIMARY KEY (id_usuario, id_rol),
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario),
    FOREIGN KEY (id_rol) REFERENCES Rol(id_rol)
);

CREATE TABLE Credencial (
    id_credencial INT AUTO_INCREMENT PRIMARY KEY,
    nombre_usuario VARCHAR(20) UNIQUE NOT NULL,
    contraseña VARCHAR(20) NOT NULL,
    id_usuario INT NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario)
);

CREATE TABLE Proveedor (
    id_proveedor INT AUTO_INCREMENT PRIMARY KEY,
    ruc VARCHAR(13) UNIQUE NOT NULL,
    nombres VARCHAR(20) NOT NULL,
    apellidos VARCHAR(20),
    telefono VARCHAR(10),
    correo VARCHAR(20)
);

CREATE TABLE Producto (
    id_producto INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(30) NOT NULL,
    tipo VARCHAR(20),
    marca VARCHAR(30) NOT NULL,
    precio DECIMAL(10,2) NOT NULL,
    stock INT DEFAULT 0,
    fecha_vencimiento DATE,
    id_proveedor INT,
    FOREIGN KEY (id_proveedor) REFERENCES Proveedor(id_proveedor)
);

CREATE TABLE Cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nombres VARCHAR(20) NOT NULL,
    apellidos VARCHAR(20) NOT NULL,
    cedula VARCHAR(20) UNIQUE NOT NULL,
    telefono VARCHAR(10),
    direccion VARCHAR(100),
    correo VARCHAR(20)
);

CREATE TABLE Compra (
    id_compra INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
);

CREATE TABLE Detalle_Compra (
    id_compra INT NOT NULL,
    id_producto INT NOT NULL,
    cantidad INT NOT NULL,
    total DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (id_compra, id_producto),
    FOREIGN KEY (id_compra) REFERENCES Compra(id_compra),
    FOREIGN KEY (id_producto) REFERENCES Producto(id_producto)
);

CREATE TABLE Factura (
    id_factura INT AUTO_INCREMENT PRIMARY KEY,
    nro_factura VARCHAR(10) UNIQUE NOT NULL,
    fecha_emision DATE,
    subtotal DECIMAL NOT NULL,
    iva DECIMAL NOT NULL,
    total DECIMAL NOT NULL,
    id_compra INT NOT NULL,
    FOREIGN KEY (id_compra) REFERENCES Compra(id_compra)
);