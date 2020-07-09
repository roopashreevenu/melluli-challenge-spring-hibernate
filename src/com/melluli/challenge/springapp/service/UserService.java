package com.melluli.challenge.springapp.service;

import java.util.List;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.melluli.challenge.springapp.model.User;

@Service
public class UserService {

    SessionFactory sessionFactory;

    @Transactional
    public List<User> fetchUsers() {
        Query query = getSessionFactory().getCurrentSession().createQuery("from user");
        return query.list();
    }

    @Transactional
    public User fetchUserInfo(int uid){
        Query query = getSessionFactory().openSession().createQuery("from user u where u.id=:uid");
        query.setParameter("uid", uid);
        return (User)query.uniqueResult();
    }

    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    @Autowired
    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
}
