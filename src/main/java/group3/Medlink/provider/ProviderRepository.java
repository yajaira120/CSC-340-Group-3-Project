package group3.Medlink.provider;

import group3.Medlink.patient.Patient;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public interface ProviderRepository extends JpaRepository<Provider,Integer>{

}
