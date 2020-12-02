package modelo;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;

/**
 *
 * @author Maisa Honorato
 */
@Entity
@SequenceGenerator(name = "DIARIO_SEQ", sequenceName = "DIARIO_SEQ", initialValue = 1, allocationSize = 1)
public class Diario implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "ID_DIARIO")
    int id;
    String descricao;
    
    String dataletivo;
    @OneToMany
    ArrayList<Avaliacao> avaliacoes = new ArrayList<>();

    @OneToMany
    ArrayList<Frequencia> frequencias = new ArrayList<>();

    @OneToOne
    Disciplina disciplina;

    @OneToOne
    Professor professor;

    @OneToOne
    Serie serie;

    @OneToOne
    Turma turma;

    @OneToMany
    ArrayList<Matricula> matriculas = new ArrayList<>();

    public Diario() {
    }

    public Diario(int id, String descricao, String dataletivo, Disciplina disciplina, Professor professor, Serie serie) {
        this.id = id;
        this.descricao = descricao;
        this.dataletivo = dataletivo;
        this.disciplina = disciplina;
        this.professor = professor;
        this.serie = serie;
        
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public String getDataletivo() {
        return dataletivo;
    }

    public void setDataletivo(String dataletivo) {
        this.dataletivo = dataletivo;
    }

    public ArrayList<Avaliacao> getAvaliacoes() {
        return avaliacoes;
    }

    public void setAvaliacoes(ArrayList<Avaliacao> avaliacoes) {
        this.avaliacoes = avaliacoes;
    }

    public Disciplina getDisciplina() {
        return disciplina;
    }

    public void setDisciplina(Disciplina disciplina) {
        this.disciplina = disciplina;
    }

    public ArrayList<Frequencia> getFrequencias() {
        return frequencias;
    }

    public void setFrequencias(ArrayList<Frequencia> frequencias) {
        this.frequencias = frequencias;
    }

    public Professor getProfessor() {
        return professor;
    }

    public void setProfessor(Professor professor) {
        this.professor = professor;
    }

    public Serie getSerie() {
        return serie;
    }

    public void setSerie(Serie serie) {
        this.serie = serie;
    }

    public Turma getTurma() {
        return turma;
    }

    public void setTurma(Turma turma) {
        this.turma = turma;
    }

    public ArrayList<Matricula> getMatriculas() {
        return matriculas;
    }

    public void setMatriculas(ArrayList<Matricula> matriculas) {
        this.matriculas = matriculas;
    }

}
