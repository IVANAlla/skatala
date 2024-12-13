package web.service;

import web.models.User;

import java.util.List;
import java.util.Optional;

public interface UserService {

        void save(User user);
        List<User> index();
        Optional<User> show(Long id);
        void update(User user);
        void delite(Long id);

}
