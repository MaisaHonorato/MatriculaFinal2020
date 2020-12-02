package modelo;

public enum Nivel {
    SECRETARIA("Secretaria"), PROFESSOR("Professor"), ALUNO("Aluno");
    private final String valor;

    private Nivel(String valor) {
        this.valor = valor;
    }

    @Override
    public String toString() {
        return valor;
    }
}
