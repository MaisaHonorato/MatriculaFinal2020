package modelo;

import java.io.Serializable;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class Aluno extends Pessoa implements Serializable {

    @Id
    @GeneratedValue
    private int id;
    private String rg;
    private String datanasc;
    
    @OneToOne (cascade = CascadeType.ALL)
	private Endereco endereco; 		
	
	
	public Endereco getEnd() {
		return endereco;
	}

	public void setEnd(Endereco end) {
		this.endereco = end;
	}

    public Aluno() {
    }

    public Aluno( String rg, String datanasc) {
        this.rg = rg;
        this.datanasc = datanasc;
        //this.endereco = endereco;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getRg() {
        return rg;
    }

    public void setRg(String rg) {
        this.rg = rg;
    }

    public String getDatanasc() {
        return datanasc;
    }

    public void setDatanasc(String datanasc) {
        this.datanasc = datanasc;
    }
    

}
