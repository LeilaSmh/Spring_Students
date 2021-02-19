package ensat.projectginf3.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ensat.projectginf3.entities.filiere;
import ensat.projectginf3.repositories.FiliereRepository;
import ensat.projectginf3.exception.ResourceNotFoundException;

@Service
public class filiereServiceImpl implements filiereService {

    @Autowired
    private FiliereRepository filiereRepository;

    @Override
    @Transactional
    public List < filiere > getFilieres() {
        return filiereRepository.findAll();
    }

    @Override
    @Transactional
    public void saveFiliere(filiere LaFiliere) {
        filiereRepository.save(LaFiliere);
    }

    @Override
    @Transactional
    public filiere getFiliere(int id) throws ResourceNotFoundException {
        return filiereRepository.findById(id).orElseThrow(
            () -> new ResourceNotFoundException(id));
    }

    @Override
    @Transactional
    public void deleteFiliere(int theId) {
        filiereRepository.deleteById(theId);
    }
}