package bdbt_project.Filharmonia.repositories;

import bdbt_project.Filharmonia.models.Product;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ProductRepository extends JpaRepository<Product, Long> {
    List<Product> findByTitle(String title);
    List<Product> findByTitleContainingIgnoreCase(String title);
}

