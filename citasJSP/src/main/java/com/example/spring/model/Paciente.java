package com.example.spring.model;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnore;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "paciente")
public class Paciente {
    @Id
    @Setter
    @Getter
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int idpaciente;
    @Setter
    @Getter
    private String nombre;
    @Setter
    @Getter
    private String apellidos;
    @Setter
    @Getter
    private String correo;
    @Setter
    @Getter
    private String telPaciente;
    
    @JsonIgnore
    @OneToMany(mappedBy = "paciente")
    private List<Cita> citas;

	public int getIdpaciente() {
		return idpaciente;
	}

	public void setIdpaciente(int idpaciente) {
		this.idpaciente = idpaciente;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellidos() {
		return apellidos;
	}

	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}

	public String getCorreo() {
		return correo;
	}

	public void setCorreo(String correo) {
		this.correo = correo;
	}

	public String getTelPaciente() {
		return telPaciente;
	}

	public void setTelPaciente(String telPaciente) {
		this.telPaciente = telPaciente;
	}

	public List<Cita> getCitas() {
		return citas;
	}

	public void setCitas(List<Cita> citas) {
		this.citas = citas;
	}
    
    
}
