package group3.Medlink.sysadmin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/users")
public class UserController {

    @Autowired
    private UserService userService;

    // GET /users - Display the list of users in the HTML view
    @GetMapping
    public String listUsers(Model model) {
        List<User> users = userService.getAllUsers();
        model.addAttribute("users", users);
        return "sysadmin/user-list"; // This must match templates/sysadmin/user-list.ftlh
    }

    // PUT /users/{id}/status - Update user account status via API
    @PutMapping("/{id}/status")
    @ResponseBody
    public User updateUserStatus(@PathVariable Long id, @RequestBody String status) {
        return userService.updateUserStatus(id, status);
    }

    // DELETE /users/{id} - Delete a user via API
    @DeleteMapping("/{id}")
    @ResponseBody
    public void deleteUser(@PathVariable Long id) {
        userService.deleteUser(id);
    }
}