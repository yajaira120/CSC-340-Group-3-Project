package group3.Medlink.patient;

import group3.Medlink.patient.PatientRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PatientService {
    @Autowired
    private PatientRepository patientRepository;

    /**
     * Fetch all patients
     * @return list of all patients
     */

    public List<Patient> getAllPatients(){
        return patientRepository.findAll();
    }

    /**
     * Fetch patient by id
     * @param patient_id
     * @return patient
     */

    public Patient getPatientById(int patient_id){
        return patientRepository.findById(patient_id).orElse(null);
    }

    /**
     * Add new patient to database
     * @param patient, new patient to add
     */
    public void addNewPatient(Patient patient){
        patientRepository.save(patient);
    }

    /**
     * Update an existing patient, with new data
     * @param patient, new student details
     * @param patient_id
     */
    public void updatePatient(int patient_id, Patient patient){
        Patient exist = getPatientById(patient_id);
        exist.setName(patient.getName());
        exist.setAddress(patient.getAddress());
        exist.setDob(patient.getDob());
        exist.setEmail(patient.getEmail());
        exist.setPassword(patient.getPassword());
        exist.setPhone_number(patient.getPhone_number());
        exist.setInsurance_provider(patient.getInsurance_provider());
        exist.setMedical_history(patient.getMedical_history());
        exist.setProfile_picture(patient.getProfile_picture());

        patientRepository.save(exist);
    }

}


