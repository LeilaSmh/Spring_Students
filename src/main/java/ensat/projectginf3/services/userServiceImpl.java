package ensat.projectginf3.services;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ensat.projectginf3.entities.eleve;
import ensat.projectginf3.entities.user;
import ensat.projectginf3.repositories.UserRepository;
import ensat.projectginf3.exception.ResourceNotFoundException;

@Service
public class userServiceImpl implements userService{

	@Autowired
	UserRepository userRepository;
	
	@Override
	@Transactional
	public void saveUser(user user) {
		userRepository.save(user);
	}
	
	@Override
    @Transactional
    public boolean getUser(String username) {
        if(userRepository.findByUsername(username).orElse(null) != null) {
        	System.out.println("this is true");
        	return true;
        }
        else {
        	System.out.println("this is not true");
        	return false;
        }
        
    }

}
