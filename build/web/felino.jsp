<%-- 
    Document   : procesarFelino
    Created on : 8 oct 2023, 18:52:12
    Author     : Katerine  Forero
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="Veterinaria.Felino" %>
<link href="styleFelinos.css" rel="stylesheet" type="text/css"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Procesar Felino</title>
</head>
<body>
    
   
   <%
        String nombreFelino = request.getParameter("nombreFelino");
        String razaFelino = request.getParameter("razaFelino");
        String colorFelino = request.getParameter("colorFelino");
        int edadFelino = Integer.parseInt(request.getParameter("edadFelino"));
        String libreToxoplasmosis = request.getParameter("libreToxoplasmosis");
    %>
    
    
    <%
        Veterinaria.Felino nuevoFelino = new Veterinaria.Felino(libreToxoplasmosis, nombreFelino, razaFelino, colorFelino, edadFelino);
    %>
    
        <%
        ArrayList<Veterinaria.Felino> felinos = (ArrayList<Veterinaria.Felino>) application.getAttribute("felinos");
        if (felinos == null) {
            felinos = new ArrayList<>();
            application.setAttribute("felinos", felinos);
        }
        felinos.add(nuevoFelino);
    %>

    <p>Nombre del Felino: <%= nuevoFelino.getNombre() %></p>
    <p>Raza del Felino: <%= nuevoFelino.getRaza() %></p>
    <p>Color del Felino: <%= nuevoFelino.getColor() %></p>
    <p>Edad del Felino: <%= nuevoFelino.getEdad() %></p>
    <p>Libre de Toxoplasmosis: <%= nuevoFelino.getLibreToxoplasmosis() %></p>
    
    <p>El Felino ha sido registrado.</p>
    
    <a href="index.html">Volver al inicio</a>
</body>
</html>
