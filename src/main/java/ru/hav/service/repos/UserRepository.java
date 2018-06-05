package ru.hav.service.repos;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.hav.service.data.User;

public interface UserRepository extends JpaRepository<User, Long> {

    User findByUsername(String username);

    User findByActivationCode(String code);
}
