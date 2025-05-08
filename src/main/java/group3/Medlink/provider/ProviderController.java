package group3.Medlink.provider;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/provider")
public class ProviderController {

    @Autowired
    private ProviderService providerService;

    @GetMapping("/all")
    public String getAllProviders(Model model) {
        List<Provider> providers = providerService.getAllProviders();
        model.addAttribute("providers", providers);
        return "provider_list";
    }

    @GetMapping("/delete/{id}")
    public String deleteProvider(@PathVariable Long id) {
        providerService.deleteProvider(id);
        return "redirect:/provider/all";
    }

    @GetMapping("/edit/{id}")
    public String editProviderForm(@PathVariable Long id, Model model) {
        Provider provider = providerService.getProviderById(id);
        model.addAttribute("provider", provider);
        return "provider_form";
    }

    @PostMapping("/save")
    public String saveProvider(@ModelAttribute("provider") Provider provider) {
        providerService.saveProvider(provider);
        return "redirect:/provider/all";
    }

    @GetMapping("/add")
    public String addProviderForm(Model model) {
        model.addAttribute("provider", new Provider());
        return "provider_form";
    }
}
