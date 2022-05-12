package ar.edu.unlam.tallerweb1.modelo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Getter
@Setter
@NoArgsConstructor
public class Direccion {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;


    @JoinColumn(name = "usuario_id")
    @OneToOne()
    private Usuario usuario;

}
