<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Mostrar Datos</title>
<style>
    body {
        font-family: Arial, sans-serif;
    }
    table {
        border-collapse: collapse;
        width: 80%; /* Cambia el valor según el ancho deseado */
        margin: 0 auto; /* Centra la tabla horizontalmente */
    }
    th, td {
        border: 1px solid #ddd;
        padding: 8px;
        text-align: left;
    }
    th {
        background-color: #f2f2f2;
    }
</style>
</head>
<body>
    <h2>Los datos ingresados son</h2>
    <table>
        <tr>
       		<th>Identificador</th>
            <th>Nombre</th>
            <th>Edad</th>
            <th>Dirección</th>
            <th>Teléfono</th>
        </tr>
        <tr>
        	<td>${requestScope.identificador}</td>
            <td>${requestScope.usuario.nombre}</td>
            <td>${requestScope.usuario.edad}</td>
            <td>${requestScope.usuario.direccion}</td>
            <td>${requestScope.usuario.tel}</td>
            
        </tr>
    </table>
</body>
</html>
