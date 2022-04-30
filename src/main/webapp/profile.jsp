<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<jsp:include page="header.jsp" /> 


  <!-- contact section -->

  <section class="contact_section layout_padding">
    <div style="padding-left:500px" class="container">
	  <h2 style="color:#082465"class="main-heading">
		Profile
      </h2>
      <p class="text-center">

      </p>
      <div class="">
        <div class="contact_section-container">
          <div class="row">
            <div class="col-md-8 mx-auto">
              <div class="contact-form">
                <form action="index1.jsp">
<% 
   int id = Integer.parseInt(request.getParameter("id"));
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fueldelivery","root","");
Statement st = con.createStatement();
ResultSet rs = st.executeQuery("SELECT * FROM register where id="+id+"");
while(rs.next()){
	String name = rs.getString(2);
	String mobile = rs.getString(3);
	String email = rs.getString(4);
	String pass = rs.getString(5);
	



              out.println("<div>");
              out.println("<input type='text' value="+name+">");
              out.println("    </div>");
              out.println("  <div>");
              out.println("    <input type='text' value="+mobile+">");
              out.println("       </div>");
              out.println("       <div>");
              out.println("         <input type='email' value="+email+">");
              out.println("       </div>");
              out.println("    <div>");
              out.println(" <input type='text' value="+pass+"  >");
              out.println("     </div>");
              out.println("    <div class='d-flex justify-content-center'>");
}
%>
                    <button type="submit" class="btn_on-hover">
                      Logout
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