	<!-- Usamos aqui o jstl, biblioteca Java, onde ele nos permite usar código java
		Dentro do código java, um deles que usamos aqui foi o forEach
		para poder substituir uma quantidade imensa de código que tava poluindo nosso
		jsp.
		
		Para usá-lo precisamos ter o arquivo da biblioteca dentro da pasta Web-INF/lib
		e depois importar informando o endereço de onde encontrá-la
	 -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List,br.com.alura.gerenciador.servlet.modelo.Empresa"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista de empresas</title>
</head>
<body>

	<h1>Lista de empresas:</h1>
	<br>



	<ul>
		<c:forEach items="${empresas}" var="empresa">
			<li>${empresa.nome} - <fmt:formatDate value="${empresa.dataAbertura}" pattern="dd/MM/yyyy"/>
			<a href="/gerenciador/entrada?acao=MostraEmpresa&id=${empresa.id}">Editar</a> 
			<a href="/gerenciador/entrada?acao=RemoveEmpresa&id=${empresa.id}">Remove</a>
			</li>
		</c:forEach>
	</ul>

</body>
</html>