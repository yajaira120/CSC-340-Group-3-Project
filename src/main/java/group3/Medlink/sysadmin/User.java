package group3.Medlink.sysadmin;

import jakarta.persistence.*;

@Entity
@Table(name = "users")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String username;

    private String email;

    private String role; // e.g., "Customer", "Provider", etc.

    private String accountStatus; // e.g., "Active", "Banned", "Suspended"

    // Default constructor (required by JPA)
    public User() {
    }

    public User(String username, String email, String role, String accountStatus) {
        this.username = username;
        this.email = email;
        this.role = role;
        this.accountStatus = accountStatus;
    }

    // Getters and setters

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getAccountStatus() {
        return accountStatus;
    }

    public void setAccountStatus(String accountStatus) {
        this.accountStatus = accountStatus;
    }
}
