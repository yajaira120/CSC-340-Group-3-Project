package group3.Medlink.reply;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface ReplyRepository extends JpaRepository<Reply,Integer> {
}
