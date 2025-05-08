package group3.Medlink.provider;


import group3.Medlink.appointment.Appointment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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

    @GetMapping("/{provider_id}")
    public Object getChosenUser(@PathVariable int provider_id, Model model){
        model.addAttribute("provider", providerService.getProviderById(provider_id));
        model.addAttribute("title", "Provider #: " + provider_id);
        return "provider-details";
    }

    @PostMapping("/register")
    public Object addNewProvider(@RequestBody Provider provider){
        providerService.addNewProvider(provider);
        return new ResponseEntity<>("New provider Created!", HttpStatus.OK);
    }

    @PutMapping("/update/{provider_id}")
    public Object updateProvider(@PathVariable int provider_id,@RequestBody Provider provider){
        providerService.updateProvider(provider_id, provider);
        return new ResponseEntity<>(providerService.getProviderById(provider_id), HttpStatus.OK);
    }

    /**
     * Provider profile from browsing, for users
     * @param id
     * @param model
     * @return
     */
    @GetMapping("/browse/{id}")
    public Object getProviderProfile(@PathVariable int id, Model model){
        model.addAttribute("provider", providerService.getProviderById(id));
        model.addAttribute("title", "Provider #: " + id);
        return "provider-profile";
    }


}
