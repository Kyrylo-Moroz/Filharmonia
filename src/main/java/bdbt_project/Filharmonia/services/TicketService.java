package bdbt_project.Filharmonia.services;

import bdbt_project.Filharmonia.models.Ticket;
import bdbt_project.Filharmonia.repositories.TicketRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

@Slf4j
@Service
@RequiredArgsConstructor
public class TicketService {

    private final TicketRepository ticketRepository;

    public void save(Ticket ticket) {
        ticketRepository.save(ticket);
        log.info("Білет з ID {} було збережено.", ticket.getId());
    }

    // Можливо додаткові методи для роботи з білетами, якщо потрібно
}

