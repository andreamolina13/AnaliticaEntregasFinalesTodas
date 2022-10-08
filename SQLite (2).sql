DROP TABLE if EXISTS hurto_residencias; 
CREATE TABLE  hurto_residencias(
Fecha_hecho varchar (50) NOT NULL,
cantidad INT NOT NULL,
Sexo VARCHAR (50),
Edad INT CHECK(Edad>=18),
Estado_civil VARCHAR (100),
Conducta VARCHAR (100),
Modalidad VARCHAR (100),
armas_medios VARCHAR (100),
Nombre_Barrio VARCHAR (100),
Codigo_Comuna INT CHECK(Codigo_Comuna>0),
Lugar_Hurto VARCHAR (100),
Categoria_bien  VARCHAR (100),
Bien VARCHAR (100),
Color VARCHAR (100));

PRAGMA table_info(hurto_residencias);

DROP TABLE if EXISTS hurto_carros; 
CREATE TABLE  hurto_carros(
Fecha_hecho varchar (50) NOT NULL,
cantidad INT NOT NULL,
Sexo VARCHAR (50),
Edad INT CHECK(Edad>=18),
Estado_civil VARCHAR (100),
Conducta VARCHAR (100),
Modalidad VARCHAR (100),
armas_medios VARCHAR (100),
Nombre_Barrio VARCHAR (100),
Codigo_Comuna INT CHECK(Codigo_Comuna>0),
Lugar_Hurto VARCHAR (100),
Categoria_bien  VARCHAR (100),
Bien VARCHAR (100),
Color VARCHAR (100));

PRAGMA table_info(hurto_carro);

DROP TABLE if EXISTS hurto_moto; 
CREATE TABLE  hurto_moto(
Fecha_hecho varchar (50) NOT NULL,
cantidad INT NOT NULL,
Sexo VARCHAR (50),
Edad INT CHECK(Edad>=18),
Estado_civil VARCHAR (100),
Conducta VARCHAR (100),
Modalidad VARCHAR (100),
armas_medios VARCHAR (100),
Nombre_Barrio VARCHAR (100),
Codigo_Comuna INT CHECK(Codigo_Comuna>0),
Lugar_Hurto VARCHAR (100),
Categoria_bien  VARCHAR (100),
Bien VARCHAR (100),
Color VARCHAR (100));

PRAGMA table_info(hurto_moto);


--Cuantos hurtos de carro,moto y residencia  han habido por fecha

--with tabla1 as (

--SELECT fecha, cantidad_hurtados FROM ( 
--SELECT date(fecha_hecho) as fecha, count(*) as cantidad_hurtados from `clase-analitica-355520.primertaller.hurto_carro` 
--GROUP BY date(fecha_hecho))
--ORDER BY date(fecha)),

--tabla2 as (
--SELECT fecha, cantidad_hurtados FROM ( 
--SELECT date(fecha_hecho) as fecha, count(*) as cantidad_hurtados from `clase-analitica-355520.primertaller.hurto_moto` 
--GROUP BY date(fecha_hecho))
--ORDER BY date(fecha)), 

--tabla3 as (
--SELECT fecha, cantidad_hurtados FROM ( 
--SELECT date(fecha_hecho) as fecha, count(*) as cantidad_hurtados from `clase-analitica-355520.primertaller.hurto_residencia` 
--GROUP BY date(fecha_hecho))
--ORDER BY date(fecha))

--SELECT t1.fecha, t1.cantidad_hurtados, t2.cantidad_hurtados, t3.cantidad_hurtados FROM tabla1 t1 
--LEFT JOIN tabla2 t2 ON t1.fecha = t2.fecha 
--LEFT JOIN tabla3 t3 ON t1.fecha = t3.fecha 






--Cual es el sexo mas afectado por los hurtos en la cuidad

--with tabla4 as (
--SELECT sexo, cantidad_hurtados_carros FROM (
--SELECT sexo as sexo, count(*) as cantidad_hurtados_carros from  `clase-analitica-355520.primertaller.hurto_carro`
--GROUP BY sexo)),

--tabla5 as (
--SELECT sexo, cantidad_hurtados_motos FROM (
--SELECT sexo as sexo, count(*) as cantidad_hurtados_motos from  `clase-analitica-355520.primertaller.hurto_moto`
--GROUP BY sexo)),

--tabla6 as (
--SELECT sexo, cantidad_hurtados_residencia FROM (
--SELECT sexo as sexo, count(*) as cantidad_hurtados_residencia from  `clase-analitica-355520.primertaller.hurto_residencia`
--GROUP BY sexo))

--SELECT t4.sexo, t4.cantidad_hurtados_carros, t5.cantidad_hurtados_motos, t6.cantidad_hurtados_residencia FROM tabla4 t4 
--LEFT JOIN tabla5 t5 ON t4.sexo = t4.sexo 
--LEFT JOIN tabla6 t6 ON t4.sexo= t6.sexo 




--cuales son los barrios donde mas se evidenia el hurto de motos 
--SELECT LOWER (nombre_barrio) as barrio, codigo_barrio, sum(cantidad) as cantidad_hurto_moto FROM `clase-analitica-355520.primertaller.hurto_moto`
--GROUP BY nombre_barrio, codigo_barrio
--ORDER BY cantidad_hurto_moto des 





--cuales son los barrios donde mas se evidenia el hurto de carros 
--SELECT LOWER (nombre_barrio) as barrio, codigo_barrio, sum(cantidad) as cantidad_hurto_carro FROM `clase-analitica-355520.primertaller.hurto_carro`
--GROUP BY nombre_barrio, codigo_barrio
--ORDER BY cantidad_hurto_carro des 






--cuales son los barrios donde mas se evidenia el hurto de residencia
--SELECT LOWER (nombre_barrio) as barrio, codigo_barrio, sum(cantidad) as cantidad_hurto_residencia FROM `clase-analitica-355520.primertaller.hurto_residencia`
--GROUP BY nombre_barrio, codigo_barrio
--ORDER BY cantidad_hurto_rsidencia des 




---Cuál es el color de los carros más afectadas por hurtos. 
--SELECT LOWER (color) as color_carro, count(*) as cantidad FROM `clase-analitica-355520.primertaller.hurto_carro`
--GROUP BY color
--ORDER BY cantidad DESC 





---Cuál es el color y los modelos  de  motos más afectadas por hurtos. 
--SELECT LOWER (color) as color_moto, count(*) as cantidad FROM `clase-analitica-355520.primertaller.hurto_moto`
--GROUP BY color
--ORDER BY cantidad DESC  






-- ¿Cuál es la modalidad de hurto más común?
--with tabla7 as (

----SELECT modalidad, cantidad_carros from (
--SELECT modalidad, count(*) as cantidad_carros  FROM `clase-analitica-355520.primertaller.hurto_carro`
--group by modalidad)
--order by cantidad_carros desc),

--tabla8 as (
--SELECT modalidad, cantidad_motos from (
--SELECT modalidad, count(*) as cantidad_motos  FROM `clase-analitica-355520.primertaller.hurto_moto` 
--group by modalidad)
--order by cantidad_motos desc),

--tabla9 as (
--SELECT modalidad, cantidad_residencias from (
--SELECT modalidad, count(*) as cantidad_residencias  FROM `clase-analitica-355520.primertaller.hurto_residencia` 
--group by modalidad)
--order by cantidad_residencias desc)

--SELECT tabla7.modalidad, tabla7.cantidad_carros, tabla8.cantidad_motos, tabla9.cantidad_residencias from tabla7
--left join tabla8 on tabla7.modalidad = tabla8.modalidad
--left join tabla9 on tabla7.modalidad = tabla9.modalidad---





--¿Cuál es el bien más robado en los hurtos a residencias?
--select bien as bien, count(*) as cantidad from `clase-analitica-355520.primertaller.hurto_residencia`
--group by bien
--order by cantidad desc







--¿Cuál estado civil sufre más por hurtos?
--with tabla10 as (

--SELECT estado_civil, cantidad_carros from (
--SELECT estado_civil, count(*) as cantidad_carros  FROM `clase-analitica-355520.primertaller.hurto_carro` 
--group by estado_civil)
--order by cantidad_carros desc),

--tabla11 as (
--SELECT estado_civil, cantidad_motos from (
--SELECT estado_civil, count(*) as cantidad_motos  FROM `clase-analitica-355520.primertaller.hurto_moto` 
--group by estado_civil)
--order by cantidad_motos desc),

--tabla12 as (
--SELECT estado_civil, cantidad_residencias from (
--SELECT estado_civil, count(*) as cantidad_residencias  FROM  `clase-analitica-355520.primertaller.hurto_residencia` 
--group by estado_civil)
--order by cantidad_residencias desc)

--SELECT tabla10.estado_civil, tabla10.cantidad_carros, tabla11.cantidad_motos, tabla12.cantidad_residencias from tabla10
--left join tabla11 on tabla10.estado_civil = tabla11.estado_civil
--left join tabla12 on tabla10.estado_civil = tabla12.estado_civil



--¿Qué intervalo de personas en las edades menores a 30, entre 30 y 50 y mayores a 50 sufre por más hurtos en residencias?
--SELECT count(edad) as cantidad_personas_por_grupo, count(edad) as cantidad  FROM  `clase-analitica-355520.primertaller.hurto_residencia`
--group by case
 -- when edad < 30  then 'menores de 30'
 -- when edad between 30 and 50 then '30-50'
 -- when edad > 50 then 'mayores a 50'
--end
--order by cantidad desc




--Cual es el promedio de hurtos de moto realizados por modalidad de hurto 
--SELECT sexo as sexo_victima, count( CASE WHEN modalidad = "Halado" THEN 1 ELSE NULL END)/ count(modalidad) as promedio_hurto_atraco
--FROM `clase-analitica-355520.primertaller.hurto_moto`
--GROUP BY sexo 






--Cual es el promedio de hurtos de carro realizados en modalidad de hurto atraco por sexo 
--SELECT sexo as sexo_victima, count( CASE WHEN modalidad = "Atraco" THEN 1 ELSE NULL END)/ count(modalidad) as promedio_hurto_atraco
--FROM `clase-analitica-355520.primertaller.hurto_carro`
--GROUP BY sexo 





--Según el sexo, ¿en qué barrio ocurre la mayor cantidad de hurtos en residencia?
--SELECT sexo, nombre_barrio, count(nombre_barrio) as cantidad  FROM `clase-analitica-355520.primertaller.hurto_residencia`
---group by nombre_barrio, sexo
---order by cantidad desc