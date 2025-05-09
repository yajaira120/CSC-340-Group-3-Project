package group3.Medlink.patient;

import group3.Medlink.provider.ProviderService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

/**
 * PatientController.java
 * Includes all API endpoint mappings for the Patient object.
 */

@Controller
@RequestMapping("/patients")
public class PatientController {

    @Autowired
    private PatientService patientService;

    @Autowired
    private ProviderService providerService;

    @Autowired
    private PatientRepository patientRepository;

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
    @GetMapping("/create-patient-form")
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
    public Object addNewPatient(@ModelAttribute Patient patient, Model model){
        patientService.addNewPatient(patient);
        model.addAttribute("patient", patient);
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

    /**
     * Login Section for Patient
     */

    /**
     *  Display login form for patient
     */
    @GetMapping("/patient-login-form")
    public String chooseAccountTypeSignup(){
        return "patient/patient_login";
    }


    @PostMapping("/login")
    public String login(@RequestParam String email,
                        @RequestParam String password,
                        HttpSession session,
                        Model model){
        Optional<Patient> patientOptional = patientRepository.findByEmail(email);
        if (patientOptional.isPresent() && password.equals(patientOptional.get().getPassword())){
            Patient patient = patientOptional.get();
            session.setAttribute("patient", patient);

            return "redirect:/patients/details/" + patient.getPatient_id();
        }else {
            model.addAttribute("error", "Invalid credentials");
            return "patient/patient_login";
        }
    }

    /**
     * Patient-details page
     */
    @GetMapping("/details/{patient_id}")
    public String patientDetails(@PathVariable("patient_id") int id, HttpSession session, Model model){
        Patient sessionPatient = (Patient) session.getAttribute("patient");

        // Unauthorized or Not Logged In
        if (sessionPatient == null || sessionPatient.getPatient_id() != id){
            return "redirect:/patients/patient_login_form";
        }
        //model.addAttribute("patient", sessionPatient);
        return "patient/patient-details";
    }

    /**
     * Logout for Patient
     */
    @GetMapping("/logout")
    public String logout(HttpSession session){
        session.invalidate();
        return "redirect:/";
    }


    /**
     * Redirecting to Specific Pages for User Profile
     * @return pages
     */
    // Return confirmation page for creating profile
    @GetMapping("/confirmation-page-patient")
    public String confirmationPagePatient(){
        return "pages/confirmation_page";
    }

    // Return page that will lead to update account form
    @GetMapping("/edit-account-details/{patient_id}")
    public String accountDetails(@PathVariable int patient_id, Model model){
        Patient patient = patientService.getPatientById(patient_id);
        model.addAttribute("patient", patient);
        return "pages/patient_profile/edit_account_details";
    }

    // Return patient appointments list page
    @GetMapping("/patient-appointments")
    public String patientAppointments(){
        return "pages/patient_profile/patient_appointments";
    }

    // Return providers of patient list with appointments
    @GetMapping("/providers-for-patients")
    public String providersForPatient(){
        return "pages/patient_profile/providers_for_patients";
    }

}
