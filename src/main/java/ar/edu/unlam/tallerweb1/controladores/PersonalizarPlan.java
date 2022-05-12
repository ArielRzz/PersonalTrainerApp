package ar.edu.unlam.tallerweb1.controladores;

import ar.edu.unlam.tallerweb1.modelo.Entrenador;
import ar.edu.unlam.tallerweb1.modelo.ModalidadDeClase;
import ar.edu.unlam.tallerweb1.modelo.Plan;
import ar.edu.unlam.tallerweb1.modelo.TiposDeEspecialidad;
import ar.edu.unlam.tallerweb1.servicios.ServicioPersonalidazacionDePlan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

@Controller
public class PersonalizarPlan {

    private ServicioPersonalidazacionDePlan servicio;
    @Autowired

    public PersonalizarPlan(ServicioPersonalidazacionDePlan servicio){
        this.servicio=servicio;
    }

    @RequestMapping(path = "personalidad",method = RequestMethod.GET)
    public ModelAndView irAPersonalizarPlan(){
        ModelMap modelo=new ModelMap();
        List<Entrenador>entrenadores= servicio.buscarTodosLosEntrenadores();
        modelo.put("entrenadores",entrenadores);
        modelo.put("modalidades",servicio.buscarTodasLasModalidades());
        modelo.put("especialidades",servicio.buscarTodasLasEspecialidades());
        return new ModelAndView("PersonalizarPlan",modelo);
    }

        @RequestMapping(path="certificadoDePago", method=RequestMethod.GET)
        public ModelAndView certificadoDePago(@RequestParam("select")Integer idEntrenador){

         ModelMap nuevo=new ModelMap();

         nuevo.put("idEntrenedor",idEntrenador);

        return new ModelAndView("PersonalizarPlan",nuevo);
    }


}
