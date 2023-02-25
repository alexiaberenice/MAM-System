<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="stag" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Cita Management</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet"
 href="https://use.fontawesome.com/releases/v5.4.1/css/all.css">
<link rel="stylesheet"
 href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script
 src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js">
</script>
<script
 src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js">
</script>
</head>
<body>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<a class="navbar-brand" href="/">Gestión de citas médicas</a>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link" href="/registration">Nueva
						cita</a></li>
				<li class="nav-item"><a class="nav-link" href="/registrationPaciente">Nuevo
						Paciente</a></li>
				<li class="nav-item"><a class="nav-link" href="/registrationDoctor">Nuevo
						Doctor</a></li>
			</ul>
		</div>
	</nav>
	<br>

 <div class="container my-2">
 <h1>Listado de pacientes</h1>
        <div class="card">
            <div class="card-body">
             <p class="my-5">
                <a href="/registrationPaciente" class="btn btn-success">
                Add paciente</a>
             </p>
   <div class="col-md-10">
   <table class="table table-striped table-responsive-md">
      <tr>
         <th>ID</th>
         <th>Nombre</th>
         <th>Apellido</th>
         <th>Correo</th>
         <th>Telefono</th>
         <th></th>
         <th></th>
      </tr>
      <c:forEach items="${pacientesList}" var="cita">
         <tr>
            <td>${cita.idPaciente}</td>
            <td>${cita.nombre}</td>
            <td>${cita.apellido}</td>
            <td>${cita.correo}</td>
            <td>${cita.telefono}</td>
            <td>
               <a class="btn btn-warning" href="/edit?id=${cita.idPaciente}" >
               Edit</a>
            </td>
            <td>
               <form action="/delete?id=${cita.idPaciente}" method="post">
                  <input class="btn btn-danger" type="submit" value="Delete" />
               </form>
            </td>
         </tr>
      </c:forEach>
   </table>
     </div>
   </div>
  </div>
</div>
</body>
</html>