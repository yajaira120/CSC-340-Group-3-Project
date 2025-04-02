package group3.Medlink.sysadmin;
import jakarta.persistence.*;
import java.time.LocalDateTime;

@Entity
@Table(name = "users")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long userId;

    private String firstName;
    private String lastName;
    private String role;
    private String email;

    @Column(name = "account_status")
    private String accountStatus; // e.g., Active, Suspended, Banned

    private LocalDateTime createdAt;
    private LocalDateTime updatedAt;
}
