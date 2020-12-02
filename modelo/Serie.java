package modelo;

import java.io.Serializable;
import java.util.ArrayList;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "TB_SERIE")
public class Serie implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "ID_SERIE", nullable = false)
    private int id;
    private String nome;
    @Column(name = "ANO_LETIVO", nullable = false)
    private int ano;
    @OneToMany
    private ArrayList<Disciplina> disciplinas = new ArrayList<>();
    
    public Serie() {
    }

    public Serie(int id, String nome, int ano) {
        this.id = id;
        this.nome = nome;
        this.ano = ano;
        //this.disciplinas = disciplinas;
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

    public int getAno() {
        return ano;
    }

    public void setAno(int ano) {
        this.ano = ano;
    }

    public ArrayList<Disciplina> getDisciplinas() {
        return disciplinas;
    }

    public void setDisciplinas(ArrayList<Disciplina> disciplinas) {
        this.disciplinas = disciplinas;
    }

   

    

   

}
