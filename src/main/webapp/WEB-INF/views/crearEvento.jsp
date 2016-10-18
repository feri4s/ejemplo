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
<script src="controller.js"></script>

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

	<div class="container" ng-controller="ExampleController">
		<div class="jumbotron">


			<h2>Crear evento</h2>

			<form novalidate class="simple-form">

				<div class="form-group">
					<label class="control-label col-sm-2" for="localizacion">Dia:</label>
					<div class="col-sm-10">
						<input ng-model="dia" class="form-control" id="dia"
							placeholder="Inserte un dia">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="localizacion">Hora:</label>
					<div class="col-sm-10">
						<input ng-model="dia" class="form-control" id="dia"
							placeholder="Inserte una hora">
					</div>
				</div>
				<br></br>
				<div class="form-group">
					<label class="control-label col-sm-2" for="localizacion">Lugar:</label>
					<div class="col-sm-10">
						<input ng-model="Lugar" class="form-control" id="Lugar"
							placeholder="Inserte un lugar">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="Nombre">Nombre
						del evento:</label>
					<div class="col-sm-10">
						<input ng-model="nombre" class="form-control" id="nombre"
							placeholder="Inserte un nombre para el evento"></br>
					</div>
				</div>
				<input type="button" ng-click="reset()" value="Cancelar" /> <input
					type="submit" ng-click="insert()" value="Guardar" />
			</form>
		</div>
	</div>
</body>
</html>