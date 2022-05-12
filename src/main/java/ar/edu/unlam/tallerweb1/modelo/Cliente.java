package ar.edu.unlam.tallerweb1.modelo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

@Getter
@Setter
@Entity
@NoArgsConstructor
public class Cliente {

    @Id
    @Column(name = "id", nullable = false)
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private Integer dni;
    private Date fechaDeNacimiento;
    @OneToOne
    private Plan planActual;
    @ManyToOne(/*no me acuerdo que pusimos*/)
    private Entrenador entrenador;

}

