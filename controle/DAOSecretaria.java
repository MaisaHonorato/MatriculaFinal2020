package controle;


import java.util.List;
import modelo.Secretaria;
import org.hibernate.Session;
import util.ConexaoBD;

public class DAOSecretaria {
    
    public void inserirSecretaria(Secretaria a){
        Session s = ConexaoBD.getSessionFactory().openSession();
        s.beginTransaction();
        s.save(a);
        s.getTransaction().commit();
        s.close();
    }
    
    public void updateSecretaria(Secretaria a){
        Session s = ConexaoBD.getSessionFactory().openSession();
        s.beginTransaction();
        s.update(a);
        s.getTransaction().commit();
        s.close();
    }
    
    public List<Secretaria> listarSecretarias(){
        Session s = ConexaoBD.getSessionFactory().openSession();
        s.beginTransaction();
        List<Secretaria> lista = s.createQuery("FROM Secretaria").list();
        s.getTransaction().commit();
        s.close();
        return lista;
    }
    
    public Secretaria localizarSecretariasId(int id){
        Session s = ConexaoBD.getSessionFactory().openSession();
        s.beginTransaction();
        Secretaria lista = (Secretaria) s.createQuery("FROM Secretaria WHERE id = " + id).uniqueResult();
        s.getTransaction().commit();
        s.close();
        return lista;
    }
    
    public Secretaria localizarSecretariasNome(String nome){
        Session s = ConexaoBD.getSessionFactory().openSession();
        s.beginTransaction();
        Secretaria lista = (Secretaria) s.createQuery("FROM Secretaria as p WHERE p.nome="+nome).uniqueResult();
        s.getTransaction().commit();
        s.close();
        return lista;
    }

    public static List<Secretaria> filtrarSecretariaPorId(int id) { 
        Session sessao = ConexaoBD.getSessionFactory().openSession();
        sessao.beginTransaction();
        List<Secretaria> lista = sessao.createQuery("FROM Secretaria WHERE id >= " + id).list();
        sessao.getTransaction().commit();
        sessao.close();
        return lista;
    }

    public static List<Secretaria> filtrarSecretariaPorNome(String str) { 
        Session sessao = ConexaoBD.getSessionFactory().openSession();
        sessao.beginTransaction();
        List<Secretaria> lista = sessao.createQuery("FROM Secretaria WHERE nome like '%" + str + "%'").list();
        sessao.getTransaction().commit();
        sessao.close();
        return lista;
    }
}
