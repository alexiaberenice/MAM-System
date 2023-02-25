<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

	<div class="container my-5">
		<h2>Paciente-
			<c:out value="${paciente.idPaciente != null ? 'Update' : 'Registration' }" />
		</h2>
		<div class="card">
			<div class="card-body">
				<div class="col-md-10">
					<form:form method="POST" modelAttribute="paciente" action="/homePaciente"
						name="paciente">
						<form:hidden path="idPaciente" />

						<div class="row">
							<div class="form-group col-md-8">
								<label for="text" class="col-form-label"> Nombre </label>
								<form:input type="text" path="nombre" id="nombre"
									class="form-control" />
							</div>
							<div class="form-group col-md-8">
								<label for="text" class="col-form-label"> Apellido </label>
								<form:input type="text" path="apellidos" id="apellidos"
									class="form-control" />
							</div>
							<div class="form-group col-md-8">
								<label for="text" class="col-form-label"> Correo </label>
								<form:input type="email" path="correo" id="correo"
									class="form-control" />
							</div>
								<div class="form-group col-md-8">
								<label for="text" class="col-form-label"> Telefono </label>
								<form:input type="tel" path="telPaciente" id="telPaciente"
									class="form-control" />
							</div>

							</div>

							<div class="col-md-6">
								<input type="submit" class="btn btn-success"
									value="<c:out value="${paciente.idPaciente != null ? 'Update' : 'Register' }" />">&nbsp;&nbsp;
								<a href="/listapacientes">Lista de pacientes</a>&nbsp;
								<c:if test="${paciente.idPaciente ne null}">
									<b>|</b>&nbsp;<a href="/registrationPaciente">Registration</a>
								</c:if>
							</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>