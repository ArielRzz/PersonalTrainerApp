package ar.edu.unlam.tallerweb1.controladores;

import ar.edu.unlam.tallerweb1.modelo.Enums.FranjaHoraria;
import ar.edu.unlam.tallerweb1.modelo.Enums.TiposDeModalidad;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;

@Controller
public class PersonalizarPlan {

    @RequestMapping(path = "personalidad",method = RequestMethod.GET)
    public ModelAndView irAPersonalizarPlan(){
        ModelMap modelo=new ModelMap();
        ArrayList<String >palabras=new ArrayList<>();
        palabras.add("hola");
        palabras.add("como");
        palabras.add("estas");

        ArrayList<String> modalidades=new ArrayList<>();
        ArrayList<String> franjaHoraria=new ArrayList<>();
        modelo.put("libreria",palabras);

        for(Enum  nuevo: TiposDeModalidad.values()){
            modalidades.add(nuevo.name());
        }modelo.put("modalidades",modalidades);

        for(Enum  nuevo: FranjaHoraria.values()){
            franjaHoraria.add(nuevo.name());
        }modelo.put("franjaHoraria",franjaHoraria);


        return new ModelAndView("PersonalizarPlan",modelo);
    }


}
