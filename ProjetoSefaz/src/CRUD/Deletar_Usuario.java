package CRUD;

import java.sql.Connection;
import java.sql.PreparedStatement;

import common.DB_Conexao;

public class Deletar_Usuario {

	
	public void deletar_Usuario(String nome){
		DB_Conexao obj_DB_Conexao=new DB_Conexao();
		Connection conexao2= obj_DB_Conexao.get_connection();
		
		PreparedStatement ps=null;
	 
		 
		 
		try {
			String query="delete from Usuario where nome=?";
			ps=conexao2.prepareStatement(query);		
			ps.setString(1, nome);;
			ps.executeUpdate();
			
			
			 
			
			
		} catch (Exception e) {
				System.out.println(e);
		}
		 
		
		
	}

}
