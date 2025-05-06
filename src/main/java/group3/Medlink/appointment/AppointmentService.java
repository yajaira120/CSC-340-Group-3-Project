package group3.Medlink.appointment;


import group3.Medlink.appointment.AppointmentRepository;
import group3.Medlink.patient.Patient;
import group3.Medlink.patient.PatientRepository;

import group3.Medlink.provider.Provider;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AppointmentService {

    @Autowired
    private AppointmentRepository appointmentRepository;

    private PatientRepository patientRepository;

    /**
     * Get all appointments
     */
    public List<Appointment> getAllAppointments(){
        return appointmentRepository.findAll();
    }

    /**
     * Get appointment by id
     * @param appointment_id
     */
    public Appointment getAppointmentById(int appointment_id){
        return appointmentRepository.findById(appointment_id).orElseThrow(() -> new RuntimeException("Appointment not found"));
    }

    /**
     * Book Appointment
     * @param appointment_id
     * @param patient_id
     */
    public Appointment bookAppointment(int appointment_id, int patient_id){
        Appointment appointment = appointmentRepository.findById(appointment_id).orElseThrow(() -> new RuntimeException("Appointment not found"));

        //If patient_id is not empty
        if(appointment.getPatient() != null){
            Patient patient = patientRepository.findById(patient_id).orElseThrow(()-> new RuntimeException("Patient not found"));
            appointment.setPatient(patient);
        }

        appointment.setStatus("Booked");

        return appointmentRepository.save(appointment);

    }

    /**
     * Update appointment
     * @param appointment_id updatedAppointment
     */
    public Appointment updateAppointment(int appointment_id, Appointment updatedAppointment){
        Appointment exist = getAppointmentById(appointment_id);
        exist.setAppointment_date(updatedAppointment.getAppointment_date());
        exist.setAppointment_time(updatedAppointment.getAppointment_time());
        exist.setStatus(updatedAppointment.getStatus());
        return appointmentRepository.save(exist);
    }

    /**
     * Delete Appointment
     * @param
     */
    public void deleteAppointment(int appointment_id){
        appointmentRepository.deleteById(appointment_id);
    }

    /**
     * Create Appointment
     * @param appointment appointment
     */
    public void createAppointment(Appointment appointment) {
        appointmentRepository.save(appointment);
    }

    /**
     * Check if patient had appointment with provider
     */
    public boolean checkIfAppointmentExists(int patient_id, int provider_id){
        return appointmentRepository.existsByPatientIdAndProviderId(patient_id,provider_id);
    }


}
