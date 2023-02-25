package com.example.spring.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.example.spring.model.Doctor;
import com.example.spring.model.Especialidad;

public interface DoctorRepository extends JpaRepository <Doctor,Integer> {
//	@Query("select x from Cita x where x.fecha like = :var_parm")
//	public abstract List<Cita> listaPorFecha(@Param(":var_parm")int id);
	@Query("select x from Doctor x where x.especialidad = :fil")
	public abstract List<Doctor> listaDoctorPorEspecialidad(@Param("fil") Especialidad especialidad);
}
