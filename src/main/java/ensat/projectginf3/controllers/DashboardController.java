package ensat.projectginf3.controllers;


import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;



import ensat.projectginf3.helpers.AuthenticationSystem;






@Controller
@RequestMapping("/dashboard")
public class DashboardController {
	

	@GetMapping("/")
	public String showLoginPage() {
		
		if(!AuthenticationSystem.isLogged())
			return "/auth/login";
		else return "/dashboard/index";
	}


  
    
}