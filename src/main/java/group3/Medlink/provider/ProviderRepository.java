package group3.Medlink.provider;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface ProviderRepository extends JpaRepository<Provider,Integer>{
    @Query(value = "select * from patients where email = ?1", nativeQuery = true)
    Optional<Provider> findByEmail(String email);

}
