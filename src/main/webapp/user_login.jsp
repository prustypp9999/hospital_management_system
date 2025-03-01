<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Login Page</title>
<%@include file="component/allcss.jsp"%>
</head>
<body>
	<%@include file="component/navbar.jsp"%>

	<!-- user ligin -->
	<style>
.paint-card {
	box-shadow: 0 0 10px 0 rgba(100, 50, 100, 0.3);
}
</style>

	<div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 text-center">
							<b>User Login</b>
						</p>
						<c:if test="${not empty errorMsg}">
							<p class="fs-6 text-center text-danger">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>
						<c:if test="${not empty succMsg}">
							<div class="fs-6 text-center text-success" role="alert">${succMsg}</div>
							<c:remove var="succMsg" scope="session" />
						</c:if>

						<form action="userLogin" method="post">

							<div class="mb-3">
								<label class="form-label">Email address</label> <input required
									name="email" type="email" class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Password</label> <input required
									name="password" type="password" class="form-control">
							</div>

							<button type="submit"
								class="btn bg-success text-white col-md-4 offset-md-1">Login</button>
							<button type="reset"
								class="btn bg-success text-white col-md-4 offset-md-2">Reset</button>
						</form>
						<br>

						<p>
							Don't have an account ?<a href="signup.jsp"
								class="text-decoration-none">Create Account</a>
						</p>

					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- if dont have account -->

</body>
</html>