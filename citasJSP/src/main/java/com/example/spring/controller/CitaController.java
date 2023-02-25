package com.example.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.example.spring.model.Cita;
import com.example.spring.service.CitaService;
import com.example.spring.service.CitaServiceImpl;

@Controller
public class CitaController {
	
	@Autowired
	private CitaService citaService;
	
	@GetMapping(value ="/list")
	public String listOfCitas(Model model) {
	      List<Cita> citasList = citaService.listaCita();
	      model.addAttribute("citasList", citasList);
	      System.out.println(citasList);
	      return "index";
	}

}
