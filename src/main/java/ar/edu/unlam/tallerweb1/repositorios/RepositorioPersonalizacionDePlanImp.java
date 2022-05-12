package ar.edu.unlam.tallerweb1.repositorios;

import ar.edu.unlam.tallerweb1.modelo.Entrenador;
import ar.edu.unlam.tallerweb1.modelo.ModalidadDeClase;
import ar.edu.unlam.tallerweb1.modelo.TiposDeEspecialidad;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import java.util.List;

@Repository
public class RepositorioPersonalizacionDePlanImp implements RepositorioPersonalizacionDePlan{
    private SessionFactory sesion;
    @Autowired
    RepositorioPersonalizacionDePlanImp(SessionFactory sesion){
        this.sesion=sesion;
    }
    private Entrenador nuevo;

    @Override
    public List<Entrenador> todosLosEntrenadores() {

        Session nuevaSesion= sesion.getCurrentSession();
        List<Entrenador>lista = nuevaSesion.createCriteria(Entrenador.class).list();
        return lista;

    }

    @Override
    public List<ModalidadDeClase> todasLasModalidades() {
        Session nuevaSesion= sesion.getCurrentSession();
        List<ModalidadDeClase>lista = nuevaSesion.createCriteria(ModalidadDeClase.class).list();
        return lista;
    }

    @Override
    public List<TiposDeEspecialidad> todasLasEspecialidades() {
        Session nuevaSesion= sesion.getCurrentSession();
        List<TiposDeEspecialidad>lista = nuevaSesion.createCriteria(TiposDeEspecialidad.class).list();
        return lista;
    }
}
