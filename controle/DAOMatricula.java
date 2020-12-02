package controle;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import modelo.Matricula;
import org.hibernate.Session;
import util.ConexaoBD;

public class DAOMatricula {

    public static void salvarMatricula(Matricula mat) {

        for (Matricula m : listarMatriculas()) {
            if (mat.getAluno().getRg().equals(m.getAluno().getRg())) {
                System.err.println("Matricula ja cadastrada");
                return;
            }
        }

        inserirMatricula(mat);
    }

    private static void inserirMatricula(Matricula mat) {

        Session sessao = ConexaoBD.getSessionFactory().openSession();
        sessao.beginTransaction();
        sessao.save(mat);
        sessao.getTransaction().commit();
        sessao.close();
    }

    public static void updateMatricula(Matricula a){
        Session s = ConexaoBD.getSessionFactory().openSession();
        s.beginTransaction();
        s.update(a);
        s.getTransaction().commit();
        s.close();
    }
    
    public static List<Matricula> listarMatriculas() {
        Session s = ConexaoBD.getSessionFactory().openSession();
        s.beginTransaction();
        List<Matricula> lista = s.createQuery("FROM Matricula").list();
        s.getTransaction().commit();
        s.close();
        return lista;
    }

    public  static Matricula localizarMatriculasId(int id) {
        Session s = ConexaoBD.getSessionFactory().openSession();
        s.beginTransaction();
        Matricula lista = (Matricula) s.createQuery("FROM Matricula WHERE id = " + id).uniqueResult();
        s.getTransaction().commit();
        s.close();
        return lista;
    }

    public static Matricula localizarMatriculasNome(String nome) {
        Session s = ConexaoBD.getSessionFactory().openSession();
        s.beginTransaction();
        Matricula lista = (Matricula) s.createQuery("FROM Matricula as p WHERE p.nome=" + nome).uniqueResult();
        s.getTransaction().commit();
        s.close();
        return lista;
    }

    public static List<Matricula> filtrarMatriculaPorId(int i) { 
        Session sessao = ConexaoBD.getSessionFactory().openSession();
        sessao.beginTransaction();
        List<Matricula> lista = sessao.createQuery("FROM Matricula WHERE valor >= " + i).list();
        sessao.getTransaction().commit();
        sessao.close();
        return lista;
    }

    public static List<Matricula> filtrarMatriculaPorNome(String str) { 
        Session sessao = ConexaoBD.getSessionFactory().openSession();
        sessao.beginTransaction();
        List<Matricula> lista = sessao.createQuery("FROM Matricula WHERE nome like '%" + str + "%'").list();
        sessao.getTransaction().commit();
        sessao.close();
        return lista;
    }
    
    public static String formatarData(Date datamat) {
        SimpleDateFormat sdf = new SimpleDateFormat("dd/mm/yyyy");
        return sdf.format(datamat);
        
    }

}
