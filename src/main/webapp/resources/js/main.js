var starhubApp = angular.module('starhubApp', []);
starhubApp.controller('tabContentsCtrl', function($scope, $http) {
	$http.get("/rest/tabcontents").success(
			function(response) {
				$scope.tabcontents = response.tabcontents;
			}).error(function(response) {
				alert("cannot query tabcontext");
			});
	
	$scope.saveTabTile = function(tabTileSelect) {
		$http.post("/rest/saveTabTile", tabTileSelect).success(function(response) {
			alert("update tab tile success");
		}).error(function(response) {
			alert("Update tab tile unsuccessful");
		});
	};
	
});

starhubApp.controller('bannersCtrl', function($scope, $http) {
	$http.get("/rest/banners").success(
			function(response) {
				$scope.banners = response.banners;
			}).error(function(response) {
				alert("cannot query banners");
			});

	$scope.saveBanner = function(banner) {
		$http.post("/rest/saveBanner", banner).success(function(response) {
			alert("Update Banner Success");
		}).error(function(response) {
			alert("Update Banner Unsuccessful");
		});
	};
	
	$scope.onFileSelect = function ($file) {

        (function (index) {
            $scope.upload[index] = $upload.upload({
                url: "/rest/uploadImage",
                method: "POST",
                data: { fileUploadObj: $scope.fileUploadObj },
                file: $file
            }).progress(function (evt) {
                // get upload percentage
                console.log('percent: ' + parseInt(100.0 * evt.loaded / evt.total));
            }).success(function (data, status, headers, config) {
                // file is uploaded successfully
                console.log(data);
            }).error(function (data, status, headers, config) {
                // file failed to upload
                console.log(data);
            });
        })(i);
     };
});