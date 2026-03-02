package vn.DinhQuangDuc.laptopshop.service;

import java.util.List;

import org.springframework.stereotype.Service;

import vn.DinhQuangDuc.laptopshop.domain.Role;
import vn.DinhQuangDuc.laptopshop.domain.User;
import vn.DinhQuangDuc.laptopshop.repository.RoleRepository;
import vn.DinhQuangDuc.laptopshop.repository.UserRepository;

@Service
public class UserService {
    private final UserRepository userRepository;
    private final RoleRepository roleRepository;

    public UserService(UserRepository userRepository, RoleRepository roleRepository) {
        this.userRepository = userRepository;
        this.roleRepository = roleRepository;
    }

    public String handleHello() {
        return "Hello from Service";
    }

    public List<User> getAllUsers() {
        return this.userRepository.findAll();
    }

    public List<User> getAllUsersByEmail(String email) {
        return this.userRepository.findOneByEmail(email);
    }

    public User handleSaveUser(User user) {
        User cen = this.userRepository.save(user);
        System.out.println(cen);
        return cen;
    }

    public User getUserByID(long id) {
        return this.userRepository.findById(id);
    }

    public void deleteUser(long id) {
        this.userRepository.deleteById(id);
    }

    public Role getRoleByName(String name) {
        return this.roleRepository.findByName(name);
    }
}
