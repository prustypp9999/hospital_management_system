<%@page import="com.entity.Doctor"%>
<%@page import="com.db.DbConnect"%>
<%@page import="com.dao.DoctorDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
<%@include file="../component/allcss.jsp"%>
</head>
<body>
	
	<c:if test="${empty doctObj }">
		<c:redirect url="../Doctor_Login.jsp"></c:redirect>
	</c:if>

	<%@include file="d_navbar.jsp"%>

<div class="cointer-fluid">
<div class="row pt-5">
<div class="col-md-6 offset-md-3 bg-Success">
<p class="text-center fs-3  ">DOCTOR  DASHBOARD</p>
</div>

</div>

</div>
	

	<%
	Doctor d = (Doctor) session.getAttribute("doctObj");
	DoctorDao dao = new DoctorDao(DbConnect.getConnection());
	%>
	<div class="container p-1">
		<div class="row">
			<div class="col-md-4 offset-md-2">
				<div class="card paint-card">
					<div class="card-body text-center text-success">
						<i class="fas fa-user-md fa-3x"></i><br>
						<p class="fs-4 text-center">
							Doctor <br><%=dao.countDoctor()%>
						</p>
					</div>
				</div>
			</div>


			<div class="col-md-4">
				<div class="card paint-card"><a class="" href="patient.jsp">
					<div class="card-body text-center text-success">
						<i class="far fa-calendar-check fa-3x"></i><br></a>
						<p class="fs-4 text-center">
							Total Appointment <br>
							<%=dao.countAppointmentByDocotrId(d.getId())%>
						</p>
					</div>
					
				</div>
			</div>

		</div>
	</div>
</body>
</html>