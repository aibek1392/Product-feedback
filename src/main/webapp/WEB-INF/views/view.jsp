<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.model.Product"%>
<%@ page import="com.model.Feedback"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"
	integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js"
	integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj"
	crossorigin="anonymous"></script>
<title>Insert title here</title>
</head>
<body>

	<div class="card text-center">
		<div style="margin: auto">
			<h1>Product Page</h1>
			<table style="width: 100%" class="table">
				<tr class="table-active">
					<th class="table-dark" scope="row">Id</th>
					<td style="border: 1px solid black" colspan="2"
						class="table-active">Product Name</td>
				</tr>

				<tr>
					<td style="border: 1px solid black">${product.getId()}</td>
					<td style="border: 1px solid black">${product.getName()}</td>

				</tr>

			</table>
			<form
				style="width: 100%; border-radius: 10px; box-sizing: border-box; width: 50%; margin-top: 6px; margin-bottom: 10px;"
				class="ui form" method="post" action="/view/${product.getId()}">
				<h2>Add a review</h2>
				<br>
				<textarea style="border: 3px solid black" rows="10" name="review"
					cols="50"></textarea>
				<br> <input
					style="border: none; background: green; padding: 12px 20px; border-radius: 10px; cursor: pointer; color: #ffffff; font-size: 16px;"
					type="submit" value="Add Review">
			</form>


			<hr>

			<table border='1' style="width: 100%">
				<tr style="background-color: red; color: white">
					<th style="text-align: center; padding: 10px">Reviews</th>
				</tr>
				<%
				List<Feedback> fs = (List<Feedback>) session.getAttribute("fs");

				/* if(fs ==null)return; */
				for (Feedback f : fs) {
				%>
				<tr style="text-align: center">
					<td style="padding: 10pt; border: 1px solid black"><%=f.getReview()%></td>


				</tr>

				<%}%>

			</table>
		</div>
	</div>
</body>
</html>