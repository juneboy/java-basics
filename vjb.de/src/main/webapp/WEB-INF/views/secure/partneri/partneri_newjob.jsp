<%@ page session="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ include file="/WEB-INF/views/templates/navbar-logout.jsp"%>
<%@ include file="/WEB-INF/views/templates/logo-banner.jsp"%>
<%@ include file="/WEB-INF/views/templates/menu-bootstrap.jsp"%>
<!-- Jquery JS-->
<script src="https://code.jquery.com/jquery-1.12.2.min.js" integrity="sha256-Xxq2X+KtazgaGuA2cWR1v3jJsuMJUozyIXDB3e793L8="   crossorigin="anonymous"></script> 
<script src="<c:url value="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" />"></script>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<!-- datepicker -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<style>
/* Set black background color, white text and some padding */
.container-fluid {
	width: 1000px;
	margin: auto;
	padding-bottom: 25px;
}
</style>



<title><spring:message code="partneri.page.home" /></title>
</head>
<body>
	<div class="container-fluid text-center">
		<div class="row content">
			<div class="col-sm-2 sidenav">
				<p>
					<a href="#">Link</a>
				</p>
				<p>
					<a href="#">Link</a>
				</p>
				<p>
					<a href="#">Link</a>
				</p>
			</div>
			<div class="col-sm-8 text-left">
			  <div class="col-sm-12 text-left">
					<p>
					<h4>
						<span class="glyphicon glyphicon-user"></span> Tilinhallinta</h3>
						<p class="text-right"><mark>Welcome <sec:authentication property="principal.username"/>!</mark></p>
						<hr>
						<ol class="breadcrumb">
							<li class="active"><a href="">Laita
									uusi ty�paikka</a></li>
							<li><a href="postedjobs">Julkaistut ty�paikat</a></li>
							<li><a href="tiedot">Partneritiedot</a></li>
						</ol>


						<!-- Laita tietoja t�h�n -->
						<div class="col-sm-12 text-left">
							<form:form role="form" modelAttribute="duuni" method="post">

								<div class="form-group">
									<form:input type="text" class="form-control" path="nimi"
										placeholder="Ty�nimi"></form:input>
									<form:errors path="nimi" cssClass="Virheteksti" />
								</div>
								<div class="form-group">
								   <select name="ala" class="form-control">
								    <option>Valitse ty�ala</option>
								    <c:forEach items="${alaList }" var="alaList">
								    <option><c:out value="${alaList }"/></option>
								    </c:forEach>
								   </select>
								</div>

								<div class="form-group">
									<form:textarea class="form-control" path="tiedot" rows="6"
										placeholder="Ty�tiedot" />
										<form:errors path="tiedot" cssClass="Virheteksti" />
								</div>

								<div class="form-group">
									<form:input type="text" class="form-control" path="palkka"
										placeholder="Palkka 2000/kk"></form:input>
										<form:errors path="palkka" cssClass="Virheteksti" />
								</div>

								<div class="form-group">
									<form:input type="text" class="form-control" path="paikka"
										placeholder="Paikka"></form:input>
										<form:errors path="paikka" cssClass="Virheteksti" />
								</div>

								<div class="form-group">
									<form:textarea class="form-control" path="vaatimus" rows="6"
										placeholder="Ty�vaatimukset" />
										<form:errors path="vaatimus" cssClass="Virheteksti" />
								</div>

								<div class="form-group">
									<form:select class="form-control" path="sopimus"
										placeholder="Ty�sopimus">
										<form:option value="Valitse sopimustyyppi"></form:option>
										<form:options items="${sopimukset }"></form:options>
									</form:select>
								</div>

								<div class="form-group">

									<input class="form-control" path="erapv" id="datepicker"
										placeholder="Er�p�iv�" />
										<form:errors path="erapv" cssClass="Virheteksti" />
									<script type="text/javascript">
										$(function() {
											$('#datepicker').datepicker();
										});
									</script>
								</div>


								<input type="submit"
									class="col-sm-offset-5 col-sm-2 btn-success" value="Laita" />

							</form:form>
						</div>
						<!-- loppu	 -->
				</div>



				<div class="col-sm-4"></div>
			</div>
			<div class="col-sm-2 sidenav">
				<div class="well">
					<p>ADS</p>
				</div>
				<div class="well">
					<p>ADS</p>
				</div>
			</div>
		</div>
	</div>
<%@ include file="/WEB-INF/views/templates/footer-over.jsp"%>
<%@ include file="/WEB-INF/views/templates/footer-under.jsp"%>
</body>

</html>