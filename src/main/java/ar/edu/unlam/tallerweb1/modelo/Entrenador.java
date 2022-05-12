package ar.edu.unlam.tallerweb1.modelo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;

@Getter
@Setter
@Entity
@NoArgsConstructor
public class Entrenador{
    @Id
    @Column(name = "id", nullable = false)
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private String nombre;
    private String apellido;
    private String email;
    private String password;
    private String rol;
    @OneToOne
    private TiposDeEspecialidad tipoDeEspecialidad;

    private String nombre;
    private String apellido;
    private String email;
    private String password;
    private String rol;

}
