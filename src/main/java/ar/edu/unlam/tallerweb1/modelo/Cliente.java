package ar.edu.unlam.tallerweb1.modelo;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.Date;

@Getter
@Setter
@Entity
public class Cliente extends Usuario{

    @Id
    @Column(name = "id", nullable = false)
    @GeneratedValue(strategy = GenerationType.AUTO)

    private Long id;
    private String nombre;
    private String apellido;
    private Integer dni;
    private Date fechaDeNacimiento;
    @OneToOne
    private Plan planActual;
    private String direccion;

}

