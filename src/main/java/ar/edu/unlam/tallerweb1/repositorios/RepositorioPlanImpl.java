package ar.edu.unlam.tallerweb1.repositorios;

import ar.edu.unlam.tallerweb1.modelo.Plan;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import java.util.List;

@Repository
public class RepositorioPlanImpl implements RepositorioPlan{

    SessionFactory sessionFactory;

    @Autowired
    public RepositorioPlanImpl(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public List<Plan> getPlanes() {
     return sessionFactory.getCurrentSession().createCriteria(Plan.class).list();
    }
}
