package group3.Medlink.provider;

import group3.Medlink.patient.Patient;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

public interface ProviderRepository extends JpaRepository<Provider,Integer>{

    @Query(value = "select + from patients p where p.name like %?1%", nativeQuery = true)
    List<Patient> getPatientByName(String name);

    @Query(value = "select * from patients p where p.provider_id = ?1", nativeQuery = true)
    List<Patient> getPatientsByProviderId(int provider_id);

}
