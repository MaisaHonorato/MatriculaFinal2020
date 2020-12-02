package modelo;

import controle.DAODiario;
import java.util.List;
import modelo.Frequencia;
import modelo.Diario;
import modelo.Boletim;


public class Calculo {

     for(Diario d : DAODiario.localizarDiariosId() ){
       d.getFrequencias();
       
        Double notafinal;
    
public static void CalculoSoma {
	
	for(Avaliacao ava

}

public static void CalculoMedia {
	
	for(Avaliacao ava

}
        
public static String CalculoBoletim() {
      
       
    if (notafinal >= 6.0 && (quantdeaula/3) >= quantfrequencia){
        return "Aprovado";
    }if(notafinal >= 6.0 && (quantdeaula/3) <= quantfrequencia){
        return "Reprovado";
    }if(notafinal <= 6.0 && (quantdeaula/3) >= quantfrequencia){
        return "Reprovado";
    }else{return "Pendente";}
}

 public static List<Frequencia> quantFrequencia(int quantfrequencia)  {
           
        while(statsfreq != 0) { for(int count = -1 ; count <= quantdeaula ; count++){
               quantfrequencia = count;
               System.out.println("Participou "+ quantfrequencia + " Aulas.");
           }
                
        }
            while(quantdeaula == 0){System.out.println("Não houve aula! "+ quantdeaula);
            }
            }
      }
