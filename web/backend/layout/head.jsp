<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js">
    <head>
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
      <title>Registro de Visitante</title>
      <meta name="description" content="">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="icon" type="image/png" href="backend/assets/img/ipn.png" />
      <link rel="stylesheet" href="backend/assets/css/bootstrap.min.css">
      <link rel="stylesheet" href="backend/assets/css/bootstrap-theme.min.css">
      <link rel="stylesheet" href="backend/assets/css/main.css">
      <script src="backend/assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
    </head>
    <body>
               
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <p class="derecha">
                        <a class="btn btn-default" href="<%= request.getContextPath()%>/login?accion=cerrar" role="button"><span class="glyphicon glyphicon-user icon-out" aria-hidden="true"></span>Cerrar Sesión&raquo;</a>
                    </p>
                </div>
            </div>
            <div class="jumbotron">
                <div class="row">
                    <div class="col-md-12">
                       <h1>ACOS-PA</h1>
                       <p>Sistema de Acceso de personal </p>
                       <!--<p class="derecha"><a class="btn btn-primary btn-lg" href="#" role="button">Learn more &raquo;</a></p>-->
                    </div>
                </div>
            </div>
        </div>