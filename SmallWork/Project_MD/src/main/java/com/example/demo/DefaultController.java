package com.example.demo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class DefaultController {
	@GetMapping(value = {""}, produces = {"text/html"})
	public String Index(HttpServletRequest request)
	{
		return "index.html";
	}
}
