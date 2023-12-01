<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Shopping Cart - Contact</title>
<%@include file ="includes/header.jsp" %>
</head>
<body style="background-image: url('Images/back.png'); background-size: cover; background-repeat: no-repeat;">
<div class="container">
<%@include file ="includes/navbar.jsp" %>
<div class="center-container">
    <style>
       .center-container {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    height: 100vh;
}

.contact-form {
    max-width: 400px;
    margin-top: 30px;
    text-align: center;
    padding: 20px; /* Agrega espacio interno al formulario */
    border: 1px solid #ddd; /* Agrega un borde alrededor del formulario */
    border-radius: 10px; /* Agrega esquinas redondeadas al formulario */
    background-color: #C0C0C0; /* Agrega un color de fondo */
}

.contact-form label {
    font-weight: bold;
    text-color: red;
    display: block;
    margin-bottom: 8px;
}

.contact-form textarea,
.contact-form input {
    width: calc(100% - 20px); /* Ajusta el ancho y quita el espacio adicional */
    padding: 10px;
    box-sizing: border-box;
    margin-bottom: 15px;
    font-weight: bold;
    border: 1px solid #ccc; /* Agrega un borde alrededor de los campos de entrada */
    border-radius: 5px; /* Agrega esquinas redondeadas a los campos de entrada */
}

.contact-form button {
    width: 100%;
    padding: 10px;
    background-color: #808080; /* Agrega un color de fondo al botón */
    color: red; /* Cambia el color del texto del botón a blanco */
    border: none; /* Quita el borde del botón */
    border-radius: 5px; /* Agrega esquinas redondeadas al botón */
    cursor: pointer; /* Cambia el cursor al pasar sobre el botón */
}

.contact-form button:hover {
    background-color: #008000; 
}


        .message {
            margin-top: 20px;
            color: green;
        }

        .logo-container {
            display: flex;
            flex-direction: row;
            align-items: flex-end; /* Alinea las imágenes en la parte inferior del contenedor */
            justify-content: flex-end; /* Alinea las imágenes a la derecha */
            margin-top: 20px; /* Ajusta el margen superior según sea necesario */
        }

        .logo-img {
            width: 50px;
            height: 50px;
            margin-left: 50px;
            margin-right: 50px; 
        }
    </style>

    <div class="contact-form">
    <form id="contactForm" onsubmit="submitForm(event)">
        <label for="name" style="color: red;">Name:</label>
        <input type="text" id="name" name="name" required>

        <label for="email" style="color: red;">Email:</label>
        <input type="email" id="email" name="email" required>

        <label for="message" style="color: red;">Message:</label>
        <textarea id="message" name="message" rows="4" required></textarea>

        <button type="submit">Send</button>
    </form>

    <div class="message" id="confirmationMessage"></div>
</div>

<script>
    function submitForm(event) {
        // Prevent the default form submission
        event.preventDefault();

        // Get the form values
        var name = document.getElementById('name').value;
        var email = document.getElementById('email').value;
        var message = document.getElementById('message').value;

        // Check if all fields are filled
        if (name && email && message) {
            // Display the confirmation message
            var confirmationMessage = document.getElementById('confirmationMessage');
            confirmationMessage.innerHTML = 'Your message has been sent!';

            // You can also send the form data to the server using AJAX if needed

            // Clear the form
            document.getElementById('contactForm').reset();
        } else {
            // If any field is empty, display an error message
            var confirmationMessage = document.getElementById('confirmationMessage');
            confirmationMessage.innerHTML = 'Please fill in all the fields.';
        }
    }
</script>


    <div class="logo-container">
        <a href="https://twitter.com/">
            <img class="logo-img" src="logo/t.png" alt="Logo 4">
        </a>

        <a href="https://www.instagram.com/">
            <img class="logo-img" src="logo/instagram.png" alt="Logo 3">
        </a>

        <a href="https://www.facebook.com/">
            <img class="logo-img" src="logo/facebook.png" alt="Logo 2">
        </a>
    </div>
</div>
</div>









<%@include file ="includes/footer.jsp" %>

</body>
</html>