package ar.edu.unlam.tallerweb1.modelo;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Cliente extends Usuario{
    private Plan plan;
    private Direccion direccion;

}

