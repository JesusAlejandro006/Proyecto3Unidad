<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Catalogo | TrailShop</title>
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
    <h2>Catalogo de productos</h2>

    <c:if test="${param.ok == 1}">
        <div class="alerta ok">Producto guardado correctamente.</div>
    </c:if>

    <c:if test="${not empty error}">
        <div class="alerta error">${error}</div>
    </c:if>

    <c:choose>
        <c:when test="${empty productos}">
            <p class="vacio">No hay productos registrados todavia.</p>
        </c:when>
        <c:otherwise>
            <div class="grid">
                <c:forEach var="p" items="${productos}">
                    <article class="card">
                        <span class="etiqueta"><c:out value="${p.categoria}"/></span>
                        <h3><c:out value="${p.nombre}"/></h3>
                        <p class="desc"><c:out value="${p.descripcion}"/></p>
                        <p class="precio">
                            $<fmt:formatNumber value="${p.precio}" type="number" minFractionDigits="2" maxFractionDigits="2"/> MXN
                        </p>
                        <p class="stock">
                            <c:choose>
                                <c:when test="${p.stock > 0}">En stock: ${p.stock}</c:when>
                                <c:otherwise><span class="agotado">Agotado</span></c:otherwise>
                            </c:choose>
                        </p>
                    </article>
                </c:forEach>
            </div>
        </c:otherwise>
    </c:choose>
</main>

<footer>
    <p>TrailShop &copy; 2026 - Proyecto escolar JSP + JSTL + SQL Server.</p>
</footer>
</body>
</html>
