<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Mostrar Datos</title>
<style>
    body {
        font-family: Arial, sans-serif;
    }
    .container {
        width: 30%; /* Cambia el valor según el ancho deseado */
        margin: 0 auto; /* Centra el contenedor horizontalmente */
        text-align: center; /* Centra el contenido del contenedor */
    }
    table {
        border-collapse: collapse;
        width: 100%;
    }
    th, td {
        border: 1px solid #ddd;
        padding: 8px;
        text-align: left;
        max-width: 50%; /* Cambia el valor según el ancho deseado */
    }
    th {
        background-color: #f2f2f2;
        white-space: nowrap;
    }
</style>
</head>
<body>
    <div class="container">
        <h2>Los datos ingresados son</h2>
        <table>
            <tr>
                <th>Identificador</th>
                <td>${requestScope.identificador}</td>
            </tr>
            <tr>
                <th>Nombre</th>
                <td>${requestScope.usuario.nombre}</td>
            </tr>
            <tr>
                <th>Edad</th>
                <td>${requestScope.usuario.edad}</td>
            </tr>
            <tr>
                <th>Direccion</th>
                <td>${requestScope.usuario.direccion}</td>
            </tr>
            <tr>
                <th>Telefono</th>
                <td>${requestScope.usuario.tel}</td>
            </tr>
        </table>
    </div>
</body>
</html>
