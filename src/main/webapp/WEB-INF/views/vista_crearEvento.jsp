<!DOCTYPE html>
<html lang="es" ng-app="formExample">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>FunMe!</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.8/angular.min.js"></script>
<style>
/* Remove the navbar's default margin-bottom and rounded borders */
.navbar {
	margin-bottom: 0;
	border-radius: 0;
}

/* Set height of the grid so .sidenav can be 100% (adjust as needed) */
.row.content {
	height: 450px
}

/* Set gray background color and 100% height */
.sidenav {
	padding-top: 20px;
	background-color: #f1f1f1;
	height: 100%;
}

/* Set black background color, white text and some padding */
footer {
	background-color: #555;
	color: white;
	padding: 15px;
}

/* On small screens, set height to 'auto' for sidenav and grid */
@media screen and (max-width: 767px) {
	.sidenav {
		height: auto;
		padding: 15px;
	}
	.row.content {
		height: auto;
	}
}
</style>
</head>


<body>
	<nav class="navbar navbar-inverse navbar-top">
		<div class="container-fluid">
			<div class="navbar-header">

				<a class="navbar-brand" href="#">
					<h1>FunMe!</h1>
				</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">


				<ul class="nav navbar-nav navbar-right">
					<li><a href="#"><span class="glyphicon glyphicon-home"></span>
							Inicio</a> <a href="#"><span class="glyphicon glyphicon-time"></span>
							Mis Eventos</a></li>

					<li><a href="#"><span class="glyphicon glyphicon-user"></span>
							Perfil</a> <a href="#"><span class="glyphicon glyphicon-log-out"></span>
							Cerrar Sesión</a></li>

				</ul>
			</div>
		</div>
	</nav>


	<div class="container">
		<p>
			<h2>Crear evento</h2>
			</p>
		<div>
			<form novalidate class="simple-form" action="crearEvento" method="POST">
			dia: <input type="dia" name="dia" ng-model="dia" id="dia" placeholder="Inserte un dia" /></br>
			hora: <input type="hora" name="hora" ng-model="hora" id="hora" placeholder="Inserte una hora" /></br>
			lugar: <input type="lugar" name="lugar" ng-model="lugar" id="hora" placeholder="Inserte un lugar" /></br>
			nombre: <input type="nombre" name="nombre" ng-model="lugar" id="nombre" placeholder="Inserte un nombre para el evento" /></br>


				<input type="button" ng-click="reset()" value="Cancelar" /> <input
				type="submit" ng-click="update(user)" value="Guardar" />
			</form>
		</div>

	</div>
	</form>

</body>
</html>