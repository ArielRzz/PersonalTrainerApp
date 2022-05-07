package ar.edu.unlam.tallerweb1.controladores;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ControladorUsuario {

    @RequestMapping(path = "/ir-a-configuracion")
    public ModelAndView configSuscripcion(){
            return new ModelAndView("/configuracionSuscripcion");
    }
    @RequestMapping(path = "/perfil")
    public ModelAndView irAPerfil(){
        return new ModelAndView("/perfilUsuario");
    }
}
