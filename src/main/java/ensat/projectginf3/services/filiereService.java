package ensat.projectginf3.services;

import java.util.List;

import ensat.projectginf3.entities.filiere;
import ensat.projectginf3.exception.ResourceNotFoundException;

public interface filiereService {

    public List < filiere > getFilieres();

    public void saveFiliere(filiere LaFiliere);

    public filiere getFiliere(int theId) throws ResourceNotFoundException;

    public void deleteFiliere(int theId) throws ResourceNotFoundException;
    
}