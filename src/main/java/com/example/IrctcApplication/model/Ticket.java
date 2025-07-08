package com.example.IrctcApplication.model;

import com.example.IrctcApplication.model.Train;
import jakarta.persistence.*;

@Entity
@Table(name = "tickets")
public class Ticket {
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private int seatNumber;

    @ManyToOne
    @JoinColumn(name = "train_id")
    private Train train;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    public Ticket() {}
    public Ticket(int seatNumber, Train train, User user) {
        this.seatNumber = seatNumber;
        this.train = train;
        this.user = user;
    }

    // Getters and setters
    public Long getId() { return id; }
    public int getSeatNumber() { return seatNumber; }
    public void setSeatNumber(int seatNumber) { this.seatNumber = seatNumber; }
    public Train getTrain() { return train; }
    public void setTrain(Train train) { this.train = train; }
    public User getUser() { return user; }
    public void setUser(User user) { this.user = user; }
}


