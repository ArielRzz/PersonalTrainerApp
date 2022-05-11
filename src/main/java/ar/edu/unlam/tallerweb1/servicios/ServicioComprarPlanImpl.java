package ar.edu.unlam.tallerweb1.servicios;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("servicioComprarPlan")
@Transactional
public class ServicioComprarPlanImpl implements ServicioComprarPlan{

    @Override
    public Double calcularPrecio(Double precio) {
        Double cargo=100.0;
        Double total=precio+cargo;
        return total;
    }
}
