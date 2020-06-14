Create DataBase seminario201314474P1;
use seminario201314474P1;

create table TemporalArticulo(
	CodigoArticuloT varchar(200),
	ColorT          varchar(200),
	DescripcionT    varchar(200),
	DepartamentoT   varchar(200)

);
create table TemporalCliente(
	CodigoClienteT varchar(200),
	NombreClienteT varchar(200),
	TipoClienteT   varchar(100),
	DireccionT     varchar(200),
	CorreoClienteT varchar(200)

);

delete from TemporalArticulo;
delete from TemporalCliente;
SELECT * FROM TemporalArticulo;
SELECT * FROM TemporalCliente;

create table TemporalSucursal(
	CodigoSucursalT varchar(200),
	NombreSucursalT	varchar(200),
	DireccionT		varchar(200),
	RegionT			varchar(200),
	DepartamentoT	varchar(200),
	ZonaT			varchar(200),
);



create table TemporalVendedor(
	CodigoVendedorT  varchar(200),
	NombreVendedorT  varchar(200),
	SucursaT		 varchar(200)
);



create table TemporalVentas(
	CodigoClienteT		varchar(200),
	NombreClienteT		varchar(200),
	TipoClienteT		varchar(200),
	DireccionClienteT	varchar(200),
	CorreoClienteT		varchar(200),
	CodigoArticuloT		varchar(200),
	ColorT				varchar(200),
	DescripcionT		varchar(200),
	DepartamentoProT	varchar(200),
	CodigoSucursalT		varchar(200),
	NombreSucursalT		varchar(200),
	DireccionT			varchar(200),
	RegionT				varchar(200),
	DepartamentoT		varchar(200),
	ZonaT				varchar(200),
	CodigoVendedorT		varchar(200),
	NombreVendedorT		varchar(200),
	SucursalT			varchar(200),
	FechaT				varchar(200),
	UnidadesT			varchar(200),
	PrecioUnitarioT		varchar(200)
);

delete from TemporalArticulo;
delete from TemporalCliente;
delete from TemporalSucursal;
delete from TemporalVendedor;
delete from TemporalVentas;
SELECT * FROM TemporalArticulo;
SELECT * FROM TemporalCliente;
SELECT * FROM TemporalSucursal;
SELECT * FROM TemporalVendedor;
SELECT * FROM TemporalVentas;


delete from ARTICULO;
delete from	CLIENTE;
delete from SUCURSAL;
delete from	REGION;
delete from	VENDEDOR;
delete from	FECHA;
delete from VENTAS;
SELECT * FROM ARTICULO;
SELECT * FROM CLIENTE;
SELECT * FROM SUCURSAL;
SELECT * FROM	REGION;
SELECT * FROM	VENDEDOR;
SELECT * FROM	FECHA;
SELECT * FROM VENTAS;
SELECT * FROM ERRORES;

drop table  VENTAS;
drop table ARTICULO;
drop table CLIENTE;
drop table SUCURSAL;
drop table 	REGION;
drop table 	VENDEDOR;
drop table 	FECHA;
drop table ERRORES;



CREATE TABLE ARTICULO(
	id_articulo int IDENTITY(1,1) PRIMARY KEY,
	CodigoArticulo varchar(200) not null,
	Color          varchar(200) not null,
	Descripcion    varchar(200) not null,
	Departamento   varchar(200) not null

);

CREATE TABLE SUCURSAL(
	id_sucursal int IDENTITY(1,1) PRIMARY KEY,
	CodigoSucursal varchar(200) not null,
	NombreSucursal	varchar(200) not null,
	Direccion		varchar(200) not null,
);

CREATE TABLE REGION(
	id_region int IDENTITY(1,1) PRIMARY KEY,
	Region			varchar(200) not null,
	Departamento	varchar(200) not null,
	Zona			varchar(200) not null,
);

CREATE TABLE FECHA(
	id_fecha int IDENTITY(1,1) PRIMARY KEY,
	dia			int not null,
	mes			int not null,
	anio		int not null,
	fecha		date not null,
	mesletras   varchar(200),
	semestre	int not null
);

CREATE TABLE CLIENTE(
	id_cliente int IDENTITY(1,1) PRIMARY KEY,
	CodigoCliente  varchar(200) not null,
	NombreCliente  varchar(200) not null,
	TipoCliente    varchar(100) not null,
	Direccion      varchar(200) not null,
	CorreoCliente  varchar(200) not null
);

CREATE TABLE VENDEDOR(
	id_vendedor int IDENTITY(1,1) PRIMARY KEY,
	CodigoVendedorT  varchar(200) not null,
	NombreVendedorT  varchar(200) not null,
	SucursaT		 varchar(200) not null,
);

CREATE TABLE VENTAS(
	id_venta int IDENTITY(1,1),
	id_articulo int,
	id_sucursal int,
	id_region int ,
	id_fecha int ,
	id_cliente int ,
	id_vendedor int,
	cantidad int,
	precioUnitario money,
	total money,
	primary key(id_articulo,id_sucursal,id_region,id_fecha,id_cliente,id_vendedor),
	FOREIGN KEY (id_articulo) REFERENCES ARTICULO(id_articulo),
	FOREIGN KEY (id_sucursal) REFERENCES SUCURSAL(id_sucursal),
	FOREIGN KEY (id_region) REFERENCES REGION(id_region),
	FOREIGN KEY (id_fecha) REFERENCES FECHA(id_fecha),
	FOREIGN KEY (id_cliente) REFERENCES CLIENTE(id_cliente),	
	FOREIGN KEY (id_vendedor) REFERENCES VENDEDOR(id_vendedor)	
);

CREATE TABLE ERRORES(
	DESCRIPCION VARCHAR(2000)
);