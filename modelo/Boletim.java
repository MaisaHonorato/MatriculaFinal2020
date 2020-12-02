package modelo;

public enum Boletim {
    
    APROVADO( "Aprovado"), REPROVADO("Reprovado"), PENDENTE("Pendente");

   private final String valor;
   
     private Boletim(String valor) {
        this.valor = valor;
    }
    
    @Override
    public String toString() {
        return valor;
    }
}
