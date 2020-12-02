package controle;

import java.util.List;
import org.hibernate.Session;
import modelo.Endereco;
import util.ConexaoBD;

public class DAOEndereco {

	public static void inserirEndereco(Endereco a) {
		Session sessao = ConexaoBD.getSessionFactory().openSession();
		sessao.beginTransaction();
		sessao.save( a ); // o objeto Endereco
		sessao.getTransaction().commit();
		sessao.close();
	}
	
	public void excluirEndereco(Endereco a) {
		Session sessao = ConexaoBD.getSessionFactory().openSession();
		sessao.beginTransaction();
		sessao.delete( a );
		sessao.getTransaction().commit();
		sessao.close();
	}
	
	public void excluirEndereco(int codigo) {
		excluirEndereco(localizarEndereco(codigo));
	}
	
	public void atualizarEndereco(Endereco a) {
		Session sessao = ConexaoBD.getSessionFactory().openSession();
		sessao.beginTransaction();
		sessao.update( a );
		sessao.getTransaction().commit();
		sessao.close();
	}
	
	public List<Endereco> listarEndereco() {
		Session sessao = ConexaoBD.getSessionFactory().openSession();
		sessao.beginTransaction();
		List<Endereco> listaRetorno = sessao.createQuery("FROM Endereco").list();
		sessao.getTransaction().commit();
		sessao.close();
		return listaRetorno;
	}
	
	public List<Endereco> filtrarEnderecoPorBairro(String b) {
		Session sessao = ConexaoBD.getSessionFactory().openSession();
		sessao.beginTransaction();
		List<Endereco> listaRetorno = sessao.createQuery("FROM Endereco WHERE bairro = '"+b+"'").list();
		sessao.getTransaction().commit();
		sessao.close();
		return listaRetorno;
	}
		
	public Endereco localizarEndereco(int cod) {
		Session sessao = ConexaoBD.getSessionFactory().openSession();
		sessao.beginTransaction();
		Endereco endRetorno = (Endereco) sessao.createQuery("FROM Endereco WHERE codigo = " + cod).uniqueResult();
		sessao.getTransaction().commit();
		sessao.close();
		return endRetorno;
	}
}
