package group3.Medlink.provider;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;


@RestController
@RequestMapping("/api/provider")
public class ProviderController {
    
    @Autowired
    private ProviderService providerService;

    @GetMapping("/all")
    public Object getAllUsers(){
        return new ResponseEntity<>(providerService.getAllProviders(),HttpStatus.OK);
    }

    @GetMapping("/{provider_id}")
    public Object getChosenUser(@PathVariable int provider_id){
        return new ResponseEntity<>(providerService.getProviderById(provider_id), HttpStatus.OK);
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


}
