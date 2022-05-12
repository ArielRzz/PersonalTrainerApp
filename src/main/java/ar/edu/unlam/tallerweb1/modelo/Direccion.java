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

    @OneToOne(orphanRemoval = true)
    @JoinTable(name = "Direccion_usuario",
            joinColumns = @JoinColumn(name = "direccion_null"),
            inverseJoinColumns = @JoinColumn(name = "usuario_id"))
    private Usuario usuario;

}
