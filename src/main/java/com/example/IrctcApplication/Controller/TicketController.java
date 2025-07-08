package com.example.IrctcApplication.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import com.example.IrctcApplication.model.User;
import com.example.IrctcApplication.model.Train;
import com.example.IrctcApplication.model.Ticket;
import com.example.IrctcApplication.Service.TicketService;
import com.example.IrctcApplication.Service.TrainService;
import jakarta.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/ticket")
public class TicketController {
    @Autowired private TicketService ticketService;
    @Autowired private TrainService trainService;

    // Book a ticket (seat) on a train
    @PostMapping("/book")
    public String bookTicket(@RequestParam Long trainId, @RequestParam int seatNumber,
                             HttpSession session, Model model) {
        User user = (User) session.getAttribute("user");
        if (user == null) {
            return "redirect:/login";
        }
        Train train = trainService.getTrain(trainId);
        ticketService.bookTicket(train, user, seatNumber);
        return "redirect:/ticket/my";
    }

    // View tickets booked by the current user
    @GetMapping("/my")
    public String viewMyTickets(HttpSession session, Model model) {
        User user = (User) session.getAttribute("user");
        if (user == null) {
            return "redirect:/login";
        }
        List<Ticket> tickets = ticketService.getTicketsByUser(user);
        model.addAttribute("tickets", tickets);
        return "myTickets";
    }

    // Cancel a ticket by ticket ID
    @GetMapping("/cancel")
    public String cancelTicket(@RequestParam Long id, HttpSession session) {
        User user = (User) session.getAttribute("user");
        if (user == null) {
            return "redirect:/login";
        }
        // (Optional: verify that ticket belongs to this user)
        ticketService.cancelTicket(id);
        return "redirect:/ticket/my";
    }
}
