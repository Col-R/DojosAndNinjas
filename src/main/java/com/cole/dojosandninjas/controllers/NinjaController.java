package com.cole.dojosandninjas.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cole.dojosandninjas.models.Ninja;
import com.cole.dojosandninjas.services.DojoService;
import com.cole.dojosandninjas.services.NinjaService;

@Controller
@RequestMapping("/ninjas")
public class NinjaController {
	@Autowired
	NinjaService nService;
	@Autowired
	private DojoService dService;
	
	@GetMapping("/new")
	public String create(@ModelAttribute("ninja")Ninja ninja, Model viewModel) {
		viewModel.addAttribute("dojos", this.dService.getAllDojos());
		return"/ninjas/ninjaadd.jsp";
	}
}
