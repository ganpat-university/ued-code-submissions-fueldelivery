<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>


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

  <!-- contact section -->

  <section class="contact_section layout_padding">
    <div style="padding-left:500px" class="container">
	  <h2 style="color:#082465"class="main-heading">
		Checkout
      </h2>
      <p class="text-center">

      </p>
      <div class="">
        <div class="contact_section-container">
          <div class="row">
            <div class="col-md-8 mx-auto">
              <div class="contact-form">
                <form action="payment.jsp">
<%
String id = request.getParameter("id");
String fuel = request.getParameter("Fuel");
int quantity = Integer.parseInt(request.getParameter("quantity"));
String vechile = request.getParameter("vechile");
String address = request.getParameter("address");
String lic = request.getParameter("lic");
int price = 105 * quantity;
try{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/fueldelivery","root","");
Statement stmt = con.createStatement();
int rs = stmt.executeUpdate("INSERT INTO `orders`(`cust_id`,`fuel`,`quantity`, `vechile`, `address`, `licence`,`price`) VALUES ('"+id+"','"+fuel+"','"+quantity+"','"+vechile+"','"+address+"','"+lic+"','"+price+"')");
if(rs==1){
	 out.println("<div>");
     out.println("Fuel:-<input type='text' value="+fuel+">");
     out.println("    </div>");
     out.println("  <div>");
     out.println("Quantity:-   <input type='text' value="+quantity+">");
     out.println("       </div>");
     out.println("       <div>");
     out.println("Vechile:-<input type='text' value="+vechile+">");
     out.println("       </div>");
     out.println("    <div>");
     out.println("Address:- <input type='text' value="+address+"  >");
     out.println("     </div>");
     out.println("    <div>");
     out.println("Price:- <input type='text' value="+price+"  >");
     out.println("     </div>");
    
     out.println("    <div class='d-flex justify-content-center'>");
}
}

catch (ClassNotFoundException | SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
	}
	%>
  
 <button type="submit" class="btn_on-hover">
                      Checkout
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


</body>
</html>