package modelo;

/**
 *
 * @author Maisa Honorato
 */

public enum Turno {
    MATUTINO("Matutino"), VESPERTINO("Vespertino"), NOTURNO("Noturno");
    private final String valor;

    private Turno(String valor) {
        this.valor = valor;
    }

    @Override
    public String toString() {
        return valor;
    }
}
