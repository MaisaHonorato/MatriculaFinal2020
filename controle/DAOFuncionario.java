package controle;


import java.util.List;
import modelo.Funcionario;
import org.hibernate.Session;
import util.ConexaoBD;

public class DAOFuncionario {
    
    public static void inserirFuncionario(Funcionario pes) {

        Session sessao = ConexaoBD.getSessionFactory().openSession();
        sessao.beginTransaction();
        sessao.save(pes);
        sessao.getTransaction().commit();
        sessao.close();
    }
    
    public void updateFuncionario(Funcionario a){
        Session s = ConexaoBD.getSessionFactory().openSession();
        s.beginTransaction();
        s.update(a);
        s.getTransaction().commit();
        s.close();
    }
    
    public List<Funcionario> listarFuncionarios(){
        Session s = ConexaoBD.getSessionFactory().openSession();
        s.beginTransaction();
        List<Funcionario> lista = s.createQuery("FROM Funcionario").list();
        s.getTransaction().commit();
        s.close();
        return lista;
    }
    
    public Funcionario localizarFuncionariosId(int id){
        Session s = ConexaoBD.getSessionFactory().openSession();
        s.beginTransaction();
        Funcionario lista = (Funcionario) s.createQuery("FROM Funcionario WHERE id = " + id).uniqueResult();
        s.getTransaction().commit();
        s.close();
        return lista;
    }
    
    public Funcionario localizarFuncionariosCargo(String cargo){
        Session s = ConexaoBD.getSessionFactory().openSession();
        s.beginTransaction();
        Funcionario lista = (Funcionario) s.createQuery("FROM Funcionario WHERE cargo="+cargo).uniqueResult();
        s.getTransaction().commit();
        s.close();
        return lista;
    }
    
    public  List<Funcionario> filtrarFuncionarioPorId(int i) {
        Session sessao = ConexaoBD.getSessionFactory().openSession();
        sessao.beginTransaction();
        List<Funcionario> lista = sessao.createQuery("FROM Funcionario WHERE valor >= " + i).list();
        sessao.getTransaction().commit();
        sessao.close();
        return lista;
    }

    public  List<Funcionario> filtrarFuncionarioPorNome(String str) { 
        Session sessao = ConexaoBD.getSessionFactory().openSession();
        sessao.beginTransaction();
        List<Funcionario> lista = sessao.createQuery("FROM Funcionario WHERE nome like '%" + str + "%'").list();
        sessao.getTransaction().commit();
        sessao.close();
        return lista;
    }

}
