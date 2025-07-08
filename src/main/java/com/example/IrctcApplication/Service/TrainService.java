package com.example.IrctcApplication.Service;

import com.example.IrctcApplication.model.Train;
import com.example.IrctcApplication.repository.TrainRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TrainService {
    @Autowired
    private TrainRepository trainRepository;

    // Search trains between two stations
    public List<Train> searchTrains(String source, String destination) {
        return trainRepository.findBySourceAndDestination(source, destination);
    }

    // Get train by ID
    public Train getTrain(Long id) {
        return trainRepository.findById(id).orElse(null);
    }
}



