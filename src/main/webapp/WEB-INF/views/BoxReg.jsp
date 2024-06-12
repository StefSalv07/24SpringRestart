<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Box Registration</title>
<!-- Bootstrap CSS CDN -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- Optional Bootstrap JavaScript and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<!-- Toastr JavaScript CDN -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
<style>
<
style>body {
	background-color: #f8f9fa;
}

.registration-form {
	max-width: 600px;
	margin: 50px auto;
	padding: 20px;
	border: 1px solid #007bff;
	border-radius: 10px;
	box-shadow: 0 0 20px rgba(0, 123, 255, 0.2);
	background-color: #fff;
}

.registration-form h2 {
	color: #007bff;
}

.form-check-label {
	color: #495057;
}

.form-control:focus {
	border-color: #007bff;
	box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
}

.btn-primary {
	background-color: #007bff;
	border-color: #007bff;
	transition: background-color 0.3s ease, border-color 0.3s ease;
}

.btn-primary:hover {
	background-color: #0056b3;
	border-color: #0056b3;
}

.button-container {
	text-align: center;
}
</style>
<script>
	function showToast() {
		toastr.success('Registration successful!', 'Success');
	}
</script>
</head>
<body>
	<div class="container mt-5">
		<div class="registration-form">
			<h2 class="text-center">Box Registration</h2>
			<form action="saveplayer" method="post"
				onsubmit="showToast(); return false";>
				<div class="form-group">
					<label for="name">Name:</label> <input type="text"
						class="form-control" id="name" name="playerName"> <span
						style="color: red">${PlayerNameError}</span>
				</div>

				<div class="form-group">
					<label>Player Type:</label><br>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="playerType"
							id="batsman" value="Bats-Man"> <label
							class="form-check-label" for="batsman">Batsman</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="playerType"
							id="bowler" value="Bowler"> <label
							class="form-check-label" for="bowler">Bowler</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="playerType"
							id="allrounder" value="All-Rounder"> <label
							class="form-check-label" for="allrounder">All-Rounder</label>
					</div>
					<span style="color: red">${PlayerTypeError}</span>
				</div>

				<div class="form-group">
					<label for="foodPreferences">Food Preferences:</label> <select
						class="form-control" id="foodPreferences" name="foodPref" required>
						<option value="-1">Select Your Preference</option>
						<option value="Regular">Regular</option>
						<option value="Jain">Jain</option>
					</select>
				</div>
				<span style="color: red">${FoodPrefrencesError}</span>

				<div class="form-group">
					<label>Cold Drinks:</label><br>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="checkbox" name="drink"
							id="mountaindew" value="Mountain-Dew"> <label
							class="form-check-label" for="mountaindew">Mountain Dew</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="checkbox" name="drink"
							id="cocacola" value="CocaCola"> <label
							class="form-check-label" for="Coco-Cola">Coca-Cola</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="checkbox" name="drink"
							id="sting" value="Sting"> <label class="form-check-label"
							for="sting">Sting</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="checkbox" name="drink"
							id="redbull" value="RedBull"> <label
							class="form-check-label" for="redbull">Red Bull</label>
					</div>
				</div>
				<span style="color: red">${DrinkError}</span>

				<div class="button-container">
					<button type="submit" class="btn btn-primary">Register</button>
				</div>
				<div class="button-container mt-3">
					<a href="/showplayer" class="btn btn-secondary">Show Player</a>
				</div>
			</form>
		</div>
	</div>
</body>
</html>
