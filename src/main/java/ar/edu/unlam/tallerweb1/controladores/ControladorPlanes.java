package ar.edu.unlam.tallerweb1.controladores;

import ar.edu.unlam.tallerweb1.modelo.Plan;
import ar.edu.unlam.tallerweb1.servicios.ServicioPlan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
public class ControladorPlanes {

    private ServicioPlan servicioPlan;

    @Autowired
    public ControladorPlanes(ServicioPlan servicioPlan) {
        this.servicioPlan = servicioPlan;
    }

    @RequestMapping(path = "/mostrarPlanes")
    public ModelAndView mostrarPlanes(ModelMap modelo){
        modelo.addAttribute("plan", servicioPlan.listarPlanes());
        return new ModelAndView("planes",modelo);
    }
}
