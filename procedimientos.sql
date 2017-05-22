/* Sucursal */

CREATE PROC registrarSucursal(@ciudad varchar(50), @direccion varchar(50), @telefono varchar(50), 
	@correo_electronico varchar(50), @pagina_web varchar(50), @id_gerente int)	
AS
BEGIN 
	INSERT INTO Sucursal (ciudad, direccion, telefono, correo_electronico, pagina_web, id_gerente)
	VALUES (@ciudad, @direccion, @telefono, @correo_electronico, @pagina_web, @id_gerente)
END

CREATE PROC actualizarSucursal(@ciudad varchar(50), @direccion varchar(50), @telefono varchar(50), 
	@correo_electronico varchar(50), @pagina_web varchar(50), @id_gerente int, @idSucursal int)	
AS
BEGIN 
	UPDATE Sucursal SET ciudad = @ciudad,  direccion =@direccion, telefono = @telefono, 
	correo_electronico= @correo_electronico, pagina_web =@pagina_web, id_gerente = @id_gerente
	WHERE idSucursal = @idSucursal;
END

CREATE PROC eliminarSucursal( @idSucursal int)	
AS
BEGIN 
	DELETE FROM Sucursal
	WHERE idSucursal = @idSucursal;
END

/* Servicio */

CREATE PROC regisrarServicio(@idCliente int, @idSucursal int, @idVehiculo int, @observaciones varchar(50))
AS
BEGIN 
	INSERT INTO Servicio (idCliente, idSucursal, idVehiculo, fecha_hora_salida, observaciones) 
	VALUES (@idCliente, @idSucursal, @idVehiculo, GETDATE(), @observaciones);
END

CREATE PROC actualizarServicio(@idCliente int, @idSucursal int, @idVehiculo int, @observaciones varchar(50), @idServicio int)	
AS
BEGIN 
	UPDATE Sucursal SET idCliente = @idCliente,  idSucursal =@idSucursal, idVehiculo = @idVehiculo,	observaciones= @observaciones
	WHERE idServicio = @idServicio;
END

CREATE PROC eliminarServicio(@idServicio int)
AS
BEGIN
	DELETE FROM Servicio
	WHERE idServicio = @idServicio;
END

/* Cliente */

CREATE PROC registrarCliente(@nombre varchar(50), @documento varchar(50), @telefono varchar(50))
AS
BEGIN 
	INSERT INTO Cliente (nombre, documento, telefono) 
	VALUES (@nombre, @documento, @telefono);
END

CREATE PROC actualizarCliente(@nombre varchar(50), @documento varchar(50), @telefono varchar(50), @idCliente int)	
AS
BEGIN 
	UPDATE Cliente SET nombre = @nombre,  documento =@documento, telefono = @telefono
	WHERE idCliente = @idCliente;
END

CREATE PROC eliminarCliente(@idCliente int)
AS
BEGIN
	DELETE FROM Cliente
	WHERE idCliente = @idCliente;
END

/* Poliza */

CREATE PROC registrarPoliza(@idVehiculo int, @compañia_aseguradora varchar(50), @vigencia varchar(50))
AS
BEGIN 
	INSERT INTO Poliza (idVehiculo, compañia_aseguradora, vigencia) 
	VALUES (@idVehiculo, @compañia_aseguradora, @vigencia);
END

CREATE PROC actualizarPoliza(@idVehiculo varchar(50), @compañia_aseguradora varchar(50), @vigencia varchar(50), @idPoliza int)	
AS
BEGIN 
	UPDATE Poliza SET idVehiculo = @idVehiculo,  compañia_aseguradora =@compañia_aseguradora, vigencia = @vigencia
	WHERE idPoliza = @idPoliza;
END

CREATE PROC eliminarPoliza(@idPoliza int)
AS
BEGIN
	DELETE FROM Poliza
	WHERE idPoliza = @idPoliza;
END

--listar gerente

CREATE view listarGerente
AS SELECT idGerente, nombre FROM Gerente;


CREATE VIEW listarSucursal
AS SELECT nombre, idSucursal FROM Sucursal;

CREATE PROC cargarSucursal(@idSucursal int)
AS
BEGIN
SELECT * FROM Sucursal WHERE idSucursal = @idSucursal;
END