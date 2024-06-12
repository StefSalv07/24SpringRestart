<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Player Details</title>
<!-- Include Bootstrap CSS here -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap"
	rel="stylesheet">
<style>
body {
	background-color: #f8f9fa;
	font-family: 'Roboto', sans-serif;
}

.container {
	margin-top: 50px;
}

h2 {
	color: #007bff;
	font-weight: 700;
}

.card {
	border: 1px solid #007bff;
	border-radius: 10px;
	box-shadow: 0 0 20px rgba(0, 123, 255, 0.2);
	background-color: #fff;
}

.card-title {
	font-size: 1.5rem;
	color: #007bff;
	font-weight: 700;
}

.card-text {
	font-size: 1.1rem;
	color: #495057;
}

.card-body {
	padding: 20px;
}
</style>
</head>
<body>
	<div class="container">
		<h2 class="text-center">Player Details</h2>
		<div class="card">
			<div class="card-body">
				<h5 class="card-title">Name: ${players.playerName}</h5>
				<p class="card-text">Player Type: ${players.playerType}</p>
				<p class="card-text">Food Preferences: ${players.foodPref}</p>
				<p class="card-text">Cold Drinks: ${players.drink}</p>
			</div>
		</div>
	</div>
</body>
</html>
