<nav class="navbar navbar-expand-lg navbar-light bg-light">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bangers&family=Roboto+Mono:ital,wght@1,600&family=Share+Tech+Mono&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bangers&family=Nova+Square&family=Roboto+Mono:ital,wght@1,300&family=Share+Tech+Mono&display=swap" rel="stylesheet">
<style>

body {
    font-family: 'Nova Square', cursive; /* Fallback font */
  }

   .navbar-light.bg-light {
    background-color: silver !important;
     border-radius: 10px;
  }


  .navbar-brand {
    color: black; 
    text-shadow: 2px 2px 2px #FF0000; 
    font-weight: bold;
    font-size: 30px;
  }

  .navbar-brand:hover {
    color: #333; 
  }
  
  .navbar-nav a {
    font-family: 'Roboto Mono', monospace;
  }
  
  
</style>

<a class="navbar-brand" href="index.jsp">
  <img class="logo-img" src="logo/logo.png" width="60" height="60">
  ElectronicsFP
</a>





  
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav ml-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp"><strong>Home</strong></a>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="about.jsp"><strong>About</strong></a>
      </li>   
      <li class="nav-item">
        <a class="nav-link" href="order.jsp"><strong>Order</strong></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="cart.jsp"><strong>Cart</strong><span class="badge badge-danger px-1">${cart_list.size() }</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="log-out"><strong>Logout</strong></a>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="login.jsp"><strong>Login</strong></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="contact.jsp"><strong>Contact</strong></a>
      </li>
     
    </ul>
    
  </div>
</nav>