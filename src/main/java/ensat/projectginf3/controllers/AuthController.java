package ensat.projectginf3.controllers;


import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import ensat.projectginf3.entities.user;
import ensat.projectginf3.entities.authorities;
import ensat.projectginf3.services.authoritiesService;
import ensat.projectginf3.services.userService;
import ensat.projectginf3.helpers.AuthenticationSystem;
import ensat.projectginf3.helpers.PasswordEncoder;





@Controller
@RequestMapping("/auth")
public class AuthController {
	
	@Autowired
	userService _userService;
	
	@Autowired
	authoritiesService _authoritiesService;
	
	@Autowired
	PasswordEncoder _passwordEncoder;
	
	@Autowired
	AuthenticationSystem _authSystem;

	@GetMapping("/login")
	public String showLoginPage() {
		
		if(!AuthenticationSystem.isLogged())
			return "/auth/login";
		else return "redirect:/";
	}
	
	@GetMapping("/register")
	public String showRegisterPage(Model model) {
		if(AuthenticationSystem.isLogged())
			return "redirect:/";
		else {
			user user = new user();
			model.addAttribute(user);
			return "auth/register";
		}
	}
	
	@PostMapping("/registerPost")
	public String registerUser(@ModelAttribute("user") user user) {
		if( _userService.getUser(user.getUsername())) {
			return "redirect:/auth/register?error&usernameexists=yes";
		}
		user.setPassword(_passwordEncoder.encoder(user.getPassword()));
		authorities authorities = new authorities();
		authorities.setUsername(user.getUsername());
		authorities.setAuthority("ROLE_GUEST");
		_userService.saveUser(user);
		_authoritiesService.saveAuthorities(authorities);
		return "redirect:/auth/login?regsuc=yes";
	}
  
    
}