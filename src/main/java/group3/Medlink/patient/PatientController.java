package group3.Medlink.patient;

import group3.Medlink.provider.ProviderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * PatientController.java
 * Includes all REST API endpoint mappings for the Patient object.
 */
@Controller
@RequestMapping("/patients")
public class PatientController {

    @Autowired
    private PatientService patientService;

    @Autowired
    private ProviderService providerService;

    /**
     * Get list of patients
     * http://localhost:8080/patients/all
     * @return list of patient objects
     */
    @GetMapping("/all")
    public Object getAllPatients(Model model){
        //return new ResponseEntity<>(patientService.getAllPatients(),HttpStatus.OK);
        model.addAttribute("patientList", patientService.getAllPatients());
        model.addAttribute("title", "All Patients");
        return "patient/patient-list";
    }

    /**
     * Get Patient by Id
     * http://localhost:8080/patient/4
     *
     * @param patient_id patient_id
     * @return patient
     */
    @GetMapping("/{patient_id}")
    public Object getChosenPatient(@PathVariable int patient_id, Model model) {
        //return new ResponseEntity<>(patientService.getPatientById(patient_id), HttpStatus.OK);
        model.addAttribute("patient", patientService.getPatientById(patient_id));
        model.addAttribute("title", "Patient #: " + patient_id);
        return "patient/patient-details";
    }

    /**
     * Get a list of patients with a name that contains the given string.
     * http://localhost:8080/patients/name?search=kevin
     * @
     */
    @GetMapping("/name")
    public Object getPatientsByName(@RequestParam(name = "search", defaultValue = "") String search, Model model){
        model.addAttribute("patientList", patientService.getPatientsByName(search));
        model.addAttribute("title","Patients by Name: " + search);
        return "patient/patient-list";
    }

    /**
     * Show view for a new Patient Form
     * @param model
     * @return the form view
     */
    @GetMapping("/createPatientForm")
    public String showCreatePatientForm(Model model){
        Patient patient = new Patient();
        model.addAttribute("patient", patient);
        model.addAttribute("title", "Create New Patient");
        return "patient/patient-create";
    }

    /**
     * Create a new patient
     * http://localhost:8080/patient/register
     *
     * @param patient new patient object
     * @return updated list of patients
     */
    @PostMapping("/new")
    public Object addNewPatient(Patient patient, Model model){
        patientService.addNewPatient(patient);
        return "pages/confirmation_page";
    }

    /**
     * Show update form
     * @param patient_id
     * @param model
     * @return update form view
     */
    @GetMapping("/update/{patient_id}")
    public String showUpdateForm(@PathVariable int patient_id, Model model){
        model.addAttribute("patient", patientService.getPatientById(patient_id));
        model.addAttribute("title", "Update Patient");
        return "patient/patient-update";
    }

    /**
     * Update existing patient object
     * http://localhost:8080/patient/update/2 --data
     *
     * @param patient_id patient
     * @return updated patient object
     */
    @PostMapping("/update/{patient_id}")
    public Object updatePatient(@PathVariable int patient_id, Patient patient){
        patientService.updatePatient(patient_id, patient);
        return "redirect:/patients/" + patient_id;
    }

    /**
     * Delete patient object.
     * http://localhost:8080/patients/delete/2
     * @param patientId patientId
     * @return updated list of patients
     */
    @GetMapping("/delete/{patient_id}")
    public Object deletePatientById(@PathVariable int patientId){
        patientService.deletePatientById(patientId);
        return "redirect:/patients/all";
    }

}
