package com.dao;


import java.io.Serializable;

public interface Dao <T> {

    public void save(T obj);

    public T get(Class<T> entityClass, Long id);

    public T getLogin(Class<T> entityClass, String login);

    public void update(T obj);


}
