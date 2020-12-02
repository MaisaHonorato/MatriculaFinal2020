package controle;

import java.util.List;
import modelo.Avaliacao;
import org.hibernate.Session;
import util.ConexaoBD;

public class DAOAvaliacao {

    public static void inserirAvaliacao(Avaliacao a){

        Session sessao = ConexaoBD.getSessionFactory().openSession();
        sessao.beginTransaction();
        sessao.saveOrUpdate(a);
        sessao.getTransaction().commit();
        sessao.close();
    }

    public static List<Avaliacao> listarAvaliacoes() {
        Session s = ConexaoBD.getSessionFactory().openSession();
        s.beginTransaction();
        List<Avaliacao> lista = s.createQuery("FROM Avaliacao").list();
        s.getTransaction().commit();
        s.close();
        return lista;
    }

    public static Avaliacao localizarAvaliacoesId(int id) {
        Session s = ConexaoBD.getSessionFactory().openSession();
        s.beginTransaction();
        Avaliacao lista = (Avaliacao) s.createQuery("FROM Avaliacao WHERE id = " + id).uniqueResult();
        s.getTransaction().commit();
        s.close();
        return lista;
    }

    public static Avaliacao localizarAvaliacoesNome(String nome) {
        Session s = ConexaoBD.getSessionFactory().openSession();
        s.beginTransaction();
        Avaliacao lista = (Avaliacao) s.createQuery("FROM Avaliacao as p WHERE p.nome=" + nome).uniqueResult();
        s.getTransaction().commit();
        s.close();
        return lista;
    }

    public  List<Avaliacao> filtrarAvaliacaoPorId(int i) { 
        Session sessao = ConexaoBD.getSessionFactory().openSession();
        sessao.beginTransaction();
        List<Avaliacao> lista = sessao.createQuery("FROM Avaliacao WHERE valor >= " + i).list();
        sessao.getTransaction().commit();
        sessao.close();
        return lista;
    }

    public static List<Avaliacao> filtrarAvaliacaoPorNome(String str) { 
        Session sessao = ConexaoBD.getSessionFactory().openSession();
        sessao.beginTransaction();
        List<Avaliacao> lista = sessao.createQuery("FROM Avaliacao WHERE nome like '%" + str + "%'").list();
        sessao.getTransaction().commit();
        sessao.close();
        return lista;
    }
    
}
