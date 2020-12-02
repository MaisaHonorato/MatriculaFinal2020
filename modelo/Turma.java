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
@Table(name = "TB_TURMA")
public class Turma implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "ID_TURMA", nullable = false)
    private int id;
   
    @Column(name = "NOME_DA_TURMA", nullable = false)
    private String nome;
    private int sala;
    
    @OneToOne
    private Turno turno;
    
    public Turma() {
    }

    public Turma(int id, String nome, int sala, Turno turno) {
        this.id = id;
        this.nome = nome;
        this.sala = sala;
        this.turno = turno;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getSala() {
        return sala;
    }

    public void setSala(int sala) {
        this.sala = sala;
    }

    public Turno getTurno() {
        return turno;
    }

    public void setTurno(Turno turno) {
        this.turno = turno;
    }

}
