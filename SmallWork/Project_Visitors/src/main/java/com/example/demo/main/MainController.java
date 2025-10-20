package com.example.demo.main;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
//import org.springframework.web.bind.annotation.RestController;

@Controller
public class MainController {
	static int TotalVisitor = 0;
	
	@GetMapping(value = "/")
	public String test()  {
			
		return "Visitor";
	}
	@GetMapping("/sendMessage")
	@ResponseBody
	public String VisitorCount()
	{
		return String.valueOf(TotalVisitor++);
	}
}
