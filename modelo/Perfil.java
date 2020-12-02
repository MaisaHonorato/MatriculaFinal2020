package modelo;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.OneToOne;

@Entity
@Table(name = "TB_PERFIL")
public class Perfil implements Serializable{
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "ID_PERFIL", nullable = false)
    int id;
    
    @Column(name = "NIVEL_DO_USUARIO", nullable = false)
    private Nivel nivel;
    @OneToOne
    private Usuario usuario; 

    public Perfil() {
    }

    public Perfil(int id,  Nivel nivel, Usuario usuario) {
        this.id = id;
        
        this.nivel = nivel;
        this.usuario = usuario;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    

    public Nivel getNivel() {
        return nivel;
    }

    public void setNivel(Nivel nivel) {
        this.nivel = nivel;
    }
    
  public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

 }
