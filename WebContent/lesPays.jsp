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
	<div class="container-fluid">
		<div class="row justify-content-md-center">
			<div class="col-md-auto">
				<h1>Les pays</h1>
			</div>
		</div>
		<br> <br>
		<div class="row justify-content-md-center">
			<select id="pays" name="paysitems">
				<c:forEach items="${mesPays}" var="pays">
					<option value="${pays.nomPays}">
            			${pays.nomPays}
       			 	</option>
				</c:forEach>
			</select>

			<div class="btn-group">
				<button type="button" class="btn btn-danger dropdown-toggle"
					data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					Veuillez choisir un pays
				</button>
					
				<div class="dropdown-menu scrollable-menu">
					<c:forEach items="${mesPays}" var="pays">
						<a class="dropdown-item" href="getPays?nomPays=${pays.nomPays}">${pays.nomPays}</a>
					</c:forEach>
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
