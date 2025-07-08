package com.example.IrctcApplication.repository;



import com.example.IrctcApplication.model.Ticket;
import com.example.IrctcApplication.model.User;
import com.example.IrctcApplication.model.Train;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface TicketRepository extends JpaRepository<Ticket, Long> {
    List<Ticket> findByUser(User user); // fetch all tickets of a user
    List<Ticket> findByTrain(Train train); // fetch all booked tickets for a train
}
