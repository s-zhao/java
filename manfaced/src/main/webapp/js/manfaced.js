
angular.module('manfaced', []).
controller("manfacedCtrl", function($scope, $http) {
    $scope.name = "Man Faced";
    
    $scope.loadSnippet = function(srcUri, destId) {
        $http.get(srcUri).success(function(data, status, headers, config) {
            $('#'+destId).html(data);
        }).error(function(data, status, headers, config) {
           $('#'+destId).html('error: '+status); 
        });
    }
});        


