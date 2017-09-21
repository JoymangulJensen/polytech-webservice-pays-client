<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
    <head>
        <meta charset="utf-8" />
        <title>Résultat</title>
   </head>
<body>
	<h1>Résultat de l'opération </h1>
	
	<select id="pays" name="paysitems">
    <c:forEach items="${mesPays}" var="pays">
        <option value="${pays.nomPays}">
            ${pays.nomPays}
        </option>
    </c:forEach>
    texte
</select>
</body>
</html>
