package group3.Medlink;

import group3.Medlink.provider.ProviderService;
import group3.Medlink.provider.Provider;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {

    @Autowired
    private ProviderService providerService;

    @GetMapping({"", "/", "/home", "/dashboard"})
    public String showDashBoard(){
        return "home";
    }

    @GetMapping("/browse")
    public String showBrowse(Model model){
        model.addAttribute("providerList", providerService.getAllProviders());
        model.addAttribute("title", "All Providers");
        return "browse";
    }

    @GetMapping("/account-type-signup")
    public String chooseAccountTypeSignup(){
        return "pages/choose_account_type_signup";
    }

    @GetMapping("/account-type-login")
    public String chooseAccountTypeLogin(){
        return "pages/choose_account_type_login";
    }

    @GetMapping("/confirmation-page-patient")
    public String confirmationPagePatient(){
        return "pages/confirmation_page";
    }

    @GetMapping("/account-details")
    public String accountDetails(){
        return "pages/patient_profile/account_details";
    }
    @GetMapping("/edit-account-details")
    public String editAccountDetails(){
        return "pages/patient_profile/edit_account_details";
    }

    @GetMapping("/patient-appointments")
    public String patientAppointments(){
        return "pages/patient_profile/patient_appointments";
    }

    @GetMapping("/providers-for-patients")
    public String providersForPatient(){
        return "pages/patient_profile/providers_for_patients";
    }


}
