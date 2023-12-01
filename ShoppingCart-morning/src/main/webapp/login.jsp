
<%@page import="com.shoppingcart.connection.DbCon" %>
<%@page import="com.shoppingcart.doa.ProductDoa" %>
<%@page import="com.shoppingcart.model.*" %>
<%@page import="java.util.*"%>

<%
User auth = (User)request.getSession().getAttribute("auth");
if(auth != null){
	response.sendRedirect("index.jsp");
}
ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
if(cart_list != null){
	request.setAttribute("cart_list", cart_list);
}%>



<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Shopping Cart - Login</title>
<%@include file ="includes/header.jsp" %>
</head>
<body style="background-image: url('Images/back44.png'); background-size: cover; background-repeat: no-repeat;">

<div class="container">
<%@include file ="includes/navbar.jsp" %>
<div class="container">


<div class ="card w-50 mx-auto my-5" style="background-color: silver; color: red;">
<div class ="card-header text-center"><strong>User Login</strong></div>
<div class = "card-body">
<form action="user-login" method="post">

<style>
    label {
      font-weight: bold;
    }
    
      .card-body {
    background-color: silver;
    border-radius: 10px;
  }
  
  .logo-containerlogo {
            display: flex;
            flex-direction: row;
            align-items: center; /* Alinea las imágenes en la parte inferior del contenedor */
            justify-content: center; /* Alinea las imágenes a la derecha */
            margin-top: 20px;
          
            
        }
        
        .logo-containerlogo img {
                 margin-right: 40px; 
                 margin-lef: 100px;
                 margin-bottom: 20px;
                 
}
    
    
  </style>


<div class="form-group">
<label>Email Address</label>
<input type="email" class="form-control" name ="login-email" placeholder="Enter your Email" required style="background-color: silver;">
</div>
<div class="form-group">
<label>Password</label>
<input type="password" class="form-control" name ="login-password" placeholder="*********" required style="background-color: silver;">
</div>
<div class="text-center">
<button type="submit" class="btn btn-secondary"  style="color: red;">Login</button>
</div>

</form>




</div>

</div>



</div>

<div class="logo-containerlogo">
                <a href="https://twitter.com/">
                    <img class="logo-img" src="logo/t.png" alt="Logo 4" width="50" height="50">
                </a>

                <a href="https://www.instagram.com/">
                    <img class="logo-img" src="logo/instagram.png" alt="Logo 3" width="50" height="50">
                </a>

                <a href="https://www.facebook.com/">
                    <img class="logo-img" src="logo/facebook.png" alt="Logo 2" width="50" height="50">
                </a>
            </div>



</div>




 
<%@include file ="includes/footer.jsp" %>

</body>
</html>