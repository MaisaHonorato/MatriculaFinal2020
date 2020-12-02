package modelo;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


@Entity
public class Funcionario extends Pessoa implements Salario{

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "ID_FUNCIONARIO", nullable = false)
    private int id;
    @Column(name = "DATA_DE_ADMISSAO", nullable = false)
    private String dataAdmissao;
    private String cargo;
    
    public int salario; //Interface
    public Funcionario(int aSalario) {
    this.salario = aSalario;
  }

    public Funcionario() {
    }

    public Funcionario(  String dataAdmissao, String cargo) {
       this.dataAdmissao = dataAdmissao;
        this.cargo = cargo;
        
    }

        
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDataAdmissao() {
        return dataAdmissao;
    }

    public void setDataAdmissao(String dataAdmissao) {
        this.dataAdmissao = dataAdmissao;
    }

    public String getCargo() {
        return cargo;
    }

    public void setCargo(String cargo) {
        this.cargo = cargo;
    }
    
    
  @Override
  public int getSalario() {
    return this.salario;
  }

}
