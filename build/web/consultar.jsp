<%-- 
    Document   : consultar
    Created on : 9 oct 2023, 1:01:16
    Author     : Katerine  Forero
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<link href="styleGeneral.css" rel="stylesheet" type="text/css"/>
<%@ page import="java.util.ArrayList" %>
<%@ page import="Veterinaria.Canino" %>
<%@ page import="Veterinaria.Felino" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Consultar Mascotas</title>
</head>
<body>
    <h1>Consultar Mascotas</h1>

    
    <%
        ArrayList<Canino> caninos = (ArrayList<Canino>) application.getAttribute("caninos");
        if (caninos == null) {
            caninos = new ArrayList<Canino>();
            application.setAttribute("caninos", caninos);
        }
    %>

  
    <%
        ArrayList<Felino> felinos = (ArrayList<Felino>) application.getAttribute("felinos");
        if (felinos == null) {
            felinos = new ArrayList<Felino>();
            application.setAttribute("felinos", felinos);
        }
    %>

    <%-- Mostrar la lista de Caninos --%>
    <h2>Caninos Disponibles:</h2>
    <ul>
        <%
            for (Canino canino : caninos) {
        %>
            <li>Nombre: <%= canino.getNombre() %>, Raza: <%= canino.getRaza() %>, Color: <%= canino.getColor() %>, Nivel de entrenamiento: <%= canino.getNiveldeEntrenamiento() %></li>
        <%
            }
        %>
    </ul>

    <%-- Mostrar la lista de Felinos --%>
    <h2>Felinos Disponibles:</h2>
    <ul>
        <%
            for (Felino felino : felinos) {
        %>
                    <li>Nombre: <%= felino.getNombre() %>, Raza: <%= felino.getRaza() %>, Color: <%= felino.getColor() %>, Libre de TOXO: <%= felino.getLibreToxoplasmosis() %></li>

        <%
            }
        %>
    </ul>

    <p><a href="index.html">Volver al inicio</a></p>
</body>
</html>
