package com.example.spring.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.spring.model.Doctor;
import com.example.spring.model.Especialidad;
import com.example.spring.repository.DoctorRepository;
import com.example.spring.repository.PacienteRepository;

@Transactional
@Service
public class DoctorServiceImpl implements DoctorService {
	@Autowired
	private DoctorRepository doctorRepository;
	
	@Override
	public List<Doctor> listaDoctor() {
		return doctorRepository.findAll();
	}
	
	@Override
	public List<Doctor> listaDoctorPorEspecialidad(Especialidad especialidad) {
		System.out.println("DOCTOR SERVICEIMP"+doctorRepository.listaDoctorPorEspecialidad(especialidad));
		return doctorRepository.listaDoctorPorEspecialidad(especialidad);
	}
	

}
