package group3.Medlink.review;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ReviewService {

    @Autowired
    private ReviewRepository reviewRepository;

    public List<Review> getAllReviews() {
        return reviewRepository.findAll();
    }

    public Review getReviewById(int review_id) {
        return reviewRepository.findById(review_id).orElse(null);
    }

    public void addReview(Review review) {
        reviewRepository.save(review);
    }

    public void deleteReview(int review_id) {
        reviewRepository.deleteById(review_id);
    }

    public Review getReviewByProvider(int provider_id) {
        return reviewRepository.findById(provider_id).orElse(null);
    }

}
