/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leapfrog.appjpa.dao.impl;

import com.leapfrog.appjpa.dao.UserDAO;
import com.leapfrog.appjpa.entity.User;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

/**
 *
 * @author zak
 */
public class UserDAOImpl implements UserDAO {

    private EntityManagerFactory emf;
    private EntityManager em;
    private EntityTransaction trans;

    public UserDAOImpl() {
        emf = Persistence.createEntityManagerFactory("HHPU");
        em = emf.createEntityManager();

    }

    @Override
    public List<User> getAll() {
        Query query = em.createQuery("SELECT u FROM User u");
        return (List<User>) query.getResultList();
    }

    @Override
    public User getById(int id) {
        return em.find(User.class, id);
    }

    @Override
    public void insert(User user) {
        trans = em.getTransaction();
        if (!trans.isActive()) {
            trans.begin();
        }
        em.persist(user);
        trans.commit();
    }

}
