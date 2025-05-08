package group3.Medlink.provider;

import java.util.List;

public interface ProviderService {
    List<Provider> getAllProviders();
    Provider getProviderById(Long id);
    Provider saveProvider(Provider provider);
    void deleteProvider(Long id);
}