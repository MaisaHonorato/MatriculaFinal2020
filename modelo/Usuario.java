package modelo;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "TB_USUARIO")
public class Usuario implements Serializable{
    
     @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "ID_USUARIO", nullable = false)
    private int id;
     
     @OneToOne
     @Column(name = "EMAIL_DO_USUARIO", nullable = false)
    private String nickname;
     
     @Column(name = "SENHA_DO_USUARIO", nullable = false)
    private String senha;
     
     @OneToOne
     @Column(name = "PERFIL_DO_USUARIO", nullable = false)
    private Perfil perfil;
    
     @Column(name = "USUARIO", nullable = false)
     @OneToOne
    private Pessoa pessoa;

    public Usuario() {
    }

    public Usuario(int id, String nickname, String senha, Perfil perfil, Pessoa pessoa) {
        this.id = id;
        this.nickname = nickname;
        this.senha = senha;
        this.perfil = perfil;
        this.pessoa = pessoa;
    }

    public Pessoa getPessoa() {
        return pessoa;
    }

    public void setPessoa(Pessoa pessoa) {
        this.pessoa = pessoa;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public Perfil getPerfil() {
        return perfil;
    }

    public void setPerfil(Perfil perfil) {
        this.perfil = perfil;
    }

    @Override
    public String toString() {
        return "chamou!";
    }
    
    
}
