<%-- 
    Document   : canino
    Created on : 9 oct 2023, 0:17:56
    Author     : Katerine  Forero
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="Veterinaria.Canino" %>
<%@ page import="java.util.ArrayList" %>
<link href="styleDog.css" rel="stylesheet" type="text/css"/>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Agregar Canino</title>
</head>
<body>
    
    
  
    <%
        String nombreCanino = request.getParameter("nombreCanino");
        String razaCanino = request.getParameter("razaCanino");
        String colorCanino = request.getParameter("colorCanino");
        int edadCanino = Integer.parseInt(request.getParameter("edadCanino"));
        int nivelEntrenamiento = Integer.parseInt(request.getParameter("nivelEntrenamiento"));
    %>
    
    
    <%
        Veterinaria.Canino nuevoCanino = new Veterinaria.Canino(nivelEntrenamiento, nombreCanino, razaCanino, colorCanino, edadCanino);
    %>
    
  
    <%
        ArrayList<Veterinaria.Canino> caninos = (ArrayList<Veterinaria.Canino>) application.getAttribute("caninos");
        if (caninos == null) {
            caninos = new ArrayList<>();
            application.setAttribute("caninos", caninos);
        }
        caninos.add(nuevoCanino);
    %>

    <p>Nombre del Canino: <%= nuevoCanino.getNombre() %></p>
    <p>Raza del Canino: <%= nuevoCanino.getRaza() %></p>
    <p>Color del Canino: <%= nuevoCanino.getColor() %></p>
    <p>Edad del Canino: <%= nuevoCanino.getEdad() %></p>
    <p>Nivel de entrenamiento: <%= nuevoCanino.getNiveldeEntrenamiento() %></p>
    
    <p>El Canino ha sido registrado.</p>
    
    <a href="index.html">Volver al inicio</a>
</body>
</html>
