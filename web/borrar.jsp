<%-- 
    Document   : borrar
    Created on : 9 oct 2023, 1:08:21
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
    <title>Procesar Retiro de Mascota</title>
</head>
<body>
    <h1>Procesar Retiro de Mascota</h1>

   
    <%
        String tipoMascota = request.getParameter("tipoMascota");
        String nombreMascota = request.getParameter("nombreMascota");
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
        if (mascotas != null) {
            for (int i = 0; i < mascotas.size(); i++) {
                Veterinaria.Mascota mascota = mascotas.get(i);
                if (mascota.getNombre().equals(nombreMascota)) {
                    mascotas.remove(i);
                    break;
                }
            }
        }
    %>

    <p>La mascota de tipo <%= tipoMascota %> con nombre <%= nombreMascota %> ha sido retirada con éxito.</p>

    <a href="index.html">Volver al inicio</a>
</body>
</html>
