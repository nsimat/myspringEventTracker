<!doctype html>
<html ng-app>
<head>
<title>Hello Events Angular</title>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.8/angular.min.js"></script>
<script src="events.js"></script>
</head>
<body>
	<div ng-controller="Events">
		I have {{events.length}} events! Here there are:
		<ol class="events-container">
			<li ng-repeat="event in events">{{event.name}}</li>
		</ol>
	</div>
</body>
</html>