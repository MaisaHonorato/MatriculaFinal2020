package controle;

import java.util.List;
import modelo.Aluno;
import org.hibernate.Session;
import util.ConexaoBD;

public class DAOAluno {
    
   
    public static void inserirAluno(Aluno a) {

        Session sessao = ConexaoBD.getSessionFactory().openSession();
        sessao.beginTransaction();
        sessao.saveOrUpdate(a);
        sessao.getTransaction().commit();
        sessao.close();
    }

    public  void updateAluno(Aluno a){
        Session s = ConexaoBD.getSessionFactory().openSession();
        s.beginTransaction();
        s.update(a);
        s.getTransaction().commit();
        s.close();
    }
    
    public  List<Aluno> listarAlunos() {
        Session s = ConexaoBD.getSessionFactory().openSession();
        s.beginTransaction();
        List<Aluno> lista = s.createQuery("FROM Aluno").list();
        s.getTransaction().commit();
        s.close();
        return lista;
    }

    public Aluno localizarAlunosId(int id) {
        Session s = ConexaoBD.getSessionFactory().openSession();
        s.beginTransaction();
        Aluno lista = (Aluno) s.createQuery("FROM Aluno WHERE id = " + id).uniqueResult();
        s.getTransaction().commit();
        s.close();
        return lista;
    }

    public  Aluno localizarAlunosNome(String nome) {
        Session s = ConexaoBD.getSessionFactory().openSession();
        s.beginTransaction();
        Aluno lista = (Aluno) s.createQuery("FROM Aluno WHERE nome=" + nome).uniqueResult();
        s.getTransaction().commit();
        s.close();
        return lista;
    }

    public  List<Aluno> filtrarAlunoPorId(int i) { 
        Session sessao = ConexaoBD.getSessionFactory().openSession();
        sessao.beginTransaction();
        List<Aluno> lista = sessao.createQuery("FROM Aluno WHERE valor >= " + i).list();
        sessao.getTransaction().commit();
        sessao.close();
        return lista;
    }

    public  List<Aluno> filtrarAlunoPorNome(String str) { 
        Session sessao = ConexaoBD.getSessionFactory().openSession();
        sessao.beginTransaction();
        List<Aluno> lista = sessao.createQuery("FROM Aluno WHERE nome like '%" + str + "%'").list();
        sessao.getTransaction().commit();
        sessao.close();
        return lista;
    }
     
}