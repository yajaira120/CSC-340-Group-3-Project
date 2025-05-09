package group3.Medlink.provider;


import group3.Medlink.patient.Patient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/provider")
public class ProviderController {
    
    @Autowired
    private ProviderService providerService;

    @GetMapping("/all")
    public Object getAllProviders(Model model){
        model.addAttribute("providerList", providerService.getAllProviders());
        model.addAttribute("title", "All Providers");
        return "browse";
    }

    @GetMapping("/details/{provider_id}")
    public Object getChosenUser(@PathVariable int provider_id, Model model){
        model.addAttribute("provider", providerService.getProviderById(provider_id));
        model.addAttribute("title", "Provider #: " + provider_id);
        return "provider-details";
    }

    @PostMapping("/new")
    public Object addNewProvider(@ModelAttribute Provider provider, BindingResult result, Model model ){
        System.out.println("Validation errors:");
        result.getAllErrors().forEach(e -> System.out.println(e));
        /*
        if (result.hasErrors()) {
            System.out.println("Form binding errors:");
            result.getAllErrors().forEach(error -> System.out.println(error));
            model.addAttribute("title", "Error Creating Provider");
            return "provider/provider-create"; // Return back to the form if there's an error
        }
        */
        Provider savedProvider = providerService.addNewProvider(provider);
        System.out.println("DEBUG: Saved Provider ID = " + savedProvider.getProvider_id());
        model.addAttribute("provider", savedProvider);

        /*
        providerService.addNewProvider(provider);
        model.addAttribute("provider", provider);
        return "provider/provider_confirm";
        */
        return "provider/provider_confirm";
    }

    @GetMapping("/create-provider-form")
    public String showCreateProviderForm(Model model){
        Provider provider = new Provider();
        model.addAttribute("provider", provider);
        model.addAttribute("title", "Create New Provider");
        return "provider/provider-create";
    }

    @PutMapping("/update/{provider_id}")
    public Object updateProvider(@PathVariable int provider_id,@RequestBody Provider provider){
        providerService.updateProvider(provider_id, provider);
        return new ResponseEntity<>(providerService.getProviderById(provider_id), HttpStatus.OK);
    }

    /**
     * Provider profile from browsing, for users
     * @param provider_id
     * @param model
     * @return
     */
    @GetMapping("/browse/{provider_id}")
    public Object getProviderProfile(@PathVariable int provider_id, Model model){
        model.addAttribute("provider", providerService.getProviderById(provider_id));
        model.addAttribute("title", "Provider #: " + provider_id);
        return "provider-profile";
    }

    // Return confirmation page for creating profile
    @GetMapping("/confirmation-page-provider")
    public String confirmationPageProvider(){
        return "provider/provider_confirm";
    }

    /*
    // Return confirmation page for creating profile
    @GetMapping("/confirmation-page-provider")
    public String confirmationPagePatient(){
        return "provider/provider_confirm";
    }
    */

}
