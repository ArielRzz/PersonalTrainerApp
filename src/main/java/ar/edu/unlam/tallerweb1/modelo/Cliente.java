package ar.edu.unlam.tallerweb1.modelo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.util.Date;

@Getter
@Setter
@Entity
@NoArgsConstructor
public class Cliente{

    @Id
    @Column(name = "id", nullable = false)
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private Integer dni;
    private Date fechaDeNacimiento;
    private String nombre;
    private String apellido;
    private String email;
    private String password;
    private String rol;
    
    @OneToOne
    private Plan planActual;
    
    @ManyToOne(/*no me acuerdo que pusimos*/)
    private Entrenador entrenador;

}

