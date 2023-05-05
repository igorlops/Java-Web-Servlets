<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<% 
// scriptlet (pedacinhos de código java)
//	String nomeEmpresa = (String) request.getAttribute("empresa");
	//System.out.println(nomeEmpresa);

//expression language serve para substituir todo esse código acima de associar a variavel a
// a um atributo e depois chamar a variavel... Ela por si só se associa ao atributo
// declarado no Java
%>
<html>
<body>
<!-- 	<h1>Empresa <%//nomeEmpresa %> cadastrada com sucesso</h1>-->

<c:if test="${not empty empresa}">
	<h1>Empresa ${empresa} cadastrada com sucesso</h1>
</c:if>
<c:if test="${empty empresa}">
	<h1>Não há nenhum empresa cadastrada</h1>
</c:if>

	<a href="entrada?acao=ListaEmpresas">Visite aqui a lista de empresas.</a>
</body>
</html>

