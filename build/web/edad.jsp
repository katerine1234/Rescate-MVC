<%--
Document   : edad
Created on : 9 oct 2023, 9:41:20
Author     : Katerine Forero
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<link href="styleGeneral.css" rel="stylesheet" type="text/css"/>
<%@ page import="java.util.ArrayList" %>
<%@ page import="Veterinaria.Mascota" %>
<%@ page import="Veterinaria.Calculos" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Mostrar Edad Promedio</title>
</head>
<body>
    <h1>Mostrar Edad Promedio</h1>

    <form action="edad.jsp" method="post">
        <label for="tipoMascota">Selecciona el tipo de mascota:</label>
        <select name="tipoMascota" id="tipoMascota">
            <option value="Canino">Canino</option>
            <option value="Felino">Felino</option>
        </select>
        <input type="submit" value="Calcular Edad Promedio">
    </form>

    <%
        String tipoMascota = request.getParameter("tipoMascota");
        if (tipoMascota != null) {  
    %>

    <%
        ArrayList<Veterinaria.Mascota> mascotas = null;
        if (tipoMascota.equals("Canino")) {
            mascotas = (ArrayList<Veterinaria.Mascota>) application.getAttribute("caninos");
        } else if (tipoMascota.equals("Felino")) {
            mascotas = (ArrayList<Veterinaria.Mascota>) application.getAttribute("felinos");
        }
    %>

    <%
        int edadPromedio = 0; 
        if (mascotas != null && !mascotas.isEmpty()) {
            Calculos calculadora = new Calculos(); 
            edadPromedio = (int) calculadora.calcularEdad(mascotas); 
        }
    %>

    <p>La edad promedio de las mascotas de tipo <%= tipoMascota %> es: <%= edadPromedio %> años</p>

    <%
        } else {
    %>
    <p>Por favor, selecciona un tipo de mascota y presiona "Calcular Edad Promedio".</p>
    <%
        }
    %>

    <a href="index.html">Volver al inicio</a>
</body>
</html>
