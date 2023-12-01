<%@page import="com.shoppingcart.connection.DbCon" %>
<%@page import="com.shoppingcart.doa.ProductDoa" %>
<%@page import="com.shoppingcart.model.*" %>
<%@page import="java.util.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
User auth = (User)request.getSession().getAttribute("auth");
if(auth != null){
	request.setAttribute("person",auth);
}

ProductDoa pd = new ProductDoa(DbCon.getConnection());
List<Product> products = pd.getAllProducts();

ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
if(cart_list != null){
	request.setAttribute("cart_list", cart_list);
}

%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Shopping Cart Example</title>
<%@include file ="includes/header.jsp" %></head>


<style>

.logo-containerlogo {
            display: flex;
            flex-direction: row;
            align-items: center; /* Alinea las imágenes en la parte inferior del contenedor */
            justify-content: center; /* Alinea las imágenes a la derecha */
            margin-top: 20px;
          
            
        }
        
        .logo-containerlogo img {
                 margin-right: 60px; 
                 margin-lef: 60px;
                 margin-bottom: 20px;




</style>





</head>
<body style="background-image: url('Images/back44.png'); background-size: cover; background-repeat: no-repeat;">

<div class="container">
<%@include file ="includes/navbar.jsp" %>
	<div class= "container">
		<div class="card-header my-3" style="color: red; font-size: 20px;">All Products</div>
			<div class ="row">
			<% 
			if(!products.isEmpty()){
				for(Product p:products){%>
					<div class="col-md-3 my-3">
					<div class="card w-100" style="width: 18rem;">
						  <img src="Images/<%= p.getImage() %>" class="card-img-top" alt="...">
						  <div class="card-body" style="background-color: silver;">
						    <h5 class="card-title"><%= p.getName() %></h5>
						    <h6 class="price">Price: $<%= p.getPrice() %></h6>
						    <h6 class="category">Category: <%= p.getCategory() %>"</h6>
						    <div class ="mt-3 d-flex justify-content-between" >
						    <a href="add-to-cart?id=<%=p.getId() %>" class="btn btn-dark" style="color: red; font-size: 14px;">Add to Cart</a>
	       				    <a href="order-now?quantity=1&id=<%=p.getId() %>" class="btn btn-dark" style="color: red; font-size: 14px;">Buy Now</a>
						    </div>    
		  				</div>
					</div>
				</div>
				
				<% }
			}else{
				out.println("There is no products");
			}
			%>
		
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




<%@include file ="includes/footer.jsp" %>
</body>
</html>