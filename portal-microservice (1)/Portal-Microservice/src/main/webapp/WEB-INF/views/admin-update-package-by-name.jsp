<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>International Patients Management System</title>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Pinyon+Script&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="/css/style.css">
<link rel="stylesheet" href="/css/style-table.css">
<link rel="stylesheet" href="/css/style-admin.css">
</head>
<body>
	<div class="main-container-register">
		<%@ include file="fragments/header.jsp"%>
		<div class="section grid">
			<%@ include file="admin-fragments/admin-sidebar.jsp"%>
			<div class="content list-container">
				<h1>Our In-patient Services</h1>
				<div class="container">
					<form:form action="/portal/updatePackage" method="GET"
						modelAttribute="packageDetails" >
				
						<div class="form-group">
							<form:label path="treatmentPackageName">Treatment Package Name</form:label>
							<form:input path="treatmentPackageName" class="form-control" id="treatmentPackageName"
								type="text" required="required"
								data-error="Please enter a valid Name." />
						</div>
				
					<div class="form-group">
							<form:label path="testDetails">Test Details</form:label>
							<form:input path="testDetails" class="form-control"
								id="testDetails"
								required="required" />
						</div>
						
						<div class="form-group">
							<form:label path="cost">Cost</form:label>
							<form:input path="cost" class="form-control"
								id="cost" max="75"
								required="required" />
						</div>
						<div class="form-group">
							<form:label path="treatmentDuration">Treatment Duration</form:label>
							<form:input path="treatmentDuration" class="form-control"
								id="treatmentDuration" pattern="[0-9]"
								required="required" 
								data-error="Contact Number should be of 10 digits."/>
						</div>
						<form:button class="btn">Update</form:button>
						<button class="btn btn-reset" onclick="registerReset()">Reset</button> 
						</form:form>
				</div>
			
			
			<div class="container result-container center border">
					<h3>Search Result</h3>
					<c:choose>
						<c:when test="${not empty error}">
							<div class="error">${error}</div>
						</c:when>
						<c:otherwise>
							<c:choose>
								<c:when test="${not empty ipTreatmentPackagekageName}">
									<span><h5>Ailment</h5> </span>
									<span> : </span>
									<span>${ipTreatmentPackagekageName.getAilmentCategory()}
									</span>
									<br />
									<span><h5>Package Name</h5></span>
									<span> : </span>
									<span>${ipTreatmentPackagekageName.getPackageDetail().getTreatmentPackageName()}</span>
									<br />
									<span><h5>Test Details</h5></span>
									<span> : </span>
									<span>${ipTreatmentPackagekageName.getPackageDetail().getTestDetails()}</span>
									<br />
									<span><h5>Cost</h5></span>
									<span> : </span>
									<span>${ipTreatmentPackagekageName.getPackageDetail().getCost()}</span>
									<br />
									<span><h5>Duration</h5></span>
									<span> : </span>
									<span>${ipTreatmentPackagekageName.getPackageDetail().getTreatmentDuration()}</span>
									<br />
								</c:when>
							</c:choose>
						</c:otherwise>
					</c:choose>
				</div>
				
				
				</div>
			</div>
		</div>
		<%@ include file="fragments/footer.jsp"%>
	
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="/js/script.js"></script>
</body>
</html>