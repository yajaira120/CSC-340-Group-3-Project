package group3.Medlink.patient;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;


/**
 * PatientController.java
 * Includes all REST API endpoint mappings for the Patient object.
 */
@RestController
@RequestMapping("/patient")
public class PatientController {

    @Autowired
    private PatientService patientService;

    /**@Autowired
    private ProviderService providerService;
    */

    /**
     * Get list of patients
     * http://localhost:8080/patient/all
     * @return list of patient objects
     */

    @GetMapping("/all")
    public Object getAllUsers(){
        return new ResponseEntity<>(patientService.getAllPatients(),HttpStatus.OK);
    }

    /**
     * Get Patient by Id
     * http://localhost:8080/patient/4
     *
     * @param patient_id
     * @return patient
     */
    @GetMapping("/{patient_id}")
    public Object getChosenUser(@PathVariable int patient_id){
        return new ResponseEntity<>(patientService.getPatientById(patient_id), HttpStatus.OK);
    }

    /**
     * Create a new patient
     * http://localhost:8080/patient/register
     *
     * @param patient new patient object
     * @return updated list of patients
     */
    @PostMapping("/register")
    public Object addNewPatient(@RequestBody Patient patient){
        patientService.addNewPatient(patient);
        return new ResponseEntity<>("New Patient Created!", HttpStatus.OK);
    }

    /**
     * Update existing patient object
     * http://localhost:8080/patient/update/2 --data
     *
     * @param patient_id patient
     * @return updated patient object
     */
    @PutMapping("/update/{patient_id}")
    public Object updatePatient(@PathVariable int patient_id,@RequestBody Patient patient){
        patientService.updatePatient(patient_id, patient);
        return new ResponseEntity<>(patientService.getPatientById(patient_id), HttpStatus.OK);
    }



}
