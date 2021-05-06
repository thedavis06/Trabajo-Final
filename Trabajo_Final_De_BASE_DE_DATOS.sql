create database Natural_Max
use Natural_Max

create table Producto
(
  Id_producto int primary key,
  Nombre Varchar(50),
  precio int,
  Sabor Varchar(50)
 )

 insert into Producto(Id_producto,Nombre,precio,Sabor) Values(7356,'Jugo de piña',45,'Piña')
 insert into Producto(Id_producto,Nombre,precio,Sabor) Values(8975,'Jugo de Manzana',60,'Manzana')
 insert into Producto(Id_producto,Nombre,precio,Sabor) Values(8456,'Jugo de Pera',45,'Pera')
 insert into Producto(Id_producto,Nombre,precio,Sabor) Values(8056,'Jugo de fresa',85,'fresa')
 insert into Producto(Id_producto,Nombre,precio,Sabor) Values(8459,'Jugo de mango',55,'mango')
  insert into Producto(Id_producto,Nombre,precio,Sabor) Values(8454,'Jugo de melocoton',35,'melocoton')
  insert into Producto(Id_producto,Nombre,precio,Sabor) Values(8436,'Jugo de guineo',15,'guineo')
  insert into Producto(Id_producto,Nombre,precio,Sabor) Values(8856,'Jugo de frut pon',65,'frut pon')
  insert into Producto(Id_producto,Nombre,precio,Sabor) Values(7456,'Jugo de tamarindo',45,'tamarindo')
  insert into Producto(Id_producto,Nombre,precio,Sabor) Values(8086,'Jugo de durasno',55,'durasno')
  
 select*from Producto



create table Empleados
(
Id_empleado int primary key,
Nombre Varchar(50),
Apellido Varchar(40),
Edad int,
Posicion Varchar(70)
)

 insert into Empleados(Id_empleado,Nombre,Apellido,Edad,Posicion) values(34789,'Davis','Ripoll Nisbett',25,'Ingeniero Industrial')
 insert into Empleados(Id_empleado,Nombre,Apellido,Edad,Posicion) values(34782,'carlos','Rorbet',35,'calidad')
 insert into Empleados(Id_empleado,Nombre,Apellido,Edad,Posicion) values(66779,'pedro','monegro',23,'Ingeniero civil')
 insert into Empleados(Id_empleado,Nombre,Apellido,Edad,Posicion) values(39789,'Juan','Liriano',45,'super visor')
 insert into Empleados(Id_empleado,Nombre,Apellido,Edad,Posicion) values(347888,'Starling','perez',34,'Ingeniero Industrial')
 insert into Empleados(Id_empleado,Nombre,Apellido,Edad,Posicion) values(39989,'Lorena','beltre',25,'operadora')
 insert into Empleados(Id_empleado,Nombre,Apellido,Edad,Posicion) values(34189,'milagros','carol',55,'gerente')
 insert into Empleados(Id_empleado,Nombre,Apellido,Edad,Posicion) values(44789,'benildo','caraballo',35,'coordinador')
 insert into Empleados(Id_empleado,Nombre,Apellido,Edad,Posicion) values(35789,'marina','guzman',28,'conserge')
 insert into Empleados(Id_empleado,Nombre,Apellido,Edad,Posicion) values(37789,'emerson','Espinal',31,'contratista')

 select*from Empleados


 

create table Cliente
(
Id_cliente int primary key,
Nombre Varchar(30),
Cedula varchar(13),
Ubicación Varchar(80)
)

insert into Cliente(Id_cliente,Nombre,Cedula,Ubicación) values(91826,'Eric','402-3867495-0','Haina')
insert into Cliente(Id_cliente,Nombre,Cedula,Ubicación) values(95526,'edwin','402-3886355-1','Haina')
insert into Cliente(Id_cliente,Nombre,Cedula,Ubicación) values(91986,'pedro','002-5267495-3','Haina')
insert into Cliente(Id_cliente,Nombre,Cedula,Ubicación) values(34526,'emerson','409-6543295-0','san cristobal')
insert into Cliente(Id_cliente,Nombre,Cedula,Ubicación) values(09826,'Eric','402-3887608-6','nigua')
insert into Cliente(Id_cliente,Nombre,Cedula,Ubicación) values(91821,'juan','402-3123495-9','Haina')
insert into Cliente(Id_cliente,Nombre,Cedula,Ubicación) values(97626,'juanito','402-1342495-1','piedra blanca')
insert into Cliente(Id_cliente,Nombre,Cedula,Ubicación) values(12326,'santo','402-3867495-0','santo domingo')
insert into Cliente(Id_cliente,Nombre,Cedula,Ubicación) values(91820,'ricardo','402-3354675-3','haiti')
insert into Cliente(Id_cliente,Nombre,Cedula,Ubicación) values(91876,'ricardo','402-9876545-0','mexico')




select* from Cliente

create table Historial_de_venta
(
Id_historial int primary key,
Producto varchar(50),
Cantidad int,
Fecha date,
Precio int
)

insert into Historial_de_venta(Id_historial,Producto,Cantidad,Fecha,Precio) values(2567,'Jugo de piña',18,'2021-05-24',810)
insert into Historial_de_venta(Id_historial,Producto,Cantidad,Fecha,Precio) values(4839,'Jugo de melocoton',50,'2021-05-28',2000)
insert into Historial_de_venta(Id_historial,Producto,Cantidad,Fecha,Precio) values(2537,'Jugo de manzana',43,'2021-04-24',1750)
insert into Historial_de_venta(Id_historial,Producto,Cantidad,Fecha,Precio) values(2564,'Jugo de pera',25,'2021-02-22',1200)
insert into Historial_de_venta(Id_historial,Producto,Cantidad,Fecha,Precio) values(2565,'Jugo de Manzana',20,'2021-04-27',600)
insert into Historial_de_venta(Id_historial,Producto,Cantidad,Fecha,Precio) values(2566,'Jugo de tamarindo',18,'2021-05-29',930)
insert into Historial_de_venta(Id_historial,Producto,Cantidad,Fecha,Precio) values(2568,'Jugo de manzana',60,'2021-05-13',5400)
insert into Historial_de_venta(Id_historial,Producto,Cantidad,Fecha,Precio) values(2569,'Jugo de piña',26,'2021-05-10',1280)
insert into Historial_de_venta(Id_historial,Producto,Cantidad,Fecha,Precio) values(25670,'Jugo de piña',14,'2021-05-04',540)
insert into Historial_de_venta(Id_historial,Producto,Cantidad,Fecha,Precio) values(24671,'Jugo de pera',14,'2021-05-18',540)

select*from Historial_de_venta


create table Tipo_de_cliente 
(
Id_tipo_de_cliente int primary key,
Id_client int,
Pais varchar(25),
Tipo_producto varchar(50),
FOREIGN KEY(Id_client) References Cliente(Id_cliente)
)

insert into Tipo_de_cliente(Id_tipo_de_cliente,Id_client,Pais,Tipo_producto) values(1345,9826,'Republica dominicana','Jugo')
insert into Tipo_de_cliente(Id_tipo_de_cliente,Id_client,Pais,Tipo_producto) values(9823,12326,'Haiti','Enerjisante')
insert into Tipo_de_cliente(Id_tipo_de_cliente,Id_client,Pais,Tipo_producto) values(7234,34526,'Republica dominicana','Jugo Natural')
insert into Tipo_de_cliente(Id_tipo_de_cliente,Id_client,Pais,Tipo_producto) values(3892,91820,'Colombia','Jugo')
insert into Tipo_de_cliente(Id_tipo_de_cliente,Id_client,Pais,Tipo_producto) values(8237,91876,'Republica dominicana','Enerjisante')
insert into Tipo_de_cliente(Id_tipo_de_cliente,Id_client,Pais,Tipo_producto) values(3891,97626,'Mexico','Jugo Natural')
insert into Tipo_de_cliente(Id_tipo_de_cliente,Id_client,Pais,Tipo_producto) values(3829,34526,'Republica dominicana','Jugo')
insert into Tipo_de_cliente(Id_tipo_de_cliente,Id_client,Pais,Tipo_producto) values(3782,91821,'Republica dominicana','Enerjisante')
insert into Tipo_de_cliente(Id_tipo_de_cliente,Id_client,Pais,Tipo_producto) values(2839,91986,'Haiti','Jugo')
insert into Tipo_de_cliente(Id_tipo_de_cliente,Id_client,Pais,Tipo_producto) values(3789,95526,'Colombis','Jugo Natural')

select*from Tipo_de_cliente