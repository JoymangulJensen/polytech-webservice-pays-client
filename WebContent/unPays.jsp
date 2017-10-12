
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>${pays.nomPays}</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
	integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/css/bootstrap-select.min.css">
<link href="css/style.css" rel="stylesheet">

</head>
<body>
	<div class="container-fluid">
		<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
	    	<a class="navbar-brand" href="index.jsp">Accueil</a>
	    	<div class="row justify-content-md-center">
				<div class="col-md-12 btn-group">
					
				</div>
			</div>
	    </nav>
		<br> <br><br>
		<div class="row justify-content-md-center">
			<h1>${pays.nomPays} </h1>
		</div>
		<br>
		<div class="container">
			<div class="row">
		     	<div class="col-md-5">
		     		<h3>Continent : ${pays.nomContinent}</h3>
		     		<h3>Capitale : ${pays.nomCapitale}</h3>
		     		<h3>Nombre d'habitants : ${pays.nbhabitants}</h3>
		     		<iframe style="border: 0;" src="https://www.google.com/maps/embed/v1/place?key=AIzaSyCfqg1Qvls1V8f4fDwUGoEY-jwUTctqF0Q&q=${pays.nomCapitale}" width="400" height="300" frameborder="0"></iframe>
					<!--  mon api key google map
					AIzaSyCfqg1Qvls1V8f4fDwUGoEY-jwUTctqF0Q -->
		     	</div>
		     	<div class="col-md-7">
		     		<iframe style="border: 0;" src="https://www.google.com/maps/embed/v1/place?key=AIzaSyCfqg1Qvls1V8f4fDwUGoEY-jwUTctqF0Q&q=${pays.nomPays}" width="600" height="415" frameborder="0"></iframe>
					<!--  mon api key google map
					AIzaSyCfqg1Qvls1V8f4fDwUGoEY-jwUTctqF0Q -->
		     	</div>
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
