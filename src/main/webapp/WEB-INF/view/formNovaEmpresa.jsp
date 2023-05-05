<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="/entrada?acao=NovaEmpresa" var="linkServletNovaEmpresa"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<!-- H� uma tag no jstl que � interessante para nosso contexto
no lugar de chamar manualmente a url, podemos us�-lo para caso
aja algum erro no contexto do endere�o 
 -->

 <!-- entregamos a ele apensa a p�gina que queremos usar, e ele usa o endere�o completo -->
	<!--<form action="<c:url value="/novaEmpresa"/>" method="post">-->
	<!-- por�m essa forma que chamamos acima, � deselegante 
	vamos chamar a url logo abaixo da tag de importa��o pra ficar mais organizado-->
	
	
	
	<form action="${linkServletNovaEmpresa}" method="post">
		<label>Nome:
			<input type="text" name="nome"/>
		</label>
		<label>Data Abertura:
			<input type="text" name="data"/>
		</label>
		<input type="hidden" name="acao" value="NovaEmpresa">
		<input type="submit" value="Cadastrar"/>
	</form>
</body>
</html>