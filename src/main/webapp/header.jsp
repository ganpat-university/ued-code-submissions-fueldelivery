<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<% 
   int id = Integer.parseInt(request.getParameter("id"));
  
%>
<html>

<head>
  <!-- Basic -->
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <!-- Mobile Metas -->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <!-- Site Metas -->
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta name="author" content="" />

  <title>Fuel Delivery</title>



  <!-- bootstrap core css -->
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
  <!-- progress barstle -->
  <link rel="stylesheet" href="css/css-circular-prog-bar.css">
  <!-- fonts style -->
  <link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">
  <!-- font wesome stylesheet -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="css/responsive.css" rel="stylesheet" />



  <link rel="stylesheet" href="css/css-circular-prog-bar.css">


</head>

<body>
  <div class="top_container">
    <!-- header section strats -->
    <header class="header_section">
      <div class="container">
        <nav class="navbar navbar-expand-lg custom_nav-container ">
          <a class="navbar-brand" href="index.jsp">
            <img src="01.png" alt="">
            <span>
              Fuel Delivery 
            </span>
          </a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <div class="d-flex ml-auto flex-column flex-lg-row align-items-center">
              <ul class="navbar-nav  ">
                <li class="nav-item active">
                  <a class="nav-link" href="index.jsp?id=<% out.println(id);%>"> Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item ">
                  <a class="nav-link" href="about.jsp?id=<% out.println(id);%>"> About </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="order.jsp?id=<% out.println(id);%>"> Orders </a>
                </li>

                <li class="nav-item">
                  <a class="nav-link" href="contact.jsp?id=<% out.println(id);%>">Contact Us</a>
                </li>
				
				
				<li>
				<div class="">
				<a href="profile.jsp?id=<% out.println(id);%>"><img style="width:40px"class="rounded-circle z-depth-2" alt="100x100" src="profile.webp"data-holder-rendered="true">
					</a>
      			</div>
				</li>
				
              </ul>
              
            </div>
        </nav>
      </div>
    </header>