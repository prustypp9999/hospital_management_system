
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>home</title>
<%@include file = "component/allcss.jsp" %>
<style >
.paint-card {
         box-shadow: 0 0 10px 0 rgba(100, 50, 100, 0.3);
}
</style>
</head>
<body>
<%@include file = "component/navbar.jsp" %>


<%-- <% Connection conn=DbConnect.getConnection();
  out.print(conn);
 %>
 --%>

<!-- carousel -->
<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="img/slider3m.jpg" class="d-block w-100" alt="..." height="500px">
    </div>
    <div class="carousel-item">
      <img src="img/12.png" class="d-block w-100" alt="..." height="500px">
    </div>
    <div class="carousel-item">
      <img src="img/17.png" class="d-block w-100" alt="..." height="500px">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>


<!-- xxxx -->
<div class="container p-3">
		<p class="text-center fs-2 ">Key Features of our Hospital</p>

		<div class="row">
			<div class="col-md-8 p-5">
				<div class="row">
					<div class="col-md-6">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">100% Safety</p>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									Voluptatem, inventore</p>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">Clean Environment</p>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									Voluptatem, inventore</p>
							</div>
						</div>
					</div>
					<div class="col-md-6 mt-2">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">Friendly Doctors</p>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									Voluptatem, inventore</p>
							</div>
						</div>
					</div>
					<div class="col-md-6 mt-2">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">Medical Research</p>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									Voluptatem, inventore</p>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-4">
				<img alt="" src="img/doctpre.jpg" width="400" height="350">
			</div>

		</div>
	</div>
<!-- BREAK LINE -->
	<hr>

	<div class="container p-2">
		<p class="text-center fs-2 "><b>OUR TEAM </b></p>
		
		<div class="row">
			<div class="col-md-2">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="img/doct4.jpg" width="150px" height="250px">
						<p class="fw-bold fs-5">Dr. Robert Jems</p>
						<p class="fs-7">(CEO & Chairman)</p>
					</div>
				</div>
			</div>

			<div class="col-md-2">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="img/doct3.jpg" width="150px" height="250px">
						<p class="fw-bold fs-5">Dr. P.K Prusty</p>
						<p class="fs-7">(Chief Doctor)</p>
					</div>
				</div>
			</div>

			<div class="col-md-2">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="img/doct2.jpg" width="150px" height="220px">
						<p class="fw-bold fs-5">Dr. Dhananjaya Swain</p>
						<p class="fs-7">(Chief Doctor)</p>
					</div>
				</div>
			</div>

			<div class="col-md-2">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="img/doct1.jpg" width="150px" height="220px">
						<p class="fw-bold fs-5">Dr. Biswajit Biswal</p>
						<p class="fs-7">(Chief Doctor)</p>
					</div>
				</div>
			</div>
			<div class="col-md-2">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="img/doct5.png" width="150px" height="250px">
						<p class="fw-bold fs-5">Dr. Swati dash</p>
						<p class="fs-7">(Chief Doctor)</p>
					</div>
				</div>
			</div>
			<div class="col-md-2">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="img/doct6.jpg" width="150px" height="220px">
						<p class="fw-bold fs-5">Dr. Ayesha Kumari</p>
						<p class="fs-7">(Chief Doctor)</p>
					</div>
				</div>
			</div>

		</div>

	</div>
	<!-- footer -->
	<%@include file="component/footer.jsp" %>

</body>
</html>