<html>
<head>
	<title>Home Page</title>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<h2>Docker 201 Two Tier App Example</h2>
	<div class="container">
		<div class="jumbotron center">
		<form method="post" action="web">
			<div class="row">
				<div class="col-md-3 cold-md-offeset-3">
					<input type="text" name="text" value="" placeholder="Write some sample text to check its persistance"/>
				</div>
			</div>
			<input type="hidden" name="requestParam" value="save"/>
			<div class="row">
				<div class="col-md-3 cold-md-offeset-3">
					<button type="submit">submit</button>
				</div>
			</div>
		</form>
		</div>
		<br>
		<br>
		<form method="post" action="web">
			<input type="hidden" name="requestParam" value="get"/>
			<button type="submit">showSavedItems</button>
		</form>		
	</div>
</body>
</html>
