<%@page import="CRUD.Editar_Usuario"%>
<%@page import="common.Usuario_Bean"%>
<%@page import="CRUD.Inserir_Usuario"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>editar</title>
</head>
<body>


<%
String nome=request.getParameter("nome");
String email=request.getParameter("email");
String senha=request.getParameter("senha");
String telefone=request.getParameter("telefone");


Usuario_Bean obj_Usuario_Bean=new Usuario_Bean();
obj_Usuario_Bean.setNome(nome);
obj_Usuario_Bean.setEmail(email);
obj_Usuario_Bean.setSenha(senha);
obj_Usuario_Bean.setTelefone(telefone);
 

Editar_Usuario obj_Editar_Usuario=new Editar_Usuario();

obj_Editar_Usuario.editar_Usuario(obj_Usuario_Bean);
 

%>

<script type="text/javascript">

 window.location.href="http://localhost:8080/ProjetoSefaz/cadastro.jsp"
</script>


</body>
</html>