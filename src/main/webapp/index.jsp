<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Ingreso de persona</title>
<!-- Nos lleva al archivo CSS -->
<link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
	<div class="container">
		<div class="logo">
			<img src="logo_utec.jpg" alt="Logo UTEC">
		</div>
		<h1>Sistema de gestión de personas</h1>
		<h2>Ingreso de persona</h2>

		<% String mensajeError = (String) request.getAttribute("mensajeError"); %>
		<% if (mensajeError != null && !mensajeError.isEmpty()) { %>

		<div class="error-message"><%= mensajeError %></div>
		<% } %>
		<!-- Nuevo título agregado -->
		<form action="validar" method="POST">

			<label for="nombre">Nombre:</label> <input type="text" id="nombre"
				name="nombre" placeholder="Ingrese un nombre"> <label
				for="edad">Edad:</label> <input type="number" id="edad" name="edad"
				placeholder="Ingrese su edad"> <label for="direccion">Direccion:</label>
			<input type="text" id="direccion" name="direccion"
				placeholder="Ingrese su direccion"> <label for="tel">Telefono:</label>
			<!-- minlength="9" maxlength="9" (max y min de caracteres)-->
			<input type="text" id="tel" name="tel" minlength="9" maxlength="9"
				placeholder="Ingrese su telefono">

			<button type="submit">Enviar</button>
		</form>
		<footer>
			<hr>
			<p>Unidad Curricular de Programación de Aplicaciones Web - UTEC -
				Fenix Technologies 2023</p>
		</footer>
	</div>
</body>
</html>