package controle;

import java.util.ArrayList;
import java.util.List;
import modelo.Diario;
import modelo.Frequencia;
import org.hibernate.Session;
import util.ConexaoBD;

public class DAODiario {

    public void inserirDiario(Diario a) {

        Session sessao = ConexaoBD.getSessionFactory().openSession();
        sessao.beginTransaction();
        sessao.saveOrUpdate(a);
        sessao.getTransaction().commit();
        sessao.close();
    }

    public static List<Diario> listarDiarios() {
        Session s = ConexaoBD.getSessionFactory().openSession();
        s.beginTransaction();
        List<Diario> lista = s.createQuery("FROM Diario").list();
        s.getTransaction().commit();
        s.close();
        return lista;
    }

    public static Diario localizarDiariosId(int id) {
        Session s = ConexaoBD.getSessionFactory().openSession();
        s.beginTransaction();
        Diario lista = (Diario) s.createQuery("FROM Diario WHERE id = " + id).uniqueResult();
        s.getTransaction().commit();
        s.close();
        return lista;
    }

    public static Diario localizarDiariosNome(String nome) {
        Session s = ConexaoBD.getSessionFactory().openSession();
        s.beginTransaction();
        Diario lista = (Diario) s.createQuery("FROM Diario as p WHERE p.nome=" + nome).uniqueResult();
        s.getTransaction().commit();
        s.close();
        return lista;
    }

    public static List<Diario> filtrarDiarioPorId(int i) {
        Session sessao = ConexaoBD.getSessionFactory().openSession();
        sessao.beginTransaction();
        List<Diario> lista = sessao.createQuery("FROM Diario WHERE valor >= " + i).list();
        sessao.getTransaction().commit();
        sessao.close();
        return lista;
    }

    public static List<Diario> filtrarDiarioPorNome(String str) {
        Session sessao = ConexaoBD.getSessionFactory().openSession();
        sessao.beginTransaction();
        List<Diario> lista = sessao.createQuery("FROM Diario WHERE nome like '%" + str + "%'").list();
        sessao.getTransaction().commit();
        sessao.close();
        return lista;
    }

   

}
