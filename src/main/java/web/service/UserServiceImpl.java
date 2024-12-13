package web.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import web.dao.UserDao;
import web.models.User;

import java.util.List;
import java.util.Optional;
@Service
public class UserServiceImpl implements UserService {

    private final UserDao userDao;

    @Autowired
    public UserServiceImpl(UserDao userDAO) {
        this.userDao = userDAO;
    }
    @Override
    public void save(User user) {
        userDao.save(user);
    }

    @Override
    public List<User> index() {
        return userDao.index();
    }

    @Override
    public Optional<User> show(Long id) {
        return userDao.show(id);
    }

    @Override
    public void update(User user) {
        userDao.update(user);
    }

    @Override
    public void delite(Long id) {
        userDao.delite(id);

    }
}

