<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
    <head>
        <meta charset="utf-8" />
        <title>R�sultat</title>
   </head>
<body>
	<h1>R�sultat de l'op�ration </h1>
	
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
