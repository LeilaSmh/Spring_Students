package ensat.projectginf3.services;

import java.util.List;

import ensat.projectginf3.entities.eleve;
import ensat.projectginf3.exception.ResourceNotFoundException;

public interface eleveService {

    public List < eleve > getEleves();

    public void saveEleve(eleve LaFiliere);

    public eleve getEleve(int theId) throws ResourceNotFoundException;

    public void deleteEleve(int theId) throws ResourceNotFoundException;
    
}