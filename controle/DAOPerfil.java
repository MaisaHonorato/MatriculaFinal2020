package controle;


import java.util.List;
import modelo.Perfil;
import org.hibernate.Session;
import util.ConexaoBD;

public class DAOPerfil {
    
     public static void salvarPerfil(Perfil pes) {

        for (Perfil p : listarPerfis()) {
            if (pes.getUsuario().getPessoa().equals(p.getUsuario().getPessoa())) {
                System.err.println("Perfil ja cadastrado");
                return;
            }
        }

        inserirPerfil(pes);
    }

    private static void inserirPerfil(Perfil pe) {

        Session sessao = ConexaoBD.getSessionFactory().openSession();
        sessao.beginTransaction();
        sessao.save(pe);
        sessao.getTransaction().commit();
        sessao.close();
    }
    
    public static void updatePerfil(Perfil a){
        Session s = ConexaoBD.getSessionFactory().openSession();
        s.beginTransaction();
        s.update(a);
        s.getTransaction().commit();
        s.close();
    }
    
    public static List<Perfil> listarPerfis(){
        Session s = ConexaoBD.getSessionFactory().openSession();
        s.beginTransaction();
        List<Perfil> lista = s.createQuery("FROM TB_PERFIL").list();
        s.getTransaction().commit();
        s.close();
        return lista;
    }
    
    public static Perfil localizarPerfisId(int id){
        Session s = ConexaoBD.getSessionFactory().openSession();
        s.beginTransaction();
        Perfil lista = (Perfil) s.createQuery("FROM Perfil WHERE id = " + id).uniqueResult();
        s.getTransaction().commit();
        s.close();
        return lista;
    }
    
    public static Perfil localizarPerfisNome(String nome){
        Session s = ConexaoBD.getSessionFactory().openSession();
        s.beginTransaction();
        Perfil lista = (Perfil) s.createQuery("FROM Perfil as p WHERE p.nome="+nome).uniqueResult();
        s.getTransaction().commit();
        s.close();
        return lista;
    }

}
