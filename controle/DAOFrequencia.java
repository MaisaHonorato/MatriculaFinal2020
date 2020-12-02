package controle;

import java.util.List;
import modelo.Frequencia;
import org.hibernate.Session;
import util.ConexaoBD;

public class DAOFrequencia {
    
    public static void inserirFrequencia(Frequencia a){
        Session s = ConexaoBD.getSessionFactory().openSession();
        s.beginTransaction();
        s.saveOrUpdate(a);
        s.getTransaction().commit();
        s.close();
    }
    
    public static List<Frequencia> listarFrequencias(){
        Session s = ConexaoBD.getSessionFactory().openSession();
        s.beginTransaction();
        List<Frequencia> lista = s.createQuery("FROM Frequencia").list();
        s.getTransaction().commit();
        s.close();
        return lista;
    }
    
    public static Frequencia localizarFrequenciasId(int id) {
        Session s = ConexaoBD.getSessionFactory().openSession();
        s.beginTransaction();
        Frequencia lista = (Frequencia) s.createQuery("FROM Frequencia WHERE id = " + id).uniqueResult();
        s.getTransaction().commit();
        s.close();
        return lista;
    }

    public static Frequencia localizarFrequenciasData(String data) {
        Session s = ConexaoBD.getSessionFactory().openSession();
        s.beginTransaction();
        Frequencia lista = (Frequencia) s.createQuery("FROM Frequencia WHERE data=" + data).uniqueResult();
        s.getTransaction().commit();
        s.close();
        return lista;
    }
    
    public static List<Frequencia> filtrarFrequenciaPorId(int i) { 
        Session sessao = ConexaoBD.getSessionFactory().openSession();
        sessao.beginTransaction();
        List<Frequencia> lista = sessao.createQuery("FROM Frequencia WHERE valor >= " + i).list();
        sessao.getTransaction().commit();
        sessao.close();
        return lista;
    }

    public static List<Frequencia> filtrarFrequenciaPorNome(String str) { 
        Session sessao = ConexaoBD.getSessionFactory().openSession();
        sessao.beginTransaction();
        List<Frequencia> lista = sessao.createQuery("FROM Frequencia WHERE nome like '%" + str + "%'").list();
        sessao.getTransaction().commit();
        sessao.close();
        return lista;
    }
    
    

}
