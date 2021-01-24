package org.rygn.aws_docker_springboot.helloworld.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloworldController {

	@GetMapping("/hello")
	public String helloWorld(){
		
		return "Hello with AWS Docker Springboot !";
	}		
}
