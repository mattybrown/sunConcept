
(function(){
  var app = angular.module("testApp", []);

  app.controller('StoryController', ['$http', function($http){
    var story = this;
    story.items = [];

    $http.get('/stories').then(function(data){
      console.log(data.data)
      story.items = data.data;
    });
  }]);

  app.controller('UserController', ['$http', function($http){
    var user = this;
    user.items = [];

    $http.get('/users').then(function(data){
      user.items = data.data;
    });
  }]);
})();
