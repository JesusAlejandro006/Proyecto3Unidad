package com.trailshop.servlet;

import com.trailshop.dao.ProductoDAO;
import com.trailshop.model.Producto;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.math.BigDecimal;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/productos")
public class ProductoServlet extends HttpServlet {

    private final ProductoDAO dao = new ProductoDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            List<Producto> productos = dao.listar();
            request.setAttribute("productos", productos);
        } catch (SQLException e) {
            request.setAttribute("error", "No se pudo consultar la base de datos: " + e.getMessage());
        }
        request.getRequestDispatcher("/productos.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        try {
            String nombre = request.getParameter("nombre");
            String categoria = request.getParameter("categoria");
            String descripcion = request.getParameter("descripcion");
            BigDecimal precio = new BigDecimal(request.getParameter("precio"));
            int stock = Integer.parseInt(request.getParameter("stock"));

            dao.insertar(new Producto(nombre, categoria, descripcion, precio, stock));
            response.sendRedirect(request.getContextPath() + "/productos?ok=1");

        } catch (NumberFormatException e) {
            request.setAttribute("error", "Precio o stock invalidos.");
            request.getRequestDispatcher("/agregar.jsp").forward(request, response);
        } catch (SQLException e) {
            request.setAttribute("error", "No se pudo guardar el producto: " + e.getMessage());
            request.getRequestDispatcher("/agregar.jsp").forward(request, response);
        }
    }
}
