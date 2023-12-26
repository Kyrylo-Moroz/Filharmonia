package bdbt_project.Filharmonia.controllers;

import bdbt_project.Filharmonia.models.Product;
import bdbt_project.Filharmonia.models.Ticket;
import bdbt_project.Filharmonia.models.User;
import bdbt_project.Filharmonia.services.ProductService;
import bdbt_project.Filharmonia.services.TicketService;
import bdbt_project.Filharmonia.services.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import java.security.Principal;

@Controller
@RequiredArgsConstructor
public class TicketController {

    private final TicketService ticketService;
    private final ProductService productService;
    private final UserService userService;

    @PostMapping("/purchase-ticket")
    public String purchaseTicket(@RequestParam Long productId,
                                 @RequestParam String ticketType,
                                 Principal principal,
                                 RedirectAttributes redirectAttributes) {
        User user = userService.getUserByPrincipal(principal);
        Product product = productService.getProductById(productId);
        Ticket ticket = new Ticket();

        ticket.setProduct(product);
        ticket.setUser(user);

        // Встановлення ціни залежно від типу білета
        if ("VIP".equalsIgnoreCase(ticketType)) {
            ticket.setPrice(product.getVipTicketPrice());
            ticket.setType("VIP");
        } else {
            ticket.setPrice(product.getNormalTicketPrice());
            ticket.setType("NORMAL");
        }

        // Збереження білета
        ticketService.save(ticket);

        // Додавання повідомлення про успішну покупку
        redirectAttributes.addFlashAttribute("success", "Квиток успішно придбано!");

        // Перенаправлення на початкову сторінку
        return "redirect:/";
    }

}

