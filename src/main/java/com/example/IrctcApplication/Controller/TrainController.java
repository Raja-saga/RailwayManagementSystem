package com.example.IrctcApplication.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import com.example.IrctcApplication.model.Train;
import com.example.IrctcApplication.Service.TrainService;
import com.example.IrctcApplication.Service.TicketService;
import jakarta.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/train")
public class TrainController {
    @Autowired private TrainService trainService;
    @Autowired private TicketService ticketService;

    // Show train search form
    @GetMapping("/search")
    public String showSearchForm() {
        return "search";
    }
    // Handle train search
    @PostMapping("/search")
    public String searchTrains(@RequestParam String source, @RequestParam String destination, Model model) {
        List<Train> trains = trainService.searchTrains(source, destination);
        model.addAttribute("trains", trains);
        return "trainList";
    }

    // View seat layout for a selected train
    @GetMapping("/{id}/seats")
    public String viewSeats(@PathVariable("id") Long trainId, Model model, HttpSession session) {
        // Require login
        if (session.getAttribute("user") == null) {
            return "redirect:/login";
        }
        Train train = trainService.getTrain(trainId);
        if (train == null) {
            model.addAttribute("error", "Train not found");
            return "search";
        }
        // Get already booked seat numbers for this train
        List<Integer> bookedSeats = ticketService.getBookedSeats(train);
        model.addAttribute("train", train);
        model.addAttribute("bookedSeats", bookedSeats);
        return "seatLayout";
    }
}

