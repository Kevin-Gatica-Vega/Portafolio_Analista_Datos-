---Base de datos
use [Panaderia jueves]

---Visualizar la tabla
select * from "Tabla del dia Jueves";

---Ingresos totales
SELECT SUM(Precio_del_producto) AS ingreso_total
FROM "Tabla del dia Jueves";

--- Desempeño de los Empleados
SELECT Personal_que_atendió AS Empleado,
    COUNT(*) AS Productos_Vendidos
FROM "Tabla del dia Jueves"
GROUP BY Personal_que_atendió
ORDER BY Productos_Vendidos DESC;

---Ingresos totales por producto
SELECT Objeto_vendido AS Producto,
    COUNT(*) AS Cantidad_Vendida,
    SUM(Precio_del_producto) AS Ingresos_Totales
FROM "Tabla del dia Jueves"
GROUP BY Objeto_vendido
ORDER BY Ingresos_Totales DESC, Cantidad_Vendida DESC;