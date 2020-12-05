package modelo;

import modelo.Avaliacao;
import modelo.Matricula;
import modelo.Boletim;
import modelo.Disciplina;
import modelo.Frequencia;
import controle.DAOAvaliacao;
import controle.DAODiario;
import controle.DAODisciplina;
import controle.DAOFrequencia;
import controle.DAOMatricula;
import java.util.List;

public class Calculo {

        
        Matricula m = DAOMatricula.localizarMatriculasId(id);
        Diario d = DAODiario.localizarDiariosId(id);
        Frequencia f = DAOFrequencia.localizarFrequenciasId(id);
        Avaliacao ava = DAOAvaliacao.localizarAvaliacoesId(id);
        Disciplina dis = DAODisciplina.localizarDisciplinasId(id);
       
        
    
public static void CalculoSoma (double nota, double notafinal) {
	int id = Integer.parseInt( getParameter("id") );
	notafinal=-1.0;
	for(Avaliacao ava : DAOAvaliacao.listarAvaliacoes()) {
            if(ava.getDisciplina().equals(ava.Disciplina) && ava.getBimestre().equals(ava.bimestre)
                    && m.getAluno().equals(ava.getMatricula().getAluno())){
                ava.getNota() + notafinal = notafinal;
            }
        }

}

public static void CalculoMedia (double nota, double notafinal, double nf, int x) {
	notafinal=0.0;
        nf = -1.0;
        
	for(Avaliacao ava : DAOAvaliacao.listarAvaliacoes()) {
            if(ava.getDisciplina().equals(ava.Disciplina) && ava.getBimestre().equals(ava.bimestre)) 
                && m.getAluno().equals(ava.getMatricula().getAluno()){
            ava.getNota() + nf = nf;
        }}
             x=ava.getId();
            
        for(int i=0; i<=x.length();i++){
           nf/x = notafinal;
        }

}
        
public static String CalculoBoletim( String valor, int quantdeaula, int quantfrequencia, double notafinal ) {
      
    while(m.getAluno().equals(d.getMatriculas().equals(ava.getMatricula())) && d.getDisciplina().equals(ava.getDisciplina()) && ava.getBimestre()
            )   
    if (d.getNotafinal() >= 6.0) && (dis.getQuantdeaulabimestral()/3 >= f.quantfrequencia){
        return "Aprovado";
    }if(d.getNotafinal() >= 6.0) && (dis.getQuantdeaulabimestral()/3 <= f.quantfrequencia){
        return "Reprovado";
    }if(d.getNotafinal() <= 6.0) && (dis.getQuantdeaulabimestral()/3 >= quantfrequencia){
        return "Reprovado";
    }else{return "Pendente";}
}

 public static List<Frequencia> quantFrequencia(int quantfrequencia,int quantdeaula, boolean statsfreq, int count )  {
          count = 0;
          for(Avaliacao ava : DAOAvaliacao.listarAvaliacoes())
        while(statsfreq != 0) { for(count = 0 ; count <= quantdeaula ; count++){
               quantfrequencia = count;
               System.out.println("Participou "+ quantfrequencia + " Aulas.");
           }
                
        }
            while(quantdeaula == 0){System.out.println("Não houve aula! "+ quantdeaula);
            }
            }
      }
