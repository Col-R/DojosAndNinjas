package com.cole.dojosandninjas.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.cole.dojosandninjas.models.Dojo;
import com.cole.dojosandninjas.services.DojoService;

@Controller
public class DojoController {
	@Autowired
	private DojoService dService;
	
	@GetMapping("/dojos/new")
	public String add(@ModelAttribute("dojo")Dojo dojo) {
		return "dojoadd.jsp";
	}
}
