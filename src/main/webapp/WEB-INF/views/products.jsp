<%@ page language="java" contentType="text/html; charset=UTF-8"

	pageEncoding="UTF-8"%>
	<%@ page import="java.util.*" %>
	<%@ page import="com.model.Product" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>

<title>Insert title here</title>
</head>
<body>
<div style="margin:auto">
	<h1 class="card-header" style="max-width: 36rem;text-align:center;margin-top:2%; background-color: #6A5ACD">Product Page</h1>
	<table class="table table-dark table-striped" border='1' style="width: 40%">
		
		<tr style="text-align:center" class="table-active">
			<th scope="row">Id</th>
			<td colspan="2" class="table-active">Product Name</td>
		</tr>

          <%
            ArrayList<Product> products = (ArrayList<Product>)  session.getAttribute("products");
            for (Product p : products) {
          %>
         <tr style="text-align:center">
            <td>  <%=p.getId()%></td>
            <td><a href="/view/<%=p.getId()%>"><%=p.getName()%></a></td>
            
        </tr>
          <%}%>
	</table>
</div>
</body>
</html>