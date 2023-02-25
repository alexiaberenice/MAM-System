<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<body >
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<a class="navbar-brand" href="/">Gestión de citas médicas</a>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link" href="/registration">Nueva
						cita</a></li>
			</ul>
		</div>
	</nav>
	<br>
<h2>Cita- <c:out value="${cita.id != null ? 'Update' : 'Registration' }" /></h2>
<div class="card">
            <div class="card-body">
                <div class="col-md-10">
<form:form method="POST" modelAttribute="cita" action="/home" name="cita">
      <form:hidden path="id"/>

    <div class="row">
       <div class="form-group col-md-8">
       <label for="date" class="col-form-label"> Fecha
                                                        </label>
        <form:input type="datetime-local" path="fecha" id="fecha" class="form-control" />
      </div>

         <div class="form-group col-md-8">
         <label for="text" class="col-form-label"> Paciente </label>
         <select>
         	<c:forEach var="paciente" items=""></c:forEach>
         </select>
                                                    
        <form:input path="paciente" id="paciente" class="form-control"/>
         </div>

        <div class="form-group col-md-8">
        <label for="text" class="col-form-label" > Doctor
                                                       </label>
        <form:input path="doctor" id="doctor" class="form-control"/>
        </div>
       </div>

        <div class="col-md-6">
        <input type="submit" class="btn btn-success"
           value="<c:out value="${cita.id != null ? 'Update' : 'Register' }" />">&nbsp;&nbsp;
         <a href="/list">Lista de Citas</a>&nbsp;
         <c:if test="${cita.id ne null}"><b>|</b>&nbsp;<a href="/registration">Registration</a></c:if>
         </div>

       </form:form>
              </div>
            </div>
        </div>
    </div>
</body>
</html>