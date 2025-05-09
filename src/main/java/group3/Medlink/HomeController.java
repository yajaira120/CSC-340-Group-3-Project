package group3.Medlink;

import group3.Medlink.patient.Patient;
import group3.Medlink.provider.ProviderService;
import group3.Medlink.provider.Provider;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {

    @Autowired
    private ProviderService providerService;

    @ModelAttribute("sessionPatient")
    public Patient addPatientToModel(HttpSession session) {
        return (Patient) session.getAttribute("patient");
    }

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

    @GetMapping("/form-for-appointment")
    public String formForAppointment(){
        return "pages/form_for_appointment";
    }
}
