package ar.edu.unlam.tallerweb1.controladores;

import ar.edu.unlam.tallerweb1.servicios.ServicioComprarPlan;
import ar.edu.unlam.tallerweb1.servicios.ServicioPlan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ConfirmacionDeCompra {

    private ServicioComprarPlan servicioComprarPlan;

    @Autowired
    public ConfirmacionDeCompra(ServicioComprarPlan servicioComprarPlan) {
        this.servicioComprarPlan = servicioComprarPlan;
    }
    @RequestMapping(path = "/mostrarPlanes/plan/confirmacionCompra",method = RequestMethod.GET)
        public ModelAndView mostrarConfirmacionDeCompra(@RequestParam(value = "p")String planId,@RequestParam(value = "pr")Double precio,@RequestParam(value = "n")String nombre)
    {
        ModelMap modelo=new ModelMap();
        modelo.put("id",planId);
        modelo.put("precio",precio);
        modelo.put("nombre",nombre);
        Double cargo=100.0;
        Double total=servicioComprarPlan.calcularPrecio(precio);
        modelo.put("cargo",cargo);
        modelo.put("total",total);

        return new ModelAndView("confirmacionPago",modelo);
    }

}
