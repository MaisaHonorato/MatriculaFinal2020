package controle;

import java.util.List;
import modelo.Serie;
import org.hibernate.Session;
import util.ConexaoBD;

public class DAOSerie {

    public void inserirSerie(Serie a) {
        Session s = ConexaoBD.getSessionFactory().openSession();
        s.beginTransaction();
        s.saveOrUpdate(a);
        s.getTransaction().commit();
        s.close();
    }

    public  static List<Serie> listarSeries() {
        Session s = ConexaoBD.getSessionFactory().openSession();
        s.beginTransaction();
        List<Serie> lista = s.createQuery("FROM Serie").list();
        s.getTransaction().commit();
        s.close();
        return lista;
    }

    public Serie localizarSeriesId(int id) {
        Session s = ConexaoBD.getSessionFactory().openSession();
        s.beginTransaction();
        Serie lista = (Serie) s.createQuery("FROM Serie WHERE id=" + id).uniqueResult();
        s.getTransaction().commit();
        s.close();
        return lista;
    }
    
    public Serie localizarSeriesNome(String nome) {
        Session s = ConexaoBD.getSessionFactory().openSession();
        s.beginTransaction();
        Serie lista = (Serie) s.createQuery("FROM Serie WHERE nome=" + nome).uniqueResult();
        s.getTransaction().commit();
        s.close();
        return lista;
    }

    public Serie localizarSeriesAno(int ano) {
        Session s = ConexaoBD.getSessionFactory().openSession();
        s.beginTransaction();
        Serie lista = (Serie) s.createQuery("FROM Serie WHERE dataletivo = " + ano).uniqueResult();
        s.getTransaction().commit();
        s.close();
        return lista;
    }

    public static List<Serie> filtrarSeriePorNome(String str) {
        Session s = ConexaoBD.getSessionFactory().openSession();
        s.beginTransaction();
        List<Serie> lista = s.createQuery("FROM Serie WHERE nome like '%" + str + "%'").list();
        s.getTransaction().commit();
        s.close();
        return lista;
    }

}
