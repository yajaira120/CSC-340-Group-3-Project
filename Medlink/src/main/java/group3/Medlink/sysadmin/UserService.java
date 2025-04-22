package group3.Medlink.sysadmin;

import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class UserService {
    private final UserRepository userRepo;

    public UserService(UserRepository userRepo) {
        this.userRepo = userRepo;
    }

    public List<User> getAllUsers() {
        return userRepo.findAll();
    }

    public User updateUserStatus(Long id, String status) {
        User user = userRepo.findById(id).orElseThrow();
        user.setAccountStatus(status);
        return userRepo.save(user);
    }
    public User getUserById(Long id) {
        return userRepo.findById(id)
            .orElseThrow(() -> new RuntimeException("User not found with id: " + id));
    }
    
}
