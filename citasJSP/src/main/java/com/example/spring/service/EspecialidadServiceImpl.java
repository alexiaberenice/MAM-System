package com.example.spring.service;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.spring.model.Cita;
import com.example.spring.model.Especialidad;
import com.example.spring.repository.CitaRepository;
import com.example.spring.repository.EspecialidadRepository;

@Transactional
@Service
public class EspecialidadServiceImpl implements EspecialidadService{
	
	@Autowired
	private EspecialidadRepository espRepository;


	@Override
	public List<Especialidad> listaEspecialidad() {
		// TODO Auto-generated method stub
		return espRepository.findAll();
	}
}
