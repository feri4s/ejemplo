/**
 * 
 */
'use strict';
angular.module('formExample', [])
.controller('ExampleController', ['$scope', '$http', function($scope, $http) {
	$scope.newPage = function() {
		open('crearEvento.html','top=300,left=300,width=300,height=300');
	}
	
	$scope.insert = function() {
		//var popup = window.open("");
		$scope.insertarEv = {
				dia : $scope.dia,
				hora: $scope.hora,
				lugar: $scope.lugar,
				nombre: $scope.nombre
		};
		//popup.document.write($scope.insertarEv);

		console.log("hola");

			//$http.post('http://localhost:8080/funme/crearEvento', $scope.insertarEv).success(function(data) {
			//	alert("EXITO");
			//}).error(function(data) {
			//	alert("ERROR");
			//});

//			$http.get('http://rest-service.guides.spring.io/greeting')
//			.success(function(data) {
//				alert(data.content);
//			}).error(function(data) {
//				alert("ERROR");
//			});

	}
} ]);