package controle;

import java.util.List;
import modelo.Professor;
import org.hibernate.Session;
import util.ConexaoBD;

public class DAOProfessor {

    public static void inserirProfessor(Professor a) {
        Session s = ConexaoBD.getSessionFactory().openSession();
        s.beginTransaction();
        s.saveOrUpdate(a);
        s.getTransaction().commit();
        s.close();
    }

    public static List<Professor> listarProfessores() {
        Session s = ConexaoBD.getSessionFactory().openSession();
        s.beginTransaction();
        List<Professor> lista = s.createQuery("FROM Professor").list();
        s.getTransaction().commit();
        s.close();
        return lista;
    }

    public static Professor localizarProfessoresId(int id) {
        Session s = ConexaoBD.getSessionFactory().openSession();
        s.beginTransaction();
        Professor lista = (Professor) s.createQuery("FROM Professor WHERE id = " + id).uniqueResult();
        s.getTransaction().commit();
        s.close();
        return lista;
    }

    public static List<Professor> filtrarProfessorPorId(int id) {
        Session sessao = ConexaoBD.getSessionFactory().openSession();
        sessao.beginTransaction();
        List<Professor> lista = sessao.createQuery("FROM Professor WHERE id >= " + id).list();
        sessao.getTransaction().commit();
        sessao.close();
        return lista;
    }

    public static List<Professor> filtrarProfessorPorNome(String str) {
        Session sessao = ConexaoBD.getSessionFactory().openSession();
        sessao.beginTransaction();
        List<Professor> lista = sessao.createQuery("FROM Professor WHERE nome like '%" + str + "%'").list();
        sessao.getTransaction().commit();
        sessao.close();
        return lista;
    }

}
