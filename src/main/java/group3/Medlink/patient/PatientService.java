package group3.Medlink.patient;

import group3.Medlink.patient.PatientRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PatientService{
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
     * Fetch all patients with a name that contains the given string.
     * @param name the search name
     * @return the list of matching patients
     */
    public List<Patient> getPatientsByName(String name){
        return patientRepository.getPatientsByName(name);
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
     * @param patient, new patient details
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

    /**
     * Delete a patient
     * @param patient_id patientId
     */
    public void deletePatientById(int patient_id){
        patientRepository.deleteById(patient_id);
    }

    public Patient getPatientByEmail(String email){
        return patientRepository.findByEmail(email).orElse(null);
    }


}


