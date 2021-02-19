package ensat.projectginf3.repositories;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import ensat.projectginf3.entities.user;


@Repository("userRepository")
public interface UserRepository extends JpaRepository<user, Integer> {
	Optional<user> findByUsername(String username);
}