<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Agregar producto | TrailShop</title>
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

<main class="contenedor">
    <h2>Agregar producto</h2>

    <c:if test="${not empty error}">
        <div class="alerta error">${error}</div>
    </c:if>

    <form class="formulario" action="${pageContext.request.contextPath}/productos" method="post">
        <label for="nombre">Nombre</label>
        <input type="text" id="nombre" name="nombre" maxlength="80" required>

        <label for="categoria">Categoria</label>
        <select id="categoria" name="categoria" required>
            <option value="Mochilas">Mochilas</option>
            <option value="Campamento">Campamento</option>
            <option value="Calzado">Calzado</option>
            <option value="Accesorios">Accesorios</option>
            <option value="Hidratacion">Hidratacion</option>
            <option value="Ropa">Ropa</option>
        </select>

        <label for="descripcion">Descripcion</label>
        <input type="text" id="descripcion" name="descripcion" maxlength="200">

        <label for="precio">Precio (MXN)</label>
        <input type="number" id="precio" name="precio" min="0" step="0.01" required>

        <label for="stock">Stock</label>
        <input type="number" id="stock" name="stock" min="0" required>

        <button type="submit" class="btn">Guardar producto</button>
    </form>
</main>

<footer>
    <p>TrailShop &copy; 2026 - Proyecto escolar JSP + JSTL + SQL Server.</p>
</footer>
</body>
</html>
