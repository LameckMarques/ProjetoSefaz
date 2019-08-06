package CRUD;

import java.sql.Connection;
import java.sql.PreparedStatement;

import common.DB_Conexao;

public class Inserir_Usuario {
	
	
	public void inserir_Usuario(String nome,String email,String senha,String telefone){
		
		DB_Conexao obj_DB_Connection=new DB_Conexao();
		Connection connection=obj_DB_Connection.get_connection();
		
		PreparedStatement ps=null;
		
		
		
		try {
			
		
		
		String query="insert into Usuario(nome,email,senha,telefone) values(?,?,?,?)";
		 ps=connection.prepareStatement(query);
		 ps.setString(1, nome);
		 ps.setString(2, email);
		 ps.setString(3, senha);
		 ps.setString(4, telefone);
		 
		 ps.executeUpdate();
		 
		 
		 
		 
		} catch (Exception e) {
			
		}
		 
	}
	
	
	

}
