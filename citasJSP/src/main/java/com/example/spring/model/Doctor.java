package com.example.spring.model;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import jakarta.persistence.*;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "doctor")
public class Doctor {
        @Id
        @GeneratedValue(strategy = GenerationType.IDENTITY)
        @Column(unique = true, nullable = false)
        @Setter
        @Getter
        private int iddoctor;

        @Column(nullable = false)
        @Setter
        @Getter
        private String nombre;

        @Column(nullable = false)
        @Setter
        @Getter
        private String apellidos;

        @JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
    	@ManyToOne(fetch = FetchType.LAZY)
        @JoinColumn(name ="idEspecialidad")
        private Especialidad especialidad;
        
        @JsonIgnore
        @OneToMany(mappedBy = "doctor")
        private List<Cita> citas;
        
        //Constructores

		public Doctor(int iddoctor, String nombre, String apellidos, Especialidad especialidad, List<Cita> citas) {
			super();
			this.iddoctor = iddoctor;
			this.nombre = nombre;
			this.apellidos = apellidos;
			this.especialidad = especialidad;
			this.citas = citas;
		}
		
		
		public Doctor() {
			super();
		}


		public int getIddoctor() {
			return iddoctor;
		}

		public void setIddoctor(int iddoctor) {
			this.iddoctor = iddoctor;
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

		public Especialidad getEspecialidad() {
			return especialidad;
		}

		public void setEspecialidad(Especialidad especialidad) {
			this.especialidad = especialidad;
		}

		public List<Cita> getCitas() {
			return citas;
		}

		public void setCitas(List<Cita> citas) {
			this.citas = citas;
		}
        
        
}
