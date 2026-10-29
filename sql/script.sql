-- =====================================================
-- TrailShop - Script de base de datos (SQL Server)
-- =====================================================
CREATE DATABASE TrailShop;
GO
USE TrailShop;
GO

CREATE TABLE Productos(
    id INT IDENTITY(1,1) PRIMARY KEY,
    nombre NVARCHAR(80) NOT NULL,
    categoria NVARCHAR(40) NOT NULL,
    descripcion NVARCHAR(200),
    precio DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL
);
GO

-- Datos de ejemplo (equipo de senderismo)
INSERT INTO Productos (nombre, categoria, descripcion, precio, stock) VALUES
(N'Mochila Trekking 50L', N'Mochilas', N'Mochila con soporte lumbar y cubierta impermeable para rutas de varios dias', 1899.00, 14),
(N'Tienda de campana 2 personas', N'Campamento', N'Ligera, resistente al viento y facil de armar', 3299.00, 8),
(N'Bastones de trekking (par)', N'Accesorios', N'Aluminio plegable con punta de carburo y mango de corcho', 749.00, 25),
(N'Botas impermeables de montana', N'Calzado', N'Suela antideslizante y proteccion de tobillo', 2499.00, 10),
(N'Bolsa de dormir -5C', N'Campamento', N'Relleno sintetico, compacta y ligera', 1299.00, 16),
(N'Lampara frontal recargable', N'Accesorios', N'400 lumenes, tres modos de luz y bateria USB-C', 459.00, 30),
(N'Filtro de agua portatil', N'Hidratacion', N'Elimina bacterias y parasitos, ideal para rios y arroyos', 899.00, 20),
(N'Botella termica 1L', N'Hidratacion', N'Acero inoxidable, mantiene el agua fria 24 horas', 389.00, 40);
GO

-- Usuario para la aplicacion Java
CREATE LOGIN JavaUser WITH PASSWORD = 'password123';
GO
USE TrailShop;
GO
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = 'JavaUser')
BEGIN
    CREATE USER JavaUser FOR LOGIN JavaUser;
END
ALTER ROLE db_datareader ADD MEMBER JavaUser;
ALTER ROLE db_datawriter ADD MEMBER JavaUser;
GO
