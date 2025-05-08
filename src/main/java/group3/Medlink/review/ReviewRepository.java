package group3.Medlink.review;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface ReviewRepository extends JpaRepository<Review, Integer> {
    // Returns reviews ordered by newest first
    List<Review> findAllByOrderByCreatedAtDesc();
}