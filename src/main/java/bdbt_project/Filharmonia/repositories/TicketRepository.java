package bdbt_project.Filharmonia.repositories;

import bdbt_project.Filharmonia.models.Ticket;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TicketRepository extends JpaRepository<Ticket, Long> {
    // Методи для взаємодії з білетами, якщо потрібно
}
