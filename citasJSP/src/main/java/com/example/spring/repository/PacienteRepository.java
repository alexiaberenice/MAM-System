package com.example.spring.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.spring.model.Cita;
import com.example.spring.model.Paciente;

public interface PacienteRepository extends JpaRepository <Paciente,Integer>{

}
