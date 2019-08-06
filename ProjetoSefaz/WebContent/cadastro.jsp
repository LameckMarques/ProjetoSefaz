<%@page import="java.util.Iterator"%>
<%@page import="common.Usuario_Bean"%>
<%@page import="java.util.List"%>
<%@page import="CRUD.Ler_Usuario"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastro</title>
</head>
<body>

<center>

<h1>Cadastro</h1>

<form action="controller/inserir_controller.jsp">


Nome:<input type="text" name="nome"><br>
Email :<input type="text" name="email"><br>
Senha:<input type="text" name="senha"><br>
Telefone:<input type="text" name="telefone"><br>



<input type="submit" value="Cadastrar">

</form>

<hr>


<%
Ler_Usuario obj_Ler_Usuario=new Ler_Usuario();

List<Usuario_Bean> list=obj_Ler_Usuario.get_Usuario(); 


Iterator<Usuario_Bean> it_list=list.iterator();
%>
<table border="1">
<%
while(it_list.hasNext()){
	Usuario_Bean obj_Usuario_Bean=new Usuario_Bean();
	obj_Usuario_Bean=it_list.next();
	
	
%>
			<tr>	
					<td><%=obj_Usuario_Bean.getNome() %></td>
					<td><%=obj_Usuario_Bean.getEmail() %></td>
					<td><%=obj_Usuario_Bean.getSenha() %></td>
					<td><%=obj_Usuario_Bean.getTelefone() %></td>	
					
					<td>
					<a href="editar.jsp?nome=<%=obj_Usuario_Bean.getNome()%>">Edit</a>
					
					</td>	
					<td>
					<a href="controller/deletar_controller.jsp?nome=<%=obj_Usuario_Bean.getNome()%>">Delete</a>
					
					</td>	
			</tr>
<%	 
}
%>
</table>


</center>

</body>
</html>