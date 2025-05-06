package group3.Medlink.appointment;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AppointmentRepository extends JpaRepository<Appointment,Integer>{

    @Query(value = "SELECT + FROM appointment WHERE patient_id = ?1", nativeQuery = true)
    List<Appointment> getAppointmentByPatientId(int patient_id);

    @Query(value = "SELECT * FROM appointment WHERE provider_id = ?1", nativeQuery = true)
    List<Appointment> getAppointmentByProviderId(int provider_id);

    @Query("SELECT COUNT(a) > 0 FROM Appointment a WHERE a.patient.patient_id = :patient_id AND a.provider.provider_id = :provider_id")
    boolean existsByPatientIdAndProviderId(@Param("patient_id") int patient_id, @Param("provider_id") int provider_id);
}

