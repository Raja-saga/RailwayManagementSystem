package com.example.IrctcApplication.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import com.example.IrctcApplication.model.User;
import com.example.IrctcApplication.Service.UserService;
import jakarta.servlet.http.HttpSession;

@Controller
public class AuthController {
    @Autowired private UserService userService;

    // Show signup form
    @GetMapping("/signup")
    public String showSignupForm(User user) {
        return "signup";
    }
    // Process signup
    @PostMapping("/signup")
    public String processSignup(User user, Model model) {
        userService.register(user);
        model.addAttribute("message", "Registration successful. Please login.");
        return "login";
    }

    // Show login form
    @GetMapping("/login")
    public String showLoginForm() {
        return "login";
    }
    // Process login
    @PostMapping("/login")
    public String processLogin(@RequestParam String email, @RequestParam String password,
                               HttpSession session, Model model) {
        User user = userService.authenticate(email, password);
        if (user != null) {
            session.setAttribute("user", user);
            return "redirect:/train/search";
        } else {
            model.addAttribute("error", "Invalid email or password");
            return "login";
        }
    }

    // Handle logout
    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/login";
    }
}
