package group3.Medlink.sysadmin;

import group3.Medlink.patient.PatientRepository;
import group3.Medlink.provider.Provider;
import group3.Medlink.provider.ProviderRepository;
import group3.Medlink.review.Review;
import group3.Medlink.review.ReviewRepository;
import group3.Medlink.sysadmin.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class SysAdminController {

    @Autowired
    private UserService userService;

    @Autowired
    private ProviderRepository providerRepository;

    @Autowired
    private PatientRepository patientRepository;

    @Autowired
    private ReviewRepository reviewRepository;

    // LOGIN FORM
    @GetMapping("/sysadmin-login")
    public String showLoginForm() {
        return "pages/sysadmin-login";
    }

    // LOGIN HANDLER
    @PostMapping("/sysadmin-login")
    public String processLogin(@RequestParam String username,
                                @RequestParam String password,
                                Model model) {
        if ("SAD".equals(username) && "UNCG".equals(password)) {
            return "redirect:/sysadmin-dashboard";
        } else {
            model.addAttribute("error", "Invalid credentials.");
            return "pages/sysadmin-login";
        }
    }

    // DASHBOARD
    @GetMapping("/sysadmin-dashboard")
    public String showDashboard(Model model) {
        model.addAttribute("users", userService.getAllUsers());

        // Stats Map
        Map<String, Long> stats = new HashMap<>();
        long providerCount = providerRepository.count();
        long patientCount = patientRepository.count();
        long reviewCount = reviewRepository.count();

        stats.put("providers", providerCount);
        stats.put("patients", patientCount);
        stats.put("comments", reviewCount); // Adjust if needed
        stats.put("reviews", reviewCount);  // Could be different later

        model.addAttribute("stats", stats);

        // Pie Chart Data: Patients vs Providers
        model.addAttribute("providerCount", providerCount);
        model.addAttribute("patientCount", patientCount);

        // Pie Chart Data: Comments per Provider
        Map<String, Long> providerCommentCounts = new HashMap<>();
        List<Review> reviews = reviewRepository.findAll();
        for (Review review : reviews) {
            Provider provider = review.getProvider();
            if (provider != null) {
                String name = provider.getName(); // Adjust if provider name is elsewhere
                providerCommentCounts.put(name, providerCommentCounts.getOrDefault(name, 0L) + 1);
            }
        }

        model.addAttribute("providerCommentCounts", providerCommentCounts);

        return "pages/sysadmin-dashboard";
    }

    // BAN/UNBAN TOGGLE
    @PostMapping("/users/{id}/status")
    public String updateUserStatus(@PathVariable Long id, @RequestParam String status) {
        userService.updateUserStatus(id, status);
        return "redirect:/sysadmin-dashboard";
    }

    // DELETE USER
    @PostMapping("/users/{id}/delete")
    public String deleteUser(@PathVariable Long id) {
        userService.deleteUser(id);
        return "redirect:/sysadmin-dashboard";
    }
}