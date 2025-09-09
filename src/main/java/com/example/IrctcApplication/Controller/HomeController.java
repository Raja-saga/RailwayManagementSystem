package com.example.IrctcApplication.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import jakarta.servlet.http.HttpSession;   // for HttpSession

@Controller
public class HomeController {
    @GetMapping("/")
    public String home(HttpSession session) {
        if (session.getAttribute("user") != null) {
            return "redirect:/train/search";
        }
        return "login"; // default page
    }
}
