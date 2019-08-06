<%@page import="CRUD.Inserir_Usuario"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>inserir</title>
</head>
<body>


<%
String nome=request.getParameter("nome");
String email=request.getParameter("email");
String senha=request.getParameter("senha");
String telefone=request.getParameter("telefone");

 
Inserir_Usuario obj_Inserir_Usuario=new Inserir_Usuario();

obj_Inserir_Usuario.inserir_Usuario(nome, email, senha, telefone);
%>

<script type="text/javascript">

 window.location.href="http://localhost:8080/ProjetoSefaz/cadastro.jsp"
</script>


</body>
</html>