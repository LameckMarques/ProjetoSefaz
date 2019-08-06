<%@page import="CRUD.Deletar_Usuario"%>
<%@page import="CRUD.Editar_Usuario"%>
<%@page import="common.Usuario_Bean"%>
<%@page import="CRUD.Inserir_Usuario"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Deletar</title>
</head>
<body>


<%
String nome=request.getParameter("nome");
 

Deletar_Usuario obj_Deletar_Usuario=new Deletar_Usuario();

obj_Deletar_Usuario.deletar_Usuario(nome);
 

%>

<script type="text/javascript">

 window.location.href="http://localhost:8080/ProjetoSefaz/cadastro.jsp"
</script>


</body>
</html>