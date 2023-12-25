package bdbt_project.Filharmonia.repositories;

import bdbt_project.Filharmonia.models.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByEmail(String email);
}
