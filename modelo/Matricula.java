package modelo;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;

@Entity
@Table(name = "TB_MATRICULA")
public class Matricula implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "ID_MATRICULA", nullable = false)
    private int id;
    @Column(name = "DATA_DA_MATRICULA", nullable = false)
    @Temporal(javax.persistence.TemporalType.DATE)
    private Date datamat;
    @OneToOne
    private Aluno aluno;
    @OneToOne
    private Serie serie;
    @OneToOne
    private Turma turma;
    @OneToOne
    private Turno turno;
    
    @Column(name = "STATUS_DA_MATRICULA", nullable = false)
    private boolean ativo;

    public Matricula() {
    }

    public Matricula(int id, Date datamat, Aluno aluno, Serie serie, Turma turma, Turno turno, boolean ativo) {
        this.id = id;
        this.datamat = datamat;
        this.aluno = aluno;
        this.serie = serie;
        this.turma = turma;
        this.turno = turno;
        this.ativo = true;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getDatamat() {
        return datamat;
    }

    public void setDatamat(Date datamat) {
        this.datamat = datamat;
    }

    public Aluno getAluno() {
        return aluno;
    }

    public void setAluno(Aluno aluno) {
        this.aluno = aluno;
    }

    public Turno getTurno() {
        return turno;
    }

    public void setTurno(Turno turno) {
        this.turno = turno;
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

    public boolean isAtivo() {
        return ativo;
    }

    public void setAtivo(boolean ativo) {
        this.ativo = ativo;
    }

    @Override
    public String toString() {
        return "Matricula{" + "id=" + id + ", datamat=" + datamat + ", aluno=" + aluno + ", serie=" + serie + ", turma=" + turma + ", turno=" + turno + '}';
    }

}
