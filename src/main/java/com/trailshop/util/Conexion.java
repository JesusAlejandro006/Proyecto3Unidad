package com.trailshop.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {
    private static final String URL = "jdbc:sqlserver://127.0.0.1:1433;databaseName=TrailShop;encrypt=true;trustServerCertificate=true;";
    private static final String USER = "usersql";
    private static final String PASSWORD = "12345";

    public static Connection obtenerConexion() {
        Connection conexion = null;
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            conexion = DriverManager.getConnection(URL, USER, PASSWORD);
            System.out.println("¡Conexión exitosa a la base de datos!");
        } catch (ClassNotFoundException e) {
            System.out.println("Error: No se encontró el driver JDBC.");
            e.printStackTrace();
        } catch (SQLException e) {
            System.out.println("Error de conexión con SQL Server.");
            e.printStackTrace();
        }
        return conexion;
    }

    public static void main(String[] args) {
        System.out.println("Iniciando prueba de conexión...");
        obtenerConexion();
    }
}
