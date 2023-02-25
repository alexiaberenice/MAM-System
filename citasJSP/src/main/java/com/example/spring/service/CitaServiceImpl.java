package com.example.spring.service;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.spring.model.Cita;
import com.example.spring.repository.CitaRepository;

@Transactional
@Service
public class CitaServiceImpl implements CitaService{
	
	@Autowired
	private CitaRepository citaRepository;

	@Override
	public Cita insertaActualizaCita(Cita obj) {
		return citaRepository.save(obj);
	}

	@Override
	public void eliminaCita(int id) {
		citaRepository.deleteById(id);
	}

	@Override
	public List<Cita> listaCita() {
		// TODO Auto-generated method stub
		return citaRepository.findAll();
	}

//	@Override
//	public List<Cita> listaCitaPorFechaLike(int filtro) {
//		// TODO Auto-generated method stub
//		return citaRepository.listaPorFecha(filtro);
//	}

	@Override
	public Optional<Cita> obtienePorId(int id) {
		// TODO Auto-generated method stub
		return citaRepository.findById(id);
	}
}
