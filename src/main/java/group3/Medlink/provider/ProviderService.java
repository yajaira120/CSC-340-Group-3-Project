package group3.Medlink.provider;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProviderService {

    @Autowired
    private ProviderRepository providerRepository;


    public List<Provider> getAllProviders(){
        return providerRepository.findAll();
    }

    public Provider getProviderById(int provider_id){
        return providerRepository.findById(provider_id).orElse(null);
    }

    public void addNewProvider(Provider provider){
        providerRepository.save(provider);
    }

    public void updateProvider(int provider_id, Provider provider){
        Provider exist = getProviderById(provider_id);
        exist.setName(provider.getName());
        exist.setDob(provider.getDob());
        exist.setDescription(provider.getDescription());
        exist.setProvider_password(provider.getProvider_password());
        exist.setUnis(provider.getUnis());
        exist.setYears_practicing(provider.getYears_practicing());
        exist.setEmail(provider.getEmail());
        exist.setAge(provider.getAge());
        exist.setMed_license_num(provider.getMed_license_num());
        exist.setNational_provider_num(provider.getNational_provider_num());
        exist.setProfile_picture(provider.getProfile_picture());

    }



}
