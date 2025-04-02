package group3.Medlink.sysadmin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/users")
public class UserController {

    @Autowired
    private UserService userService;

    // GET /users - Get all users
    @GetMapping
    public List<User> getAllUsers() {
        return userService.getAllUsers();
    }

    // PUT /users/{id}/status - Update user account status
    @PutMapping("/{id}/status")
    public User updateUserStatus(@PathVariable Long id, @RequestBody String status) {
        return userService.updateUserStatus(id, status);
    }

    // DELETE /users/{id} - Delete a user
    @DeleteMapping("/{id}")
    public void deleteUser(@PathVariable Long id) {
        userService.deleteUser(id);
    }
}
