<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>Les pays</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
	integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M"
	crossorigin="anonymous">
	
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/css/bootstrap-select.min.css">
<link href="css/style.css" rel="stylesheet">

</head>
<body>
	<div class="">
		<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
	    	<a class="navbar-brand" href="index.jsp">Accueil</a>
	    	<div class="row justify-content-md-center">
				<div class="col-md-12 btn-group">
					<button type="button" class="btn btn-info dropdown-toggle col"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						Choisir un pays
					</button>
						
					<div class="dropdown-menu scrollable-menu col">
						<c:forEach items="${mesPays}" var="pays">
							<a class="dropdown-item" href="getPays?nomPays=${pays.nomPays}">${pays.nomPays}</a>
						</c:forEach>
					</div>
				</div>
			</div>
	    </nav>
	    <br><br><br>
		<div class="container">
	     	<div class="row">
		     	<c:forEach items="${mesPays}" var="pays">
			        <div class="col-md-4 un_pays">
			          <h2>${pays.nomPays}</h2>
			          <p>Continent : ${pays.nomContinent}</p>
			          <p>Capitale : ${pays.nomCapitale}</p>
			          <p>Nombre d'habitants : ${pays.nbhabitants}</p>
			          <p><a class="btn btn-secondary" href="getPays?nomPays=${pays.nomPays}" role="button">Détails</a></p>
			        </div>
		        </c:forEach>
	     	</div>
		     
	    </div>
    
	</div>





	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
		integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"
		integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1"
		crossorigin="anonymous"></script>
</body>
</html>
