package ar.edu.unlam.tallerweb1.repositorios;

import ar.edu.unlam.tallerweb1.modelo.Entrenador;
import ar.edu.unlam.tallerweb1.modelo.ModalidadDeClase;
import ar.edu.unlam.tallerweb1.modelo.TiposDeEspecialidad;

import java.util.List;


public interface RepositorioPersonalizacionDePlan {

    List<Entrenador> todosLosEntrenadores();
    List<ModalidadDeClase> todasLasModalidades();


    List<TiposDeEspecialidad> todasLasEspecialidades();
}
