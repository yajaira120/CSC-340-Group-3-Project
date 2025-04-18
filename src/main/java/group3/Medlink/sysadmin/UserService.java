package group3.Medlink.sysadmin;

import java.util.List;

public interface UserService {
    List<User> getAllUsers();
    User saveUser(User user);
    User updateUserStatus(Long id, String status);
    void deleteUser(Long id);
}
