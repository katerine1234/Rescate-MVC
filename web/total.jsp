<%-- 
    Document   : total
    Created on : 9 oct 2023, 9:45:13
    Author     : Katerine  Forero
--%>


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<link href="styleGeneral.css" rel="stylesheet" type="text/css"/>
<%@ page import="java.util.ArrayList" %>
<%@ page import="Veterinaria.Mascota" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link href="styleGeneral.css" rel="stylesheet" type="text/css"/>

    <title>Mostrar Cantidad de Felinos y Caninos</title>
</head>
<body>
    <h1>Mostrar Cantidad de Felinos y Caninos</h1>

    <%
        ArrayList<Veterinaria.Mascota> caninos = (ArrayList<Veterinaria.Mascota>) application.getAttribute("caninos");
        ArrayList<Veterinaria.Mascota> felinos = (ArrayList<Veterinaria.Mascota>) application.getAttribute("felinos");
    %>

    <%
        int cantidadCaninos = (caninos != null) ? caninos.size() : 0;
        int cantidadFelinos = (felinos != null) ? felinos.size() : 0;
    %>

    <p>Cantidad de Caninos: <%= cantidadCaninos %></p>
    <p>Cantidad de Felinos: <%= cantidadFelinos %></p>
    <p>Total de mascotas: <%= cantidadFelinos+cantidadCaninos %></p>

    <a href="index.html">Volver al inicio</a>
</body>
</html>
