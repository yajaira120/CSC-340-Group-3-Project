package group3.Medlink.sysadmin;

import group3.Medlink.patient.Patient;
import group3.Medlink.patient.PatientRepository;
import group3.Medlink.provider.Provider;
import group3.Medlink.provider.ProviderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private PatientRepository patientRepository;

    @Autowired
    private ProviderRepository providerRepository;

    @Autowired
    private UserRepository userRepository;

    @Override
    public List<User> getAllUsers() {
        List<User> users = new ArrayList<>();

        // Fetch patients
        List<Patient> patients = patientRepository.findAll();
        for (Patient p : patients) {
            User user = new User();
            user.setId((long) p.getId());
            user.setUsername(p.getName());
            user.setEmail(p.getEmail());
            user.setRole("PATIENT");
            user.setAccountStatus("ACTIVE");
            users.add(user);
        }

        // Fetch providers
        List<Provider> providers = providerRepository.findAll();
        for (Provider pr : providers) {
            User user = new User();
            user.setId((long) pr.getId());
            user.setUsername(pr.getName());
            user.setEmail(pr.getEmail());
            user.setRole("PROVIDER");
            user.setAccountStatus("ACTIVE");
            users.add(user);
        }

        return users;
    }

    @Override
    public User updateUserStatus(Long id, String status) {
        User user = userRepository.findById(id).orElse(null);
        if (user != null) {
            user.setAccountStatus(status);
            return userRepository.save(user);
        }
        return null;
    }

    @Override
    public void deleteUser(Long id) {
        userRepository.deleteById(id);
    }

    @Override
    public User getUserById(Long id) {
        return userRepository.findById(id).orElse(null);
    }
}