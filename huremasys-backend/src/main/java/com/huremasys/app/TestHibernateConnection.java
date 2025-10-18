/**
 * 
 */
package com.huremasys.app;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

/**
 * 
 */
public class TestHibernateConnection {

    public static void main(String[] args) {
        System.out.println("Testing Hibernate connection...");

        try {
            EntityManagerFactory emf = Persistence.createEntityManagerFactory("huremasysHRMS");
            EntityManager em = emf.createEntityManager();

            System.err.println("============================== SUCCESSFUL CONNECTION ============================");
            System.out.println("Hibernate connected successfully to PostgreSQL!");

            em.close();
            emf.close();
        } catch (Exception e) {
            System.err.println("============================== BAD CONNECTION ============================");
            System.err.println("Connection failed:");
            e.printStackTrace();
        }
    }
}
