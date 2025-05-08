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

    private String role; // "provider" or "patient"

    @Column(name = "account_status")
    private String accountStatus; // "active", "banned", etc.

    // Constructors
    public User() {
    }

    public User(Long id, String username, String email, String role, String accountStatus) {
        this.id = id;
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