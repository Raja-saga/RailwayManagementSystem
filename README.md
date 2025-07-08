# IRCTC Train Reservation System – Spring MVC Web Application

This project is a web-based **IRCTC-style Train Ticket Booking System**, built using **Spring Boot (MVC architecture)**, **Spring Data JPA**, **JSP**, and **MySQL**. It allows users to sign up, log in, search for trains, book seats, view tickets, and cancel bookings. The system is built following clean MVC separation and leverages a relational database to persist user and train data.

---

## 📌 Features

- 🔐 **User Registration & Login**
  - Passwords hashed using BCrypt for security.
- 🚆 **Train Search**
  - Search for available trains by entering source and destination.
- 🪑 **Seat Layout & Booking**
  - Displays total seats per train.
  - Marks already booked seats.
- 🎫 **Ticket Booking**
  - Allows users to select and confirm available seat numbers.
- 🧾 **My Bookings**
  - View all tickets booked by the logged-in user.
- ❌ **Cancel Tickets**
  - Cancel a specific ticket by ID.

---

## 🛠️ Tech Stack

| Layer            | Technology                                      |
|------------------|--------------------------------------------------|
| Backend          | Java, Spring Boot (MVC), Spring Data JPA        |
| Frontend         | JSP, JSTL, HTML, Bootstrap (optional)           |
| Database         | MySQL                                           |
| ORM              | Hibernate (via Spring Data JPA)                 |
| Build Tool       | Maven                                           |
| Authentication   | BCrypt (Spring Security Crypto)                 |
| Application Type | WAR (runs on embedded or external Tomcat)       |

---
# Step 1: Build the project
mvn clean install

# Step 2: Run using embedded Tomcat
mvn spring-boot:run

## 📁 Project Structure

IrctcApplication/
│
├── src/
│ ├── main/
│ │ ├── java/com/example/irctc/
│ │ │ ├── controller/ # Web controllers (Login, Train, Ticket)
│ │ │ ├── model/ # Entity classes (User, Train, Ticket)
│ │ │ ├── repository/ # JPA Repositories (UserRepository, etc.)
│ │ │ ├── service/ # Service classes (UserService, etc.)
│ │ │ └── IrctcApplication.java
│ │ ├── resources/
│ │ │ └── application.properties
│ │ └── webapp/WEB-INF/jsp/ # JSP files (login.jsp, search.jsp, etc.)
│
├── pom.xml # Maven project configuration

