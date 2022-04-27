package com.generation.HelloWorld.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/helloworld")

public class helloController {
	
	@GetMapping
	public String hello() {
		return "Opa mundão";
	}

	
}
