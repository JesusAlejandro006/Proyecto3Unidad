<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>TrailShop | Equipo para senderismo</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>
<header class="topbar">
    <span class="logo">&#9968; TrailShop</span>
    <nav>
        <a href="${pageContext.request.contextPath}/index.jsp">Inicio</a>
        <a href="${pageContext.request.contextPath}/productos">Catalogo</a>
        <a href="${pageContext.request.contextPath}/agregar.jsp">Agregar producto</a>
    </nav>
</header>

<main class="hero">
    <h1>Todo para tu proxima <span class="acento">aventura</span></h1>
    <p>Mochilas, tiendas de campana, calzado y accesorios para recorrer senderos, montanas y bosques con comodidad y seguridad.</p>
    <a class="btn" href="${pageContext.request.contextPath}/productos">Ver catalogo</a>
</main>

<footer>
    <p>TrailShop &copy; 2026 - Proyecto escolar JSP + JSTL + SQL Server.</p>
</footer>
</body>
</html>
