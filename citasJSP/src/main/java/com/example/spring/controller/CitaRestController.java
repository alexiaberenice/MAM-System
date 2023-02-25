package com.example.spring.controller;

import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.example.spring.model.Cita;
import com.example.spring.model.Doctor;
import com.example.spring.model.Especialidad;
import com.example.spring.model.Paciente;
import com.example.spring.service.CitaService;
import com.example.spring.service.DoctorService;
import com.example.spring.service.EspecialidadService;
import com.example.spring.service.PacienteService;


@RestController
public class CitaRestController {
	
	@Autowired
	private DoctorService doctorService;
	
	@Autowired
	private PacienteService pacienteService;
	
	@Autowired
	private CitaService citaService;
	
	@Autowired
	private EspecialidadService especialidadService;
	
	@RequestMapping("/listaDoctor")
	public List<Doctor> listaDoctor(){
		List<Doctor> lista = doctorService.listaDoctor();
		System.out.println(lista);
		return lista;
	}
	
	@RequestMapping("/listaPaciente")
	public List<Paciente> listaPaciente(){
		List<Paciente> lista = pacienteService.listaPaciente();
		return lista;
	}
	
	@RequestMapping("/listaEspecialidad")
	public List<Especialidad> listaEspecialidad(){
		List<Especialidad> lista = especialidadService.listaEspecialidad();
		return lista;
	}
	
	@RequestMapping("/listaCita")
	public List<Cita> listaCita(){
		List<Cita> lista = citaService.listaCita();
		return lista;
	}

	
	@RequestMapping("/registraCrudCita")
	public Map<String , Object> inserta(Cita obj){
		Map<String , Object>  salida = new HashMap<String , Object>();
		try {
			Cita objResultado =  citaService.insertaActualizaCita(obj);
			if(objResultado == null) {
				salida.put("mensaje", "Error en el registro");
			}else {
				List<Cita> lista = citaService.listaCita();
				salida.put("lista", lista);
				salida.put("mensaje", "Registro exitoso");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return salida;
	}
	
	
	@RequestMapping("/actualizaCrudCita")
	public Map<String , Object> actualiza(Cita obj){
		Map<String , Object>  salida = new HashMap<String , Object>();
		try {
			Cita objResultado =  citaService.insertaActualizaCita(obj);
			if(objResultado == null) {
				salida.put("mensaje", "Error en la actualización");
			}else {
				List<Cita> lista = citaService.listaCita();
				salida.put("lista", lista);
				salida.put("mensaje", "Actualización exitosa");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return salida;
	}
	
	
	@RequestMapping("/eliminaCrudCita")
	public Map<String , Object> elimina(String id){
		Map<String , Object>  salida = new HashMap<String , Object>();
		try {
			Optional<Cita> optCita = citaService.obtienePorId(Integer.parseInt(id));
			if (optCita.isEmpty()) {
				salida.put("mensaje", "No existe id " + id);
			}else {
				citaService.eliminaCita(Integer.parseInt(id));
				List<Cita> lista = citaService.listaCita();
				salida.put("lista", lista);
				salida.put("mensaje", "Eliminación exitosa");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return salida;
	}
	
	@RequestMapping("/listaDoctorPorEspecialidad")	
	public List<Doctor> consulta(@RequestParam(value = "especialidad",required=false) Especialidad especialidad){
		System.out.println("parametro recibido del js "+especialidad);
		List<Doctor> lista = doctorService.listaDoctorPorEspecialidad(especialidad);
		System.out.println("lista restController "+lista);
		return lista;
	}

}
