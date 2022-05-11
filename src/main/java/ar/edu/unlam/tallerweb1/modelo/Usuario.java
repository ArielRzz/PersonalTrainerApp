package ar.edu.unlam.tallerweb1.modelo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import javax.persistence.*;

// Clase que modela el concepto de Usuario, la anotacion @Entity le avisa a hibernate que esta clase es persistible
// el paquete ar.edu.unlam.tallerweb1.modelo esta indicado en el archivo hibernateCOntext.xml para que hibernate
// busque entities en el
@Entity
@Getter
@Setter
@NoArgsConstructor
public class Usuario{
	// La anotacion id indica que este atributo es el utilizado como clave primaria de la entity, se indica que el valor es autogenerado.
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	// para el resto de los atributo no se usan anotaciones entonces se usa el default de hibernate: la columna se llama igual que
	// el atributo, la misma admite nulos, y el tipo de dato se deduce del tipo de dato de java.
	private String nombre;
	private String apellido;
	private String email;
	private String password;
	private String rol;
	private Boolean activo = false;

	//OneToOne(mappedBy = "usuario")
	//private Direccion direccion;

	@OneToOne
	private Plan plan;
	
	//private Boolean activo = false;

	public void activar() {
		activo = true;
    }

}
