<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="/entrada?acao=NovaEmpresa" var="linkServletNovaEmpresa"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<!-- Há uma tag no jstl que é interessante para nosso contexto
no lugar de chamar manualmente a url, podemos usá-lo para caso
aja algum erro no contexto do endereço 
 -->

 <!-- entregamos a ele apensa a página que queremos usar, e ele usa o endereço completo -->
	<!--<form action="<c:url value="/novaEmpresa"/>" method="post">-->
	<!-- porém essa forma que chamamos acima, é deselegante 
	vamos chamar a url logo abaixo da tag de importação pra ficar mais organizado-->
	
	
	
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