# TrailShop

Tienda en linea de equipo para senderismo (mochilas, campamento, calzado, accesorios e hidratacion). Proyecto escolar de desarrollo web con enfoque clasico: **JSP + JSTL + Servlet + JDBC + SQL Server**.

## Funcionalidades
- Se conecta a una base de datos SQL Server (`Conexion.java`).
- **Trae** datos guardados en la tabla `Productos` y los muestra con JSTL (`productos.jsp`).
- **Guarda** datos nuevos en la tabla `Productos` desde un formulario (`agregar.jsp` -> `ProductoServlet`).

## Estructura
```
TrailShop/
├── pom.xml
├── sql/script.sql
└── src/main
    ├── java/com/trailshop
    │   ├── dao/ProductoDAO.java
    │   ├── model/Producto.java
    │   ├── servlet/ProductoServlet.java
    │   └── util/Conexion.java
    └── webapp
        ├── css/style.css
        ├── index.jsp
        ├── productos.jsp
        └── agregar.jsp
```

## Como ejecutarlo
1. Abre **SQL Server Management Studio** y ejecuta `sql/script.sql` (crea la BD, la tabla, datos de ejemplo y el usuario `JavaUser`).
2. En SQL Server Configuration Manager habilita **TCP/IP** y verifica el puerto (normalmente 1433).
3. Si tu puerto es distinto, cambialo en `src/main/java/com/trailshop/util/Conexion.java`.
4. Abre el proyecto en **NetBeans / IntelliJ / Eclipse** como proyecto Maven y ejecutalo en **Tomcat 10.1+** (usa `jakarta.*`, no `javax.*`).
5. Entra a `http://localhost:8080/TrailShop/`.
