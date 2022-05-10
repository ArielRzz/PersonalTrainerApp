package ar.edu.unlam.tallerweb1.servicios;

import ar.edu.unlam.tallerweb1.modelo.Plan;
import ar.edu.unlam.tallerweb1.repositorios.RepositorioPlan;
import ar.edu.unlam.tallerweb1.repositorios.RepositorioUsuario;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("servicioPlan")
@Transactional
public class ServicioPlanImpl implements ServicioPlan{

    private RepositorioPlan repositorioPlan;

    @Autowired
    public ServicioPlanImpl(RepositorioPlan repositorioPlan) {
        this.repositorioPlan = repositorioPlan;
    }

    @Override
    public List<Plan> listarPlanes() {
        return repositorioPlan.getPlanes();
    }
}
