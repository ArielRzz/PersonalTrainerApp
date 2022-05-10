package ar.edu.unlam.tallerweb1.servicios;

import ar.edu.unlam.tallerweb1.modelo.Entrenador;
import ar.edu.unlam.tallerweb1.modelo.ModalidadDeClase;
import ar.edu.unlam.tallerweb1.modelo.TiposDeEspecialidad;
import ar.edu.unlam.tallerweb1.repositorios.RepositorioPersonalizacionDePlan;
import org.springframework.beans.MutablePropertyValues;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

@Transactional
@Service
public class ServicioPersonalizacionDePlanIml implements ServicioPersonalidazacionDePlan{

    private RepositorioPersonalizacionDePlan repositorio;

    @Autowired
    public ServicioPersonalizacionDePlanIml(RepositorioPersonalizacionDePlan repositorio){
        this.repositorio=repositorio;
    }

    @Override
    public List<Entrenador> buscarTodosLosEntrenadores() {
        Entrenador entrenador=new Entrenador();
        entrenador.setNombre("Cristian");
        entrenador.setApellido("Quipildor");
        Entrenador entrenador2=new Entrenador();
        entrenador2.setNombre("Gabriel");
        entrenador2.setApellido("Gonzales");
        List<Entrenador>lista=new ArrayList<>();
        lista.add(entrenador);
        lista.add(entrenador2);
        return lista;
        //return repositorio.todosLosEntrenadores();
    }

    @Override
    public List<ModalidadDeClase> buscarTodasLasModalidades() {
        return repositorio.todasLasModalidades();
    }

    @Override
    public Object buscarTodasLasEspecialidades() {
        return repositorio.todasLasEspecialidades();
    }
}
