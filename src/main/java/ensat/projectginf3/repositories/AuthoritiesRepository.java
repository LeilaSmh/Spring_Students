package ensat.projectginf3.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import ensat.projectginf3.entities.authorities;


@Repository("authoritiesRepository")
public interface AuthoritiesRepository extends JpaRepository<authorities, Integer> {

}