package common;

import java.sql.Connection;
import java.sql.DriverManager;

public class DB_Conexao { 
	
	public static void main(String[] args) {
		DB_Conexao obj_DB_Conexao=new DB_Conexao();
		
		System.out.println(obj_DB_Conexao.get_connection());
	}
	
	
	
	public Connection get_connection(){
		Connection connection=null;
		try {
			
		
		Class.forName("com.mysql.jdbc.Driver");
		connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/bd_usuario", "root", "");
 		
		} catch (Exception e) {
			System.out.println(e);
		}
		return connection;
		
		
		
		
	}
	
}
