<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-success">
	<div class="container-fluid">
		<h5></h5>
		<a class="navbar-brand" href="index.jsp"><i
			class="fa-solid fa-truck-medical"></i> CureWell Hospital </a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
			<c:if test="${empty userObj }">
			
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="index.jsp"> <i
						class="fa-solid fa-hospital"></i>HOME
				</a></li>
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="admin_login.jsp"><i
						class="fa-solid fa-right-to-bracket"></i> Admin</a></li>

				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="Doctor_Login.jsp"><i
						class="fa-solid fa-user-doctor"></i>Doctor</a></li>

				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="user_appointment.jsp"><i
						class="fa-solid fa-calendar-check"></i>Appointment</a></li>

				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="user_login.jsp"><i
						class="fa-solid fa-user"></i>User</a></li>
            </c:if>
             <c:if test="${not empty userObj }">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="user_appointment.jsp">Appointment</a></li>

				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="view_appointment.jsp">View Appointment</a></li>
				<div class="dropdown">
					<button class="btn btn-danger dropdown-toggle" type="button"
						id="dropdownMenuButton1" data-bs-toggle="dropdown"
						aria-expanded="false"><i class="fa-solid fa-user"></i>Hello ${userObj.userName}</button>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
						<li><a class="dropdown-item" href="change_password.jsp">Change password</a></li>
						<li><a class="dropdown-item" href="userlogout">Logout</a></li>
					</ul>
				</div>
			</c:if>
			</ul>
		</div>
	</div>
</nav>