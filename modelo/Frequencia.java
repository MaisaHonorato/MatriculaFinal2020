package modelo;

import java.awt.desktop.PrintFilesEvent;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@Entity

public class Frequencia implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "ID_FREQUENCIA", nullable = false)
    private int id;
    @Column(name = "DATA_FREQUENCIA", nullable = false)
    private String data;
    @Column(name = "QUANTIDADE_DE_AULA_POR_DIA", nullable = false)
    private int quantdeaula;
    @Column(name = "PRESENCA", nullable = false)
    private boolean statsfreq;
    int quantfrequencia;

    public Frequencia() {
    }

    public Frequencia( String data, int quantdeaula, boolean statsfreq) {
        
        this.data = data;
        this.quantdeaula = quantdeaula;
        this.statsfreq = statsfreq;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }

    public int getQuantdeaula() {
        return quantdeaula;
    }

    public void setQuantdeaula(int quantdeaula) {
        this.quantdeaula = quantdeaula;
    }

    public boolean isStatsfreq() {
        return statsfreq;
    }

    public void setStatsfreq(boolean statsfreq) {
        this.statsfreq = statsfreq;
    }

     }
