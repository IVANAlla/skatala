package web.dao;

import web.models.User;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;
import java.util.Optional;

@Repository
@Transactional
public class UserDaoImpl  implements UserDao {

    @PersistenceContext
    private EntityManager entityManager;


    @Override
    public void save(User user) {
        entityManager.persist(user);
    }

    @Override
    public List<User> index() {
        return entityManager.createQuery("select u from User u", User.class)
                .getResultList();
    }

    @Override
    public Optional<User> show(Long id) {
        User user = entityManager.find(User.class, id);
        return Optional.ofNullable(user);
    }

    @Override
    public void update(User user) {
        entityManager.merge(user);
    }

    @Override
    public void delite(Long id) {
        Optional<User> userById = show(id);
        userById.ifPresent(user -> entityManager.remove(user));
    }
}
