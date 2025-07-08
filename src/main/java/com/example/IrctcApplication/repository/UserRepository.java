package com.example.IrctcApplication.repository;

import com.example.IrctcApplication.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByEmail(String email); // custom finder for login
}
