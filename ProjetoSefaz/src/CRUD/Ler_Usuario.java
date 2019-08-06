package CRUD;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import common.DB_Conexao;
import common.Usuario_Bean;

public class Ler_Usuario {

	
	public static void main(String[] args) {
		Ler_Usuario obj_Ler_Usuario=new Ler_Usuario();
		
		obj_Ler_Usuario.get_Usuario();
	}
	
	
	public List<Usuario_Bean> get_Usuario(){
		DB_Conexao obj_DB_Conexao=new DB_Conexao();
		Connection conexao=obj_DB_Conexao.get_connection();
		
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		 List<Usuario_Bean> list=new ArrayList<Usuario_Bean>();
		
		try {
			String query="select * from Usuario";
			ps=conexao.prepareStatement(query);		
			rs=ps.executeQuery();
			
			
			while(rs.next()){
				
				Usuario_Bean obj_Usuario_Bean=new Usuario_Bean();
				System.out.println(rs.getString("nome"));
				System.out.println(rs.getString("email"));
				System.out.println(rs.getString("senha"));
				System.out.println(rs.getString("telefone"));
				
				
				obj_Usuario_Bean.setNome(rs.getString("nome"));
				obj_Usuario_Bean.setEmail(rs.getString("email"));
				obj_Usuario_Bean.setSenha(rs.getString("senha"));
				obj_Usuario_Bean.setTelefone(rs.getString("telefone"));
				
				list.add(obj_Usuario_Bean);
				
			}
			
			
			
		} catch (Exception e) {
				
		}
		return list;
		
		
		
	}
	
	
}
