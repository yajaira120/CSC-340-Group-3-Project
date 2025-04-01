package group3.Medlink.appointment;

import group3.Medlink.patient.Patient;
import group3.Medlink.appointment.Appointment;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AppointmentRepository extends JpaRepository<Appointment,Integer>{

    @Query(value = "select + from appointments p where p.id like %?1%", nativeQuery = true)
    List<Patient> getAppointmentByPatientId(int patient_id);

    @Query(value = "select * from appointments p where p.provider_id = ?1", nativeQuery = true)
    List<Patient> getAppointmentByProviderId(int provider_id);
}

