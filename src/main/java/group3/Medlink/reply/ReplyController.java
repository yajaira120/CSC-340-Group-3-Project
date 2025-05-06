package group3.Medlink.reply;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/replies")
public class ReplyController {


    @Autowired
    private ReplyService replyService;

    @GetMapping("/review/{review_id}")
    public ResponseEntity<List<Reply>> getReplies(@PathVariable int review_id) {
        return ResponseEntity.ok(replyService.getRepliesForReview(review_id));
    }

    @PostMapping("/create")
    public ResponseEntity<String> addReply(@RequestBody Reply reply) {
        replyService.addReply(reply);
        return ResponseEntity.ok("Reply added successfully.");
    }

}
