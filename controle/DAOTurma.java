package controle;

import java.util.List;
import modelo.Turma;
import org.hibernate.Session;
import util.ConexaoBD;

public class DAOTurma {

    public static void salvarTurma(Turma tur) {

        for (Turma t : listarTurmas()) {
            if (tur.getTurno().equals(t.getTurno())) {
                System.err.println("Turma ja cadastrada");
                return;
            }
        }

        inserirTurma(tur);
    }

    private static void inserirTurma(Turma tu) {

        Session sessao = ConexaoBD.getSessionFactory().openSession();
        sessao.beginTransaction();
        sessao.save(tu);
        sessao.getTransaction().commit();
        sessao.close();
    }

    public static void updateTurma(Turma a) {
        Session s = ConexaoBD.getSessionFactory().openSession();
        s.beginTransaction();
        s.update(a);
        s.getTransaction().commit();
        s.close();
    }

    public static List<Turma> listarTurmas() {
        Session s = ConexaoBD.getSessionFactory().openSession();
        s.beginTransaction();
        List<Turma> lista = s.createQuery("FROM Turma").list();
        s.getTransaction().commit();
        s.close();
        return lista;
    }

    public static Turma localizarTurmasId(int id) {
        Session s = ConexaoBD.getSessionFactory().openSession();
        s.beginTransaction();
        Turma lista = (Turma) s.createQuery("FROM Turma WHERE id = " + id).uniqueResult();
        s.getTransaction().commit();
        s.close();
        return lista;
    }

    public static Turma localizarTurmasNome(String nome) {
        Session s = ConexaoBD.getSessionFactory().openSession();
        s.beginTransaction();
        Turma lista = (Turma) s.createQuery("FROM Turma as p WHERE p.nome=" + nome).uniqueResult();
        s.getTransaction().commit();
        s.close();
        return lista;
    }
    
    public static List<Turma> filtrarTurmaPorId(int id) { 
        Session sessao = ConexaoBD.getSessionFactory().openSession();
        sessao.beginTransaction();
        List<Turma> lista = sessao.createQuery("FROM Turma WHERE id >= " + id).list();
        sessao.getTransaction().commit();
        sessao.close();
        return lista;
    }

    public static List<Turma> filtrarTurmaPorNome(String str) { 
        Session sessao = ConexaoBD.getSessionFactory().openSession();
        sessao.beginTransaction();
        List<Turma> lista = sessao.createQuery("FROM Turma WHERE nome like '%" + str + "%'").list();
        sessao.getTransaction().commit();
        sessao.close();
        return lista;
    }

}
