<%@page import="CRUD.Editar_Usuario"%>
<%@page import="common.Usuario_Bean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Editar</title>
</head>
<body>


	<%
	String nome=(String)request.getParameter("nome");
	
	
	Editar_Usuario obj_Editar_Usuario=new Editar_Usuario();
	
	Usuario_Bean obj_Usuario_Bean=obj_Editar_Usuario.get_Usuario(nome);
	
	%>


<center>

<h1>EDITAR</h1>

<form action="controller/edit_controller.jsp">

Nome :<input type="text" name="nome" value="<%=nome%>"><br>

Senha :<input type="text" name="senha" value="<%=obj_Usuario_Bean.getSenha()%>"><br>
Telefone:<input type="text" name="telefone" value="<%=obj_Usuario_Bean.getTelefone()%>"><br>
Email:<input type="text" name="email" value="<%=obj_Usuario_Bean.getEmail()%>"><br>



<input type="submit" value="Edit">

</form>
</center>

</body>
</html>