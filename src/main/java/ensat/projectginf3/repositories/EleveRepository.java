package ensat.projectginf3.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import ensat.projectginf3.entities.eleve;


@Repository("eleveRepository")
public interface EleveRepository extends JpaRepository<eleve, Integer> {

}