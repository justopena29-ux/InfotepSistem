CREATE DATABASE MANTENIMIENTO_PRODUCTOS

USE MANTENIMIENTO_PRODUCTOS

create table CATEGORIA(
IDCATEGORIA int identity(1,1) primary key not null,
CODIGO as ('CT'+right('00'+convert(varchar,IDCATEGORIA),(2))),
NOMBRE nvarchar(30) not null,
DESCRIPCION nvarchar(256) null
)

insert into CATEGORIA values ('HERRAMIENTAS','LAS MEJORES HERRAMIENTAS')
insert into CATEGORIA values ('PINTURERIA', 'LAS MEJORES PINTURAS PARA TU CASA')

select * from CATEGORIA;

--procedimiento almacenado buscar categoria

CREATE PROCEDURE SP_BUSCARCATEGORIA
@BUSCAR nvarchar(20)
as
select * from CATEGORIA
where NOMBRE like @BUSCAR + '%'

--procedimiento almacenado insertar categoria

create proc SP_INSERTARCATEGORIA
@NOMBRE nvarchar(30),
@DESCRIPCION nvarchar(256)
as
insert into CATEGORIA values (@NOMBRE,@DESCRIPCION)

--procedimiento almacenado editar categoria

create proc SP_EDITARCATEGORIA
@IDCATEGORIA int,
@NOMBRE nvarchar(30),
@DESCRIPCION nvarchar(256)
as
update CATEGORIA set NOMBRE = @NOMBRE, DESCRIPCION = @DESCRIPCION
where IDCATEGORIA = @IDCATEGORIA

--procedimiento almacenado eliminar categoria

create proc SP_ELIMINARCATEGORIA
@IDCATEGORIA int
AS
DELETE CATEGORIA
where IDCATEGORIA = @IDCATEGORIA






