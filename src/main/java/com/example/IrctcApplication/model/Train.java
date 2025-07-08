package com.example.IrctcApplication.model;

import jakarta.persistence.*;
import java.util.List;

@Entity
@Table(name = "trains")
public class Train {
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private String source;
    private String destination;
    private int totalSeats;

    @OneToMany(mappedBy = "train", cascade = CascadeType.ALL)
    private List<Ticket> tickets;

    public Train() {}
    public Train(String name, String source, String destination, int totalSeats) {
        this.name = name;
        this.source = source;
        this.destination = destination;
        this.totalSeats = totalSeats;
    }

    // Getters and setters
    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }
    public String getName() { return name; }
    public void setName(String name) { this.name = name; }
    public String getSource() { return source; }
    public void setSource(String source) { this.source = source; }
    public String getDestination() { return destination; }
    public void setDestination(String destination) { this.destination = destination; }
    public int getTotalSeats() { return totalSeats; }
    public void setTotalSeats(int totalSeats) { this.totalSeats = totalSeats; }
    public List<Ticket> getTickets() { return tickets; }
    public void setTickets(List<Ticket> tickets) { this.tickets = tickets; }
}



