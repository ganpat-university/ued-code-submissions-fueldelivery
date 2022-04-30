<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:include page="header.jsp" /> 
<% 
   int id = Integer.parseInt(request.getParameter("id"));
  
%>
    <section class="hero_section ">
      <div class="hero-container container">
        <div class="hero_detail-box">
          <h3>
            Reimagining The Energy Future<br>
			For Your Fuelling Needs,<br>
			
          </h3>
          <h2>
         Anywhere & Everywhere!
          </h2>
          
          <div class="hero_btn-continer">
            <a href="contact.jsp?id=<%out.println(id);%>" class="call_to-btn btn_white-border">
              <span>
                Contact
              </span>
              <img src="images/right-arrow.png" alt="">
            </a>
          </div>
        </div>
        <div class="hero_img-container">
          <div>
            <img src="11.png" alt="" class="img-fluid">
          </div>
        </div>
      </div>
    </section>
  </div>
  <!-- end header section -->

  <!-- about section -->
  <section class="about_section layout_padding">
   <h2 class="main-heading ">
        Our Service
      </h2>
     <br>
     <br>
    <div class="container">
    <div class="row">
      <div class="col-md-6 grid-margin">
            
     
      <h3>
     .01  Fuel At Your Doorstep
      </h3>
      <p class="text-left" >
        Fuel Delivery provides doorstep Fuel refuelling services for static or heavy equipment. Our convenient solution ensures timely diesel delivery with the assurance of safety, zero wastage and easy-to-use technology to place orders anytime, anywhere. We help you save costs on large scale storage and handling of diesel and help you shift to safer, environment friendly system.
      </p>
       <a href="" class="call_to-btn">
          <span>
            Read More
          </span>
          <img src="images/right-arrow.png" alt="">
        </a>
      </div>
      <div class="col-md-6 grid-margin">
      <img src="12.jpg" alt="" class="img-fluid w-100">
      </div>
  </div>
  </div>
     <br>
     <br>
<div class="container">
    <div class="row">
      <div class="col-md-6 grid-margin">
            
      
      <img src="13.jpg" alt="" class="img-fluid w-100">
      
      </div>
      <div class="col-md-6 grid-margin">
      <h3>
      <br>
      <br>
     .02  Mobile Petrol Pump Fabrication
      </h3>
      <p class="text-left" >
        With 75 years of trade experience, belonging to a family of 4th generation retailers, we offer Bowser Fabrication services with the promise of Bowser+. With Bowser+ Fuel Delivery helps dealers boost diesel sales, and gain new customers. Our PESO certified bowsers come with advanced features like geo-fencing, auto-shut off nozzle, approved dispensers, and more.</p>
       <a href="" class="call_to-btn">
          <span>
            Read More
          </span>
          <img src="images/right-arrow.png" alt="">
        </a>
      </div>
  </div>
  </div>
<br>
<br>
<div class="container">
    <div class="row">
      <div class="col-md-6 grid-margin">
            
     
      <h3>
     .03  SMART TANK
      </h3>
      <p class="text-left" >
     	 The 'Smart Tank' a Fuel delivery solution equipped with automation and remote connectivity has been developed for the benefit of:<br>
       Small housing societies,<br>
		Malls,<br>
		Hospitals,<br>
		Banks,<br>
		Construction sites,<br>
		Heavy stationary equipment,<br>
		Farmers,<br>
		Mobile towers,<br>
		Education institutes<br>
		And other small industries.<br>
       
      </p>
       <a href="" class="call_to-btn">
          <span>
            Read More
          </span>
          <img src="images/right-arrow.png" alt="">
        </a>
      </div>
      <div class="col-md-6 grid-margin">
      <img src="14.png" alt="" class="img-fluid w-100">
      </div>
  </div>
  </div>
    
  </section>


  <!-- about section -->

   <!-- footer section -->
  <section class="container-fluid footer_section">
    <p>
      Copyright &copy; 2022 All Rights Reserved
      <a href="http://localhost:8080/FuelDelivery/index.jsp">Fuel Delivery By G22 </a>
    </p>
  </section>
  <!-- footer section -->

  <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.js"></script>

  <script>
    // This example adds a marker to indicate the position of Bondi Beach in Sydney,
    // Australia.
    function initMap() {
      var map = new google.maps.Map(document.getElementById('map'), {
        zoom: 11,
        center: {
          lat: 40.645037,
          lng: -73.880224
        },
      });

      var image = 'images/maps-and-flags.png';
      var beachMarker = new google.maps.Marker({
        position: {
          lat: 40.645037,
          lng: -73.880224
        },
        map: map,
        icon: image
      });
    }
  </script>
  <!-- google map js -->
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA8eaHt9Dh5H57Zh0xVTqxVdBFCvFMqFjQ&callback=initMap">
  </script>
  <!-- end google map js -->
</body>

</html>