package ar.edu.unlam.tallerweb1.modelo;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Getter
@Setter
@Entity
public class Entrenador extends Usuario{
    @Id
    @Column(name = "id", nullable = false)
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    @OneToMany
    private List<Cliente>clientes;
    private String nombre;
    private String direccion;
    private Enum tipoDeEspecialidad;

}
