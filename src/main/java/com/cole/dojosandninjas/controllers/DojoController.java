package com.cole.dojosandninjas.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.cole.dojosandninjas.models.Dojo;
import com.cole.dojosandninjas.services.DojoService;

@Controller
public class DojoController {
	@Autowired
	private DojoService dService;
	
	@GetMapping("/")
	public String index() {
		return "redirect:/dojos/new";
	}
	// CREATE
	@GetMapping("/dojos/new")
	public String add(@ModelAttribute("dojo")Dojo dojo) {
		return "dojoadd.jsp";
	}
	@PostMapping("/dojos/new")
	public String addDojo(@Valid @ModelAttribute("dojo")Dojo dojo, BindingResult result) {
		if(result.hasErrors()) {
			return "dojoadd.jsp";
		}
		Dojo oneDojo = this.dService.createAlbum(dojo);
		return "redirect:/dojos/" + oneDojo.getId();
	}
	
	//SHOW
	@GetMapping("/dojos/{id}")
	public String show(@PathVariable("id")Long id, Model viewModel) {
		viewModel.addAttribute("dojoDetails", this.dService.getOneDojo(id));
		return "dojoshow.jsp";
	}
}
