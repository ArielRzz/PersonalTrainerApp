package ar.edu.unlam.tallerweb1.controladores;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ConfirmacionDeCompra {
@RequestMapping(path = "/confirmacion-compra",method = RequestMethod.GET)
    public ModelAndView mostrarConfirmacionDeCompra(){
    ModelMap modelo=new ModelMap();
    return new ModelAndView("confirmacionPago",modelo);
}
}
