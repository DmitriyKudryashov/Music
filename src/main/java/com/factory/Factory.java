package com.factory;


import com.dao.Dao;
import com.dao.impl.DaoImpl;

public class Factory {

    private static Factory instance = new Factory();

    private Dao dao;

    public Dao getDao(){
        if (dao == null){
            dao = new DaoImpl();
        }
        return dao;
    }


    public static Factory getInstance() {
        return instance;
    }
}
