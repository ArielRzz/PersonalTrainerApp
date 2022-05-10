package ar.edu.unlam.tallerweb1.servicios;

import ar.edu.unlam.tallerweb1.modelo.Entrenador;
import ar.edu.unlam.tallerweb1.modelo.ModalidadDeClase;
import ar.edu.unlam.tallerweb1.modelo.TiposDeEspecialidad;

import java.util.List;

public interface ServicioPersonalidazacionDePlan {

    List<Entrenador> buscarTodosLosEntrenadores();
    List<ModalidadDeClase> buscarTodasLasModalidades();

    Object buscarTodasLasEspecialidades();
}
