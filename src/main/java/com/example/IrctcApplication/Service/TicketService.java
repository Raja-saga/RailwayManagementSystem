package com.example.IrctcApplication.Service;

import com.example.IrctcApplication.model.Ticket;
import com.example.IrctcApplication.model.Train;
import com.example.IrctcApplication.model.User;
import com.example.IrctcApplication.repository.TicketRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class TicketService {
    @Autowired
    private TicketRepository ticketRepository;

    // Book a seat
    public Ticket bookTicket(Train train, User user, int seatNumber) {
        Ticket ticket = new Ticket(seatNumber, train, user);
        return ticketRepository.save(ticket);
    }

    // Cancel booking by ticket ID
    public void cancelTicket(Long ticketId) {
        ticketRepository.deleteById(ticketId);
    }

    // Get all tickets booked by a user
    public List<Ticket> getTicketsByUser(User user) {
        return ticketRepository.findByUser(user);
    }

    // Get already booked seats for a train
    public List<Integer> getBookedSeats(Train train) {
        return ticketRepository.findByTrain(train)
                .stream()
                .map(Ticket::getSeatNumber)
                .collect(Collectors.toList());
    }
}
