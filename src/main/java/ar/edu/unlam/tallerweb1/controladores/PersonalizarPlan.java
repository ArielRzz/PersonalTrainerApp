package ar.edu.unlam.tallerweb1.controladores;

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

        modelo.put("libreria",palabras);





        return new ModelAndView("PersonalizarPlan",modelo);
    }


}
