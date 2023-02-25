package com.example.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.spring.model.Doctor;
import com.example.spring.model.Paciente;
import com.example.spring.repository.PacienteRepository;

@Transactional
@Service
public class PacienteServiceImpl implements PacienteService{
	
	@Autowired
	private PacienteRepository pacienteRepository;
	
	@Override
	public List<Paciente> listaPaciente() {
		return pacienteRepository.findAll();
	}

}
