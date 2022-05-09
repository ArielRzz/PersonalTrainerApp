package ar.edu.unlam.tallerweb1.modelo;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Getter
@Setter
@Entity
public class Entrenador extends Usuario{
    @Id
    @Column(name = "id", nullable = false)
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    @OneToOne
    private TiposDeEspecialidad tipoDeEspecialidad;

}
