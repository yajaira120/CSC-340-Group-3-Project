package group3.Medlink.review;

import group3.Medlink.appointment.AppointmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/reviews")
public class ReviewController {

    @Autowired
    private ReviewService reviewService;

    @Autowired
    private AppointmentService appointmentService;

    // View all reviews in the moderation page for SysAdmin
    @GetMapping("/view")
    public String viewReviews(Model model) {
        List<Review> reviews = reviewService.getAllReviews();
        model.addAttribute("reviews", reviews);
        return "review-moderation"; // Matches templates/review-moderation.ftlh
    }

    // Handle sysadmin comment submission
    @PostMapping("/comment/{review_id}")
    public String addAdminComment(@PathVariable int review_id,
                                  @RequestParam("comment") String comment,
                                  Model model) {
        Review review = reviewService.getReviewById(review_id);

        if (review != null) {
            review.setSysadminComment(comment); // make sure Review.java has this setter
            reviewService.addReview(review);
            model.addAttribute("message", "Admin comment added successfully.");
        } else {
            model.addAttribute("error", "Review not found.");
        }

        return "redirect:/reviews/view";
    }

    // API endpoint: get all reviews (JSON)
    @GetMapping("/all")
    public ResponseEntity<List<Review>> getAllReviewsApi() {
        return ResponseEntity.ok(reviewService.getAllReviews());
    }

    // API endpoint: get review by ID (JSON)
    @GetMapping("/{review_id}")
    public ResponseEntity<Review> getReviewById(@PathVariable int review_id) {
        return ResponseEntity.ok(reviewService.getReviewById(review_id));
    }

    // API endpoint: create a new review
    @PostMapping("/create")
    public ResponseEntity<String> addReview(@RequestParam int patient_id,
                                            @RequestParam int provider_id,
                                            @RequestBody Review review) {
        boolean hasAppointment = appointmentService.checkIfAppointmentExists(patient_id, provider_id);

        if (!hasAppointment) {
            return ResponseEntity.status(403).body("You can only review providers you have had an appointment with.");
        }

        reviewService.addReview(review);
        return ResponseEntity.ok("Review added successfully.");
    }

    // API endpoint: delete a review by ID
    @DeleteMapping("/delete/{review_id}")
    public ResponseEntity<String> deleteReview(@PathVariable int review_id) {
        reviewService.deleteReview(review_id);
        return ResponseEntity.ok("Review deleted.");
    }

    // API endpoint: get review by review ID and provider ID (if needed)
    @GetMapping("/{review_id}/{provider_id}")
    public ResponseEntity<Review> getReviewByProvider(@PathVariable int review_id,
                                                      @PathVariable int provider_id) {
        return ResponseEntity.ok(reviewService.getReviewById(review_id));
    }
}