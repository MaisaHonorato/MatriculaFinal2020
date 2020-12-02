package controle;

import java.util.List;
import modelo.Pessoa;
import org.hibernate.Session;
import util.ConexaoBD;

public class DAOPessoa {

    public static void salvarPessoa(Pessoa pes) {

        for (Pessoa p : listarPessoas()) {
            if (pes.getCpf().equals(p.getCpf())) {
                System.err.println("Pessoa ja cadastrada");
                return;
            }
        }

        inserirPessoa(pes);
    }

    private static void inserirPessoa(Pessoa pes) {

        Session sessao = ConexaoBD.getSessionFactory().openSession();
        sessao.beginTransaction();
        sessao.save(pes);
        sessao.getTransaction().commit();
        sessao.close();
    }

    public static void updatePessoa(Pessoa a){
        Session s = ConexaoBD.getSessionFactory().openSession();
        s.beginTransaction();
        s.update(a);
        s.getTransaction().commit();
        s.close();
    }
    
    public static List<Pessoa> listarPessoas() {
        Session s = ConexaoBD.getSessionFactory().openSession();
        s.beginTransaction();
        List<Pessoa> lista = s.createQuery("FROM Pessoa").list();
        s.getTransaction().commit();
        s.close();
        return lista;
    }

    public static Pessoa localizarPessoasId(int id) {
        Session s = ConexaoBD.getSessionFactory().openSession();
        s.beginTransaction();
        Pessoa lista = (Pessoa) s.createQuery("FROM Pessoa WHERE id = " + id).uniqueResult();
        s.getTransaction().commit();
        s.close();
        return lista;
    }

    public static Pessoa localizarPessoasNome(String nome) {
        Session s = ConexaoBD.getSessionFactory().openSession();
        s.beginTransaction();
        Pessoa lista = (Pessoa) s.createQuery("FROM Pessoa as p WHERE p.nome=" + nome).uniqueResult();
        s.getTransaction().commit();
        s.close();
        return lista;
    }

    public static List<Pessoa> filtrarPessoaPorId(int i) { 
        Session sessao = ConexaoBD.getSessionFactory().openSession();
        sessao.beginTransaction();
        List<Pessoa> lista = sessao.createQuery("FROM Pessoa WHERE valor >= " + i).list();
        sessao.getTransaction().commit();
        sessao.close();
        return lista;
    }

    public static List<Pessoa> filtrarPessoaPorNome(String str) { 
        Session sessao = ConexaoBD.getSessionFactory().openSession();
        sessao.beginTransaction();
        List<Pessoa> lista = sessao.createQuery("FROM Pessoa WHERE nome like '%" + str + "%'").list();
        sessao.getTransaction().commit();
        sessao.close();
        return lista;
    }

}
