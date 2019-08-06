package CRUD;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import common.DB_Conexao;
import common.Usuario_Bean;
import java.sql.Connection;
public class Editar_Usuario {
	
	
	
	public Usuario_Bean get_Usuario(String nome){
		DB_Conexao obj_DB_Conexao=new DB_Conexao();
		Connection conexao=obj_DB_Conexao.get_connection();;
		PreparedStatement ps=null;
		ResultSet rs=null;
		Usuario_Bean obj_Usuario_Bean=new Usuario_Bean();
		
		 
		try {
			String query="select * from Usuario where nome=?";
			ps=conexao.prepareStatement(query);		
			ps.setString(1,nome);;
			rs=ps.executeQuery();
			
			
			while(rs.next()){
			 
				
				
				obj_Usuario_Bean.setNome(rs.getString("nome"));
				obj_Usuario_Bean.setEmail(rs.getString("email"));
				obj_Usuario_Bean.setSenha(rs.getString("senha"));
				obj_Usuario_Bean.setTelefone(rs.getString("telefone"));
				
				 
				
			}
			
			
			
		} catch (Exception e) {
				System.out.println(e);
		}
		return obj_Usuario_Bean;
		
		
		
	}


	public void editar_Usuario(Usuario_Bean obj_Usuario_Bean){
		DB_Conexao obj_DB_Conexao=new DB_Conexao();
		Connection conexao=obj_DB_Conexao.get_connection();
		
		PreparedStatement ps=null;
		  
		 
		try {
			String query="update Usuario set senha=?,email=?,telefone=? where nome=?";
			ps=conexao.prepareStatement(query);		
			ps.setString(1, obj_Usuario_Bean.getNome());;
			ps.setString(2, obj_Usuario_Bean.getEmail());;
			ps.setString(3, obj_Usuario_Bean.getSenha());;
			ps.setString(4, obj_Usuario_Bean.getTelefone());;
			ps.executeUpdate();
			
			
			 
			
			
			
		} catch (Exception e) {
				
		}
	 
		
		
	}



}
