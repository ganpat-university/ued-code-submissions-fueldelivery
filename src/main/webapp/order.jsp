<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:include page="header.jsp" /> 
<% 
   int id = Integer.parseInt(request.getParameter("id"));
  
%>
  <!-- contact section -->
  <section class="contact_section layout_padding">
    <div class="container">

      <h2 class="main-heading" style="color:#fec913">
        Orders

      </h2>
      <p class="text-center">

      </p>
      <div class="">
        <div class="contact_section-container">
          <div class="row">
            <div class="col-md-6 mx-auto">
              <div class="contact-form">
                <form action="OrderData.jsp">
                  <div>
                  
                <input type="hidden" name="id" value="<%out.println(id);%>">
                <select style="padding-left:43%;padding-right:43%;" name="Fuel">
				<option value="petrol">Fuel:-</option>
				<option value="petrol">Petrol</option>
				<option value="diesel">Diesel</option>
			</select>
                  </div>
                  <div>
                    <input type="number" placeholder="Quanity(IN Liter)" name="quantity">
                  </div>
                  <div>
                   <select style="padding-left:41%;padding-right:41%;" name="vechile">
				<option value="two">Vechile:-</option>
				<option value="two">Two Wheeler</option>
				<option value="four">Four Wheeler</option>
				<option value="truck">Truck</option>
			</select>  </div>
				  <div>
                    <input type="text" placeholder="Address" class="input_message" name="address">
                  </div>
                  <div>
                    <input type="file" placeholder="License" name="lic">
                  </div>
                  <div class="d-flex justify-content-center">
                    <button type="submit" class="btn_on-hover">
                      Submit	
                    </button>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>

    </div>
  </section>


  <!-- end contact section -->

  <!-- footer section -->
  <section class="container-fluid footer_section">
    <p>
      Copyright &copy; 2019 All Rights Reserved By
      <a href="http://localhost:8080/FuelDelivery/index1.jsp">G22</a>
    </p>
  </section>
  <!-- footer section -->

  <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.js"></script>
  <!-- progreesbar script -->

  </script>
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