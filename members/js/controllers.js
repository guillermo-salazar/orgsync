var memberApp= angular.module('memberApp',[]);

memberApp.controller('MemberListCtrl', ['$scope', '$http', function($scope, $http){
var members =
  [{
    firstName: 'John',
    lastName: 'Doe',
    status: 'Approved'
  }];

  $scope.add = function(){
    var name = $scope.name.split(' ');
    var newMember = {
      firstName: name[0],
      lastName: name[1],
      status: $scope.status
    };
    members.push(newMember);

    $http.post('/member/save', newMember).
  then(function(response) {
    // this callback will be called asynchronously
    // when the response is available
  }, function(response) {
  });
  };
  $scope.members = members;
}]);
