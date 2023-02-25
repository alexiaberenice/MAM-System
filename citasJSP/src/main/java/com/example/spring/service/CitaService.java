package com.example.spring.service;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Component;

import com.example.spring.model.Cita;


public interface CitaService {
	
//	public abstract Cita insertaActualizaCita(Cita cit);
//	public abstract void eliminaModalidad(int id);
//	public abstract List<Cita> listarTodos();
//	public abstract List<Cita> listaCitaPorFechaLike(LocalDateTime filtro);
//	public abstract Optional<Cita> buscaPorId(int id);
	
	public abstract List<Cita> listaCita();
	public abstract Cita insertaActualizaCita(Cita obj);
	public abstract Optional<Cita> obtienePorId(int id);
	public abstract void eliminaCita(int id);

	
}
