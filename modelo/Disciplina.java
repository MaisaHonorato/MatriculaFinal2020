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
import javax.persistence.OneToOne;

/**
 *
 * @author Maisa Honorato
 */
@Entity
public class Disciplina implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "ID_DISCIPLINA")
    private int id;
    private String nome;
    private int anoletivo;
    private int quantdeaulabimestral;
    private int quantdeaulanual;
    private String ementa;
    @OneToOne
    private Serie serie;

    public Disciplina() {
    }

    public Disciplina(String nome, int anoletivo, int quantaula, String professor) {
        this.nome = nome;
        this.anoletivo = anoletivo;
        
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

    public int getAnoletivo() {
        return anoletivo;
    }

    public void setAnoletivo(int anoletivo) {
        this.anoletivo = anoletivo;
    }

    public int getQuantdeaulabimestral() {
        return quantdeaulabimestral;
    }

    public void setQuantdeaulabimestral(int quantdeaulabimestral) {
        this.quantdeaulabimestral = quantdeaulabimestral;
    }

    public int getQuantdeaulanual() {
        return quantdeaulanual;
    }

    public void setQuantdeaulanual(int quantdeaulanual) {
        this.quantdeaulanual = quantdeaulanual;
    }

    public String getEmenta() {
        return ementa;
    }

    public void setEmenta(String ementa) {
        this.ementa = ementa;
    }

    public Serie getSerie() {
        return serie;
    }

    public void setSerie(Serie serie) {
        this.serie = serie;
    }

    

   
    
    
}
