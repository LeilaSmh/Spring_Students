package ensat.projectginf3.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import ensat.projectginf3.entities.filiere;


@Repository("filiereRepository")
public interface FiliereRepository extends JpaRepository<filiere, Integer> {

}