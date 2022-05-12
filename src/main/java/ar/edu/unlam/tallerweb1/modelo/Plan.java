package ar.edu.unlam.tallerweb1.modelo;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Getter
@Setter
public class Plan {
    @Id
    @Column(name = "id", nullable = false)
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String nombre;

//     @OneToOne
//     private ModalidadDeClase tipoDeModalidad;
//     @OneToOne
//     private FranjaHoraria horario;
//     @OneToOne
//     private Entrenador entrenador;

//     private double precio;
//     private Enum tipoDeModalidad;
    //@OneToOne
   // private Entrenador entrenador;




}
