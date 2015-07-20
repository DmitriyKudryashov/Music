package com.dao.impl;


import com.dao.Dao;
import com.domain.User;
import com.util.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.io.Serializable;
import java.lang.reflect.ParameterizedType;


public class DaoImpl<T> implements Dao<T> {


    @Override
    public void save(T obj) {
        Session session = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            session.save(obj);
            session.getTransaction().commit();
        }catch (Exception e){
            e.getStackTrace();
        }finally {
            if (session != null && session.isOpen()){
                session.close();
            }
        }
    }

    @Override
    public T get(Class<T> entityClass, Long id){
        T result = null;
        Session session = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            result = (T) session.get(entityClass, id);
        }catch (Exception e){
            e.getStackTrace();
        }finally {
            if (session != null && session.isOpen()){
                session.close();
            }
        }
        return result;
    }

    @Override
    public T getLogin(Class<T> entityClass, String login) {
        T result = null;
        Session session = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            result = (T) session.createCriteria(entityClass).add(Restrictions.eq("login", login)).uniqueResult();
        }catch (Exception e){
            e.getStackTrace();
        }finally {
            if (session != null && session.isOpen()){
                session.close();
            }
        }
        return result;
    }

    @Override
    public void update(T obj) {
        Session session = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            session.update(obj);
            session.getTransaction().commit();
        }catch (Exception e){
            e.getStackTrace();
        }finally {
            if (session != null && session.isOpen()){
                session.close();
            }
        }
    }

}


