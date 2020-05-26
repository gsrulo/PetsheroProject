<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Login</title>
	<link rel="stylesheet" href="assets/vendors/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/vendors/fontawesome/css/all.min.css">
	<link rel="stylesheet" href="assets/vendors/fontawesome/css/fontawesome.min.css">
	<link rel="stylesheet" href="assets/css/main.css">
</head>
<body class="bg-default">
	<div class="h-100 overflow-auto">
		<div class="container">
			<div class="mt-4 mb-2"> 
				<nav class="row justify-content-between align-items-center navbar-content">
					 <div class="col-lg-3">
					 	<div class="d-inline-block text-center">
					 		<img src="assets/images/logo.svg" alt="" width="70" class="img-fluid" />
  							<strong class="text-uppercase m-0 title-logo d-block">pets hero</strong>
					 	</div>
					 </div>
					 <div class="col-lg-4">
					 	<nav class="nav justify-content-end">
						  <a class="nav-link text-padrao-dark font-weight-bold active" href="contato.jsp">Contato</a>
						  <a class="nav-link text-padrao-dark font-weight-bold" href="sobreFora.jsp">Sobre</a>
						  <span class="nav-link text-padrao-dark font-weight-bold">|</span>
						  <span class="nav-link text-padrao-dark pr-0">
						  	<a href="cadastrar.jsp" class="btn btn-sm btn-menu-cadastrar text-uppercase">cadastrar</a>
						  </span>
						  </nav>
					 </div>
				</nav>
			</div>
		</div>
		<div class="container">
		   <div class="p-5 bg-white rounded">
				<div class="row">
					<div class="col-lg-6">
						<img src="assets/images/authentication.svg" alt="" class="img-fluid" />
					</div>
					<div class="col-lg-6">
						<form action="auth" accept-charset="UTF-8" method="POST">
							<h1 class="mb-4 mt-5 text-center text-uppercase font-weight-bold">Login</h1>
							<div class="form-group">
								<label class="font-weight-bold">E-mail</label>
								<input type="text" name="usuario" class="form-control" required>
							</div>
							<div class="form-group">
								<label class="font-weight-bold">Senha</label>
								<input type="password" name="senha" class="form-control" required>
							</div>
							<!--  -->
							<c:if test="${param.error ne null and param.error eq 'authentication'}">
								<div class="alert alert-danger" role="alert">
								 	Usuário ou senha incorreto!
								</div>
							</c:if>
							<!--  -->
							<div class="form-group">
								<button type="submit" class="text-uppercase btn-block btn-first rounded py-2">entrar</button>
							</div>
							<div class="text-center">
								<a href="cadastrar.jsp" class="nav-link text-dark">
								Criar uma conta
								<i class="fas fa-arrow-right"></i>
								</a>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="assets/vendors/jquery/jquery.min.js"></script>
    <script type="text/javascript" src="assets/vendors/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript">
	    $(document).ready(function(){
	    	$('form').on("submit", function(){
	    		var btn = $(this).find("button[type=submit]");
				btn.attr("disabled",true);
				btn.html('Entrando <span class="spinner-border spinner-border-sm" role="status" aria-hidden="true"></span>');
	    	});
	    });
    </script>
</body>
</html>