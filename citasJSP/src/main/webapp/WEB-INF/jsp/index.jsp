<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="stag"%>
<!DOCTYPE html>
<html lang="esS">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="js/dataTables.bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrapValidator.js"></script>
<script type="text/javascript" src="js/global.js"></script>

<link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="css/dataTables.bootstrap.min.css" />
<link rel="stylesheet" href="css/bootstrapValidator.css" />
<title>Cita Management</title>
</head>
<body>
	<nav>
		<div class="topnav" style="background-color: #343a40;">
			  <b><a class="active" href="/"
				style="color: white; font-size: 30px">Gestión de citas&nbsp;</a></b>
		</div>
	</nav>
	<div class="container">
		<h3>Lista de citas</h3>
		<div class="col-md-23">

			<div class="row" style="height: 70px">
				<div class="col-md-2">
					<button type="button" data-toggle='modal'
						data-target="#id_div_modal_registra" class='btn btn-success'
						style="width: 150px">REGISTRA</button>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="content">

						<table id="id_table" class="table table-striped table-bordered">
							<thead>
								<tr>
									<th style="width: 10%">ID</th>
									<th style="width: 20%">Fecha</th>
									<th style="width: 20%">Paciente</th>
									<th style="width: 20%">Doctor</th>
									<th style="width: 10%">Actualiza</th>
									<th style="width: 10%">Elimina</th>
								</tr>
							</thead>

							<tbody>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>

		<div class="modal fade" id="id_div_modal_registra">
			<div class="modal-dialog" style="width: 60%">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header" style="padding: 35px 50px">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4>
							<span class="glyphicon glyphicon-ok-sign"></span> Registro de
							Cita
						</h4>
					</div>
					<div class="modal-body" style="padding: 20px 10px;">
						<form id="id_form_registra" accept-charset="UTF-8"
							action="registraActualizaCrudCita" class="form-horizontal"
							method="post">
							<div class="panel-group" id="steps">
								<!-- Step 1 -->
								<div class="panel panel-default">
									<div class="panel-heading">
										<h3 class="panel-title" style="text-align: center">
											<a data-toggle="collapse" data-parent="#steps"
												href="#stepOne">Datos de la cita</a>
										</h3>
									</div>
									<div id="stepOne" class="panel-collapse collapse in">
										<div class="panel-body">
											<div class="form-group">
												<label class="col-lg-3 control-label" for="id_reg_nombre">Fecha</label>
												<div class="col-lg-8">
													<input class="form-control" id="id_reg_nombre" name="fecha"
														type="datetime-local" />
												</div>
											</div>

										</div>
										<div class="form-group">
											<label class="col-lg-3 control-label" for="id_reg_paciente">Paciente</label>
											<div class="col-lg-8">
												<select id="id_reg_paciente" name="paciente"
													class='form-control'>
													<option value=" ">[Seleccione]</option>
												</select>
											</div>
										</div>
										<div class="form-group">
											<label class="col-lg-3 control-label"
												for="id_reg_especialidad">Especialidad</label>
											<div class="col-lg-3">
												<select id="id_reg_especialidad" name="especialidad"
													class='form-control'>
													<option value=" ">[Seleccione]</option>
												</select>
											</div>
										</div>
										<div class="form-group">
											<label class="col-lg-3 control-label" for="id_reg_doctor">Doctor</label>
											<div class="col-lg-3">
												<select id="id_reg_doctor" name="doctor"
													class='form-control'>
													<option value=" ">[Seleccione]</option>
												</select>
											</div>
										</div>
										<div class="form-group">
											<div class="col-lg-9 col-lg-offset-3">
												<button type="button" class="btn btn-primary"
													id="id_btn_registra">REGISTRA</button>
											</div>
										</div>
									</div>
								</div>
							</div>
					</div>
					</form>

				</div>
			</div>
		</div>

	</div>

	<div class="modal fade" id="id_div_modal_actualiza">
		<div class="modal-dialog" style="width: 60%">

			<div class="modal-content">
				<div class="modal-header" style="padding: 35px 50px">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4>
						<span class="glyphicon glyphicon-ok-sign"></span> Actualiza Cita
					</h4>
				</div>
				<div class="modal-body" style="padding: 20px 10px;">
					<form id="id_form_actualiza" accept-charset="UTF-8"
						action="registraActualizaCrudCita" class="form-horizontal"
						method="post">
						<div class="panel-group" id="steps">
							<!-- Step 1 -->
							<div class="panel panel-default">
								<div class="panel-heading">
									<h3 class="panel-title" style="text-align: center">
										<a data-toggle="collapse" data-parent="#steps" href="#stepOne">Datos
											de la cita</a>
									</h3>
								</div>
								<div id="stepOne" class="panel-collapse collapse in">
									<div class="panel-body">
										<div class="form-group">
											<label class="col-lg-3 control-label" for="id_ID">ID</label>
											<div class="col-lg-8">
												<input class="form-control" id="id_ID" readonly="readonly"
													name="id" type="text" maxlength="8" />
											</div>
										</div>
										<div class="form-group">
											<label class="col-lg-3 control-label" for="id_nombre">Fecha</label>
											<div class="col-lg-3">
												<input class="form-control" id="id_act_nombre" name="fecha"
													type="datetime-local" />
											</div>
										</div>

										<div class="form-group">
											<label class="col-lg-3 control-label" for="id_act_paciente">Paciente</label>
											<div class="col-lg-8">
												<select id="id_act_paciente" name="paciente"
													class='form-control'>
													<option value=" ">[Seleccione]</option>
												</select>
											</div>
										</div>
										<div class="form-group">
											<label class="col-lg-3 control-label"
												for="id_act_especialidad">Especialidad</label>
											<div class="col-lg-3">
												<select id="id_act_especialidad" name="especialidad"
													class='form-control'>
													<option value=" ">[Seleccione]</option>
												</select>
											</div>
										</div>
										<div class="form-group">
											<label class="col-lg-3 control-label" for="id_act_doctor">Doctor</label>
											<div class="col-lg-3">
												<select id="id_act_doctor" name="doctor"
													class='form-control'>
													<option value=" ">[Seleccione]</option>
												</select>
											</div>
										</div>
										<div class="form-group">
											<div class="col-lg-9 col-lg-offset-3">
												<button type="button" class="btn btn-primary"
													id="id_btn_actualiza">ACTUALIZA</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

					</form>

				</div>
			</div>
		</div>

	</div>

	</div>


	<script type="text/javascript">
			
<!--dropdown paciente-->
			$.getJSON("listaPaciente", {}, function(data) {
				$.each(data, function(i, items) {
					$("#id_reg_paciente").append(
							"<option value="+items.idpaciente +">" + items.nombre
									+ "</option>");
					$("#id_act_paciente").append(
							"<option value="+items.idpaciente +">" + items.nombre
									+ "</option>");
				});
			});
			
<!--dropdown especialidad-->
				$.getJSON("listaEspecialidad", {}, function(data) {
					$.each(data, function(i, itemes) {
						$("#id_reg_especialidad").append(
								"<option value="+itemes.idEspecialidad +">" + itemes.nomEspecialidad
										+ "</option>");
						$("#id_act_especialidad").append(
								"<option value="+itemes.idEspecialidad +">" + itemes.nomEspecialidad
										+ "</option>");
					});
				});
				
<!--Borrar Options-->
function borrarOptions(){
	var x = document.getElementById("id_reg_doctor");
	var y = document.getElementById("id_act_doctor");
	$.each(x,function(i,options){
		options.remove(i);
	})
	$.each(y,function(a,optiones){
		optiones.remove(a);
	})
}

<!--dropdown doctor-->
		$(document).ready(function(){
			$("#id_reg_especialidad").change(function(){
				borrarOptions();
				$("#id_reg_especialidad option:selected").each(function(){
					idEspecialidad = $(this).val();
					$.post("/listaDoctorPorEspecialidad",{ especialidad: idEspecialidad
						}, function(data){
							var obj = data;
							recibe(obj);
							console.log("objeto en document"+obj);
							console.log("Estoy en js function data");
						});
				});		
			})
			
			$("#id_act_especialidad").change(function(){
				borrarOptions();
				$("#id_act_especialidad option:selected").each(function(){
					idEspecialidad = $(this).val();
					$.post("/listaDoctorPorEspecialidad",{ especialidad: idEspecialidad
						}, function(data){
							var obj = data;
							recibe(obj);
							console.log("objeto en document"+obj);
							console.log("Estoy en js function data");
						});
				});		
			})
		});
		
		
		function recibe(obj){
			$("#id_reg_doctor").one("click",function(){
			console.log("recibi en registrar: "+obj);
			$.each(obj, function(i, item) {
				console.log("hola forech reg");
				$("#id_reg_doctor").append(
						"<option value="+item.iddoctor +">" + item.nombre
								+ "</option>");
			});
			});
			
			$("#id_act_doctor").one("click",function(){
				console.log("recibi en actualizar: "+obj);
				$.each(obj, function(i, iteme) {
					console.log("hola forech act");
					$("#id_act_doctor").append(
							"<option value="+iteme.iddoctor +">" + iteme.nombre
									+ "</option>");
				});
				});
		}
				
<!--filtro-->
		$("#id_btn_filtrar").click(function() {
			var fil = $("#id_txt_filtro").val();
			$.getJSON("consultaCrudCita", {
				"filtro" : fil
			}, function(lista) {
				agregarGrilla(lista);
			});
		});
		function agregarGrilla(lista) {
			$('#id_table').DataTable().clear();
			$('#id_table').DataTable().destroy();
			$('#id_table')
					.DataTable(
							{
								data : lista,
								searching : false,
								ordering : true,
								processing : true,
								pageLength : 5,
								lengthChange : false,
								columns : [
										{
											data : "id"
										},
										{
											data : "fecha"
										},
										{
											data : "paciente.nombre"
										},
										{
											data : "doctor.nombre"
										},
										{
											data : function(row, type, val,
													meta) {
												var salida = '<button type="button" style="width: 90px" class="btn btn-warning btn-sm" onclick="editar(\''
														+ row.id
														+ '\',\''
														+ row.fecha
														+ '\',\''
														+ row.paciente.idpaciente
														+ '\',\''
														+ row.doctor.iddoctor
														+ '\')">Editar</button>';
												return salida;
											},
											className : 'text-center'
										},
										{
											data : function(row, type, val,
													meta) {
												var salida = '<button type="button" style="width: 90px" class="btn btn-danger btn-sm" onclick="eliminar(\''
														+ row.id
														+ '\')">Eliminar</button>';
												return salida;
											},
											className : 'text-center'
										}, ]
							});
		}
		function eliminar(id) {
			mostrarMensajeConfirmacion(MSG_ELIMINAR, accionEliminar, null, id);
		}
		function accionEliminar(id) {
			$.ajax({
				type : "POST",
				url : "eliminaCrudCita",
				data : {
					"id" : id
				},
				success : function(data) {
					agregarGrilla(data.lista);
					mostrarMensaje(data.mensaje);
				},
				error : function() {
					mostrarMensaje(MSG_ERROR);
				}
			});
		}
		function editar(id, fecha, idpaciente, iddoctor) {
			$('#id_ID').val(id);
			$('#id_act_nombre').val(fecha);
			$('#id_act_paciente').val(idpaciente);
			$('#id_act_doctor').val(iddoctor);
			$('#id_div_modal_actualiza').modal("show");
		}
		function limpiarFormulario() {
			$('#id_reg_paciente').val('');
			$('#id_reg_doctor').val(' ');
		}
		$("#id_btn_registra").click(function() {
			var validator = $('#id_form_registra').data('bootstrapValidator');
			validator.validate();

			if (validator.isValid()) {
				console.log("entre");
				$.ajax({
					type : "POST",
					url : "registraCrudCita",
					data : $('#id_form_registra').serialize(),
					success : function(data) {
						agregarGrilla(data.lista);
						$('#id_div_modal_registra').modal("hide");
						mostrarMensaje(data.mensaje);
						limpiarFormulario();
						validator.resetForm();
					},
					error : function() {
						mostrarMensaje(MSG_ERROR);
					}
				});

			}
		});
		$("#id_btn_actualiza").click(function() {
			var validator = $('#id_form_actualiza').data('bootstrapValidator');
			validator.validate();
			if (validator.isValid()) {
				$.ajax({
					type : "POST",
					url : "actualizaCrudCita",
					data : $('#id_form_actualiza').serialize(),
					success : function(data) {
						agregarGrilla(data.lista);
						$('#id_div_modal_actualiza').modal("hide");
						mostrarMensaje(data.mensaje);
					},
					error : function() {
						mostrarMensaje(MSG_ERROR);
					}
				});
			}
		});
	</script>

	<script type="text/javascript">
		$('#id_form_registra').bootstrapValidator({
			message : 'This value is not valid',
			feedbackIcons : {
				valid : 'glyphicon glyphicon-ok',
				invalid : 'glyphicon glyphicon-remove',
				validating : 'glyphicon glyphicon-refresh'
			},
			fields : {
				"fecha" : {
					selector : '#id_reg_nombre',
					validators : {
						notEmpty : {
							message : 'La fecha es un campo obligatorio'
						},
					}
				},
				"paciente.idpaciente" : {
					selector : '#id_reg_paciente',
					validators : {
						notEmpty : {
							message : 'El paciente es un campo obligatorio'
						},
					}
				},
				"doctor.iddoctor" : {
					selector : '#id_reg_doctor',
					validators : {
						notEmpty : {
							message : 'El doctor un campo obligatorio'
						},
					}
				},

			}
		});
	</script>

	<script type="text/javascript">
		$('#id_form_actualiza').bootstrapValidator({
			message : 'This value is not valid',
			feedbackIcons : {
				valid : 'glyphicon glyphicon-ok',
				invalid : 'glyphicon glyphicon-remove',
				validating : 'glyphicon glyphicon-refresh'
			},
			fields : {
				"fecha" : {
					selector : '#id_act_nombre',
					validators : {
						notEmpty : {
							message : 'El nombre es un campo obligatorio'
						},

					}
				},
				"paciente.idpaciente" : {
					selector : '#id_act_paciente',
					validators : {
						notEmpty : {
							message : 'La paciente es un campo obligatorio'
						},
					}
				},
				"doctor.iddoctor" : {
					selector : '#id_act_doctor',
					validators : {
						notEmpty : {
							message : 'El doctor un campo obligatorio'
						},
					}
				},

			}
		});
	</script>

</body>
</html>
