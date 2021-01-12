<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.1.1.min.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
<title >Add a New Product</title>
</head>
<body>


<div style="width:30%; margin-top:5%; background-color:black; box-shadow: 4rem 0 3rem rgb(43, 42, 42);" class="ui inverted segment">
	<h1>Welcome, Please add a product to productlist</h1>
	<form class="ui inverted form" method="post" action="products">
		<label style="margin-left:15%" class="ui red ribbon label">Product Name:</label>
		<br><input  placeholder="....Enter Product Name" style="width:50%;margin-left:53pt" type="text" name="name" required="required" /> 
		<br>
		<input style="margin-left:20%" class="ui inverted red button" type="submit" value="Add Product" />
	</form>
</div>

</body>
</html>