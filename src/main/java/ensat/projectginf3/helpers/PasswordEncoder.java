package ensat.projectginf3.helpers;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class PasswordEncoder {
	
	public String encoder(String Password) {
		String pwd = new BCryptPasswordEncoder().encode(Password);
		return "{bcrypt}"+pwd;
	}
}
