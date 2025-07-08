package com.example.IrctcApplication.repository;

import com.example.IrctcApplication.model.Train;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface TrainRepository extends JpaRepository<Train, Long> {
    List<Train> findBySourceAndDestination(String source, String destination); // search train by source & destination
}

