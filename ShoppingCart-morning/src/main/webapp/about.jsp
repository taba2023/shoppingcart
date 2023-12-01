<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Shopping Cart - Login</title>
<%@include file ="includes/header.jsp" %>
</head>
<body style="background-color: black;">
    <div class="container">
        <%@include file ="includes/navbar.jsp" %>
        <div class="container">
            <div class="logo-container">
                <img class="logo-imge" src="logo/about.png" alt="Descripción de la imagen" width="500px" height="500px" style="margin-top: 20px;">
                <p class="paragraph" style="color: red;">
                    Welcome to ElectronicsFP, your go-to destination for cutting-edge electronics and futuristic gadgets.
                    At ElectronicsFP, we are passionate about bringing you the latest and greatest in the world of technology.
                    Whether you're a tech enthusiast, a casual consumer, or a professional, we have something for everyone.
                    Our mission at ElectronicsFP is to empower individuals with innovative and reliable electronic solutions.
                    We strive to be at the forefront of technological advancements, curating a diverse range of products
                    that cater to various needs and interests. We believe in the transformative power of electronics to enhance
                    and simplify lives.
                </p>
            </div>
            <style>
                .logo-container {
                    display: flex;
                    flex-direction: row; /* Cambiado a row para alinear la imagen y el párrafo horizontalmente */
                    align-items: center; /* Alinea verticalmente los elementos */
                }

                .logo-imge {
                    width: 50%;
                    height: auto; /* Hace que la altura se ajuste automáticamente para mantener la proporción */
                    margin-right: 20px; /* Añade espacio entre la imagen y el párrafo */
                }

                .paragraph {
                    text-align: right; /* Alinea el texto a la derecha */
                    flex-grow: 1; /* Permite que el párrafo ocupe todo el espacio restante */
                }
                
               
                 .logo-containerlogo {
                    display: flex;
                    justify-content: center;
                     gap: 60px;
                     margin-top: 60px; /* Agrega espacio arriba */
                     margin-bottom: 60px; /* Agrega espacio abajo *
                  }

                 .logo-img {
                    display: block;
                     margin: 0 auto;
                    }

                
                
                
            </style>

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
    </div>

 

    <%@include file ="includes/footer.jsp" %>
</body>

</html>