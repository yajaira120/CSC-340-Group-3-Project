package group3.Medlink.review;

import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import group3.Medlink.appointment.AppointmentService;

import java.util.List;


@Controller
@RequestMapping("/reviews")
public class ReviewController {

    @Autowired
    private ReviewService reviewService;

    @Autowired
    private AppointmentService appointmentService;

    /**
     * Get all reviews
     * http://localhost:8080/reviews/all
     * @return list of all reviews
     */
    @GetMapping("/all")
    public ResponseEntity<List<Review>> getAllReviews() {
        return ResponseEntity.ok(reviewService.getAllReviews());
    }

    /**
     * Get all reviews by reviewId
     * http://localhost:8080/reviews/2
     * @param review_id
     * @return list of reviews by reviewId
     */
    @GetMapping("/{review_id}")
    public ResponseEntity<Review> getReviewByProvider(@PathVariable int review_id) {
        return ResponseEntity.ok(reviewService.getReviewById(review_id));
    }

    /**
     * Display review form
     */
    @GetMapping("/review-form")
    public String makeReview(){
        return "";
    }



    /**
     * Create a review
     * http://localhost:8080/reviews/2/3/ {"rating": 5, "comment": "Amazing work!"}
     * @param patient_id patientId
     * @param provider_id providerId
     * @param review review
     * @return message
     */
    @PostMapping("/create")
    public String addReview(@RequestParam int patient_id, @RequestParam int provider_id,
                            @RequestBody Review review, HttpSession session, Model model) {
        boolean hasAppointment = appointmentService.checkIfAppointmentExists(patient_id, provider_id);

        if(!hasAppointment){
            model.addAttribute("error", "You can only review providers you have had an appointment with.");
            return "redirect:/error";
        }
        reviewService.addReview(review);
        model.addAttribute("message", "Review added successfully.");
        return "review/review";
    }

    /**
     * Delete review
     * http://localhost:8080/reviews/2
     * @param review_id reviewId
     * @return message
     */
    @DeleteMapping("/delete/{review_id}")
    public ResponseEntity<String> deleteReview(@PathVariable int review_id) {
        reviewService.deleteReview(review_id);
        return ResponseEntity.ok("Review deleted.");
    }

    /**
     * Get review by providerId
     * http://localhost:8080/reviews/3/5
     * @param review_id reviewId
     * @param provider_id providerId
     * @return message
     */
    @GetMapping("/{review_id}/{provider_id}")
    public ResponseEntity<Review> getReviewByProvider(@PathVariable int review_id, @PathVariable int provider_id) {
        return ResponseEntity.ok(reviewService.getReviewById(review_id));
    }


}
