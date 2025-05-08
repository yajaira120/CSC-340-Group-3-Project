package group3.Medlink.patient;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PatientRepository extends JpaRepository<Patient,Integer>{

    @Query(value = "select + from patients p where p.name like %?1%", nativeQuery = true)
    List<Patient> getPatientsByName(String name);

    @Query(value = "select * from patients p where p.provider_id = ?1", nativeQuery = true)
    List<Patient> getPatientsByProviderId(int provider_id);
  
   
}
