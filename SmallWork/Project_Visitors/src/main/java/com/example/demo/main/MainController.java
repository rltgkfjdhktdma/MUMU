package com.example.demo.main;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class MainController {
	@GetMapping(value = "/")
	public String test()  {
			
		return "Visitor";
	}
}
