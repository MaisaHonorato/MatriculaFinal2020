package controle;


import java.util.List;
import modelo.Usuario;
import org.hibernate.Session;
import util.ConexaoBD;

public class DAOUsuario {
    
   public void inserirUsuario(Usuario a){
        Session s = ConexaoBD.getSessionFactory().openSession();
        s.beginTransaction();
        s.save(a);
        s.getTransaction().commit();
        s.close();
    }
    
    public void updateUsuario(Usuario a){
        Session s = ConexaoBD.getSessionFactory().openSession();
        s.beginTransaction();
        s.update(a);
        s.getTransaction().commit();
        s.close();
    }
    
    public static List<Usuario> listarUsuarios(){
        Session s = ConexaoBD.getSessionFactory().openSession();
        s.beginTransaction();
        List<Usuario> lista = s.createQuery("FROM Usuario").list();
        s.getTransaction().commit();
        s.close();
        return lista;
    }
    
    public static Usuario localizarUsuariosId(int id){
        Session s = ConexaoBD.getSessionFactory().openSession();
        s.beginTransaction();
        Usuario lista = (Usuario) s.createQuery("FROM Usuario WHERE id = " + id).uniqueResult();
        s.getTransaction().commit();
        s.close();
        return lista;
    }
    
    public static Usuario localizarUsuariosNome(String nickname){
        Session s = ConexaoBD.getSessionFactory().openSession();
        s.beginTransaction();
        Usuario lista = (Usuario) s.createQuery("FROM Usuario WHERE nickname="+nickname).uniqueResult();
        s.getTransaction().commit();
        s.close();
        return lista;
    }

}
