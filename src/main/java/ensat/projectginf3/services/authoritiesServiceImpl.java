package ensat.projectginf3.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ensat.projectginf3.entities.authorities;
import ensat.projectginf3.repositories.AuthoritiesRepository;

@Service
public class authoritiesServiceImpl implements authoritiesService{
	@Autowired
	AuthoritiesRepository authoritiesRepository;
	
	@Override
	@Transactional
	public void saveAuthorities(authorities authorities) {
		authoritiesRepository.save(authorities);
	}
}
