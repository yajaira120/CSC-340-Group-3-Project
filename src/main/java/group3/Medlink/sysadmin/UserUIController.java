package group3.Medlink.sysadmin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/admin/users")
public class UserUIController {

    private final UserService userService;

    public UserUIController(UserService userService) {
        this.userService = userService;
    }

    // Route to display all users
    @GetMapping
    public String listUsers(Model model) {
        List<User> users = userService.getAllUsers();
        model.addAttribute("users", users);
        return "sysadmin/users";  // maps to src/main/resources/templates/sysadmin/users.ftlh
    }

    // Route to show the update form
    @GetMapping("/update/{id}")
    public String showUpdateForm(@PathVariable Long id, Model model) {
        User user = userService.getUserById(id);
        model.addAttribute("user", user);
        return "sysadmin/update-user";
    }

    // Route to handle the update form submission
    @PostMapping("/update")
    public String updateUserStatus(@RequestParam Long id, @RequestParam String accountStatus) {
        userService.updateUserStatus(id, accountStatus);
        return "redirect:/admin/users";
    }
}