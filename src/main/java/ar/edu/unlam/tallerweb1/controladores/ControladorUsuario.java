package ar.edu.unlam.tallerweb1.controladores;

import ar.edu.unlam.tallerweb1.modelo.Usuario;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.Map;

@Controller
public class ControladorUsuario {

    @RequestMapping(path = "/ir-a-configuracion")
    public ModelAndView configSuscripcion(){
        Usuario usuario =  new Usuario();
        ModelMap modelo = new ModelMap();
        modelo.addAttribute("usuario",usuario);
            return new ModelAndView("/configuracionSuscripcion",modelo);
    }
    @RequestMapping(path = "/perfil")
    public ModelAndView irAPerfil(){
        return new ModelAndView("/perfilUsuario");
    }
}
