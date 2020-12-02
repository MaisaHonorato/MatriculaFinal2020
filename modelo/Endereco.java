/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 *
 * @author Maisa Honorato
 */

@Entity
public class Endereco implements Serializable {

	@Id
        @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "CODIGO_ENDERECO")
	private int codigo;		
	
        private String cep;
	private String rua;
        private String numero;
	private String bairro;
	private String cidade;
	private String estado;
	
	
	public Endereco() {}
	
	public Endereco(int codigo, String cep, String rua, String bairro, String cidade, String numero, String estado) {
		super();
		this.codigo = codigo;
                this.cep = cep;
		this.rua = rua;
                this.numero = numero;
		this.bairro = bairro;
		this.cidade = cidade;
		this.estado = estado;
	}

	
	// M�todos especiais de acesso (get) e modifica��o (set)
	public int getCodigo() {
		return codigo;
	}

	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}
        
        public String getCep() {
		return rua;
	}

	public void setCep(String cep) {
		this.cep = cep;
	}

	public String getRua() {
		return rua;
	}

	public void setRua(String rua) {
		this.rua = rua;
	}

	public String getBairro() {
		return bairro;
	}

	public void setBairro(String bairro) {
		this.bairro = bairro;
	}

	public String getCidade() {
		return cidade;
	}

	public void setCidade(String cidade) {
		this.cidade = cidade;
	}

	public String getNumero() {
		return numero;
	}

	public void setNumero(String numero) {
		this.numero = numero;
	}

        public String getEstado() {
            return estado;
        }

        public void setEstado(String estado) {
            this.estado = estado;
        }
	
	
}
