package group3.Medlink.sysadmin;

import org.springframework.web.bind.annotation.*;

import java.util.List;

import org.springframework.ui.Model;


@RestController
@RequestMapping("/api/admin/users")
public class UserController {

    private final UserService userService;

    public UserController(UserService service) {
        this.userService = service;
    }

    @GetMapping
    public List<User> getAllUsers() {
        return userService.getAllUsers();
    }

    @PutMapping("/{id}/status")
    public User updateStatus(@PathVariable Long id, @RequestParam String status) {
        return userService.updateUserStatus(id, status);
    }
    // Show form to update a specific user
@GetMapping("/update/{id}")
public String showUpdateForm(@PathVariable Long id, Model model) {
    User user = userService.getUserById(id);
    model.addAttribute("user", user);
    return "update-user-page";
}
@PostMapping("/update")
public String updateUser(@RequestParam Long id, @RequestParam String accountStatus) {
    userService.updateUserStatus(id, accountStatus);
    return "redirect:/users";
}

}
