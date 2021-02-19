package ensat.projectginf3.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ensat.projectginf3.entities.eleve;
import ensat.projectginf3.exception.ResourceNotFoundException;
import ensat.projectginf3.repositories.EleveRepository;

@Service
public class eleveServiceImpl implements eleveService{
	@Autowired
    private EleveRepository eleveRepository;

    @Override
    @Transactional
    public List < eleve > getEleves() {
        return eleveRepository.findAll();
    }

    @Override
    @Transactional
    public void saveEleve(eleve eleve) {
    	eleveRepository.save(eleve);
    }

    @Override
    @Transactional
    public eleve getEleve(int id) throws ResourceNotFoundException {
        return eleveRepository.findById(id).orElseThrow(
            () -> new ResourceNotFoundException(id));
    }

    @Override
    @Transactional
    public void deleteEleve(int theId) {
    	eleveRepository.deleteById(theId);
    }
}
