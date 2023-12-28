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
        log.info("Ticket with ID {} has been saved.", ticket.getId());
    }

    public void deleteById(Long ticketId) {
        ticketRepository.deleteById(ticketId);
        log.info("Ticket with ID {} has been deleted.", ticketId);
    }
}

