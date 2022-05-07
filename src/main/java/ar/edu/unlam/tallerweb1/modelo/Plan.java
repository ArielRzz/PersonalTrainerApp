package ar.edu.unlam.tallerweb1.modelo;

import lombok.Getter;

import javax.persistence.*;

@Entity
@Getter
public class Plan {
    @Id
    @Column(name = "id", nullable = false)
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private double precio;
    private String nombre;
    private Enum tipoDeModalidad;
    @OneToOne
    private Entrenador entrenador;


}
