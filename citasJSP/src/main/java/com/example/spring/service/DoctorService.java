package com.example.spring.service;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.example.spring.model.Doctor;
import com.example.spring.model.Especialidad;

public interface DoctorService {
	public abstract List<Doctor> listaDoctor();
	public abstract List<Doctor> listaDoctorPorEspecialidad(Especialidad especialidad);
}
