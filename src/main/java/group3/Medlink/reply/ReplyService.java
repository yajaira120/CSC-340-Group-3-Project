package group3.Medlink.reply;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ReplyService {
    @Autowired
    private ReplyRepository replyRepository;

    public List<Reply> getRepliesForReview(int review_id) {
        return replyRepository.findAll();
    }

    public void addReply(Reply reply) {
        replyRepository.save(reply);
    }
}
