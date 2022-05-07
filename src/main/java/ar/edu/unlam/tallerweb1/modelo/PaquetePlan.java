package ar.edu.unlam.tallerweb1.modelo;

import javax.persistence.*;

@Entity
public class PaquetePlan {


    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String nombre;
    private Double precio;
    @OneToOne
    private Entrenador entrenador;
    private Enum modalidad;











}
