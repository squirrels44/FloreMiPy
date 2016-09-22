(function(){
	var app = angular.module('ProductsTable',[]);
	
	app.controller("ResearchController",['$http', function($http){
		var store = this;
		store.plantes=[];
		$http.get('/recherche').success(function(data){
			store.plantes = data;
		});
	}]);
})();