package controle;

import java.util.List;
import modelo.Disciplina;
import org.hibernate.Session;
import util.ConexaoBD;

public class DAODisciplina {
    public void inserirDisciplina(Disciplina a){

        Session sessao = ConexaoBD.getSessionFactory().openSession();
        sessao.beginTransaction();
        sessao.saveOrUpdate(a);
        sessao.getTransaction().commit();
        sessao.close();
    }

    public static List<Disciplina> listarDisciplinas() {
        Session s = ConexaoBD.getSessionFactory().openSession();
        s.beginTransaction();
        List<Disciplina> lista = s.createQuery("FROM Disciplina").list();
        s.getTransaction().commit();
        s.close();
        return lista;
    }

    public static  Disciplina localizarDisciplinasId(int id) {
        Session s = ConexaoBD.getSessionFactory().openSession();
        s.beginTransaction();
        Disciplina lista = (Disciplina) s.createQuery("FROM Disciplina WHERE id = " + id).uniqueResult();
        s.getTransaction().commit();
        s.close();
        return lista;
    }

    public static Disciplina localizarDisciplinasNome(String nome) {
        Session s = ConexaoBD.getSessionFactory().openSession();
        s.beginTransaction();
        Disciplina lista = (Disciplina) s.createQuery("FROM Disciplina as p WHERE p.nome=" + nome).uniqueResult();
        s.getTransaction().commit();
        s.close();
        return lista;
    }

    public static List<Disciplina> filtrarDisciplinaPorId(int i) { 
        Session sessao = ConexaoBD.getSessionFactory().openSession();
        sessao.beginTransaction();
        List<Disciplina> lista = sessao.createQuery("FROM Disciplina WHERE valor >= " + i).list();
        sessao.getTransaction().commit();
        sessao.close();
        return lista;
    }

    public static List<Disciplina> filtrarDisciplinaPorNome(String str) { 
        Session sessao = ConexaoBD.getSessionFactory().openSession();
        sessao.beginTransaction();
        List<Disciplina> lista = sessao.createQuery("FROM Disciplina WHERE nome like '%" + str + "%'").list();
        sessao.getTransaction().commit();
        sessao.close();
        return lista;
    }
}