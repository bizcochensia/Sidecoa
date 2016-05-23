<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../layout/head.jsp" />
<div class="row">
    <div class="col-md-6 col-md-offset-3  sin-margin-left">
        <h2 id="titulo"></h2>
        <p class="derecha btn-cancelar">
            <a class="btn btn-danger" href="usuarios" role="button"><span class="glyphicon glyphicon-user icon-out" aria-hidden="true"></span>Cancelar&raquo;</a>
        </p>
        <br>
        <form action="<%= request.getContextPath() %>/usuarioAgregado" method="POST" id="formUsuario">
            <input type="hidden" name="tipo" value="2">
            Nombre(s): <input type="text" class="text-input" name="nombre" placeholder="Nombre" maxlength="30" autofocus required><br>
            Apellido Paterno: <input type="text" class="text-input" name="apellidoP" placeholder="Apellido Paterno" maxlength="40" autofocus required>
            Apellido Paterno: <input type="text" class="text-input" name="apellidoM" placeholder="Apellido Materno" maxlength="40" autofocus required><br>
            Celular: <input type="text" class="text-input" name="cel" placeholder="ej:1234567890" maxlength="10" autofocus required><br>
            E-mail: <input type="email" class="text-input" name="email" placeholder="ej:algo@dominio.com"  maxlength="40" autofocus required><br>
            <br><br>
            <input type="submit" id="regUsuario" value="Registrar">
        </form>
    </div>
</div>
<jsp:include page="../layout/foot.jsp" />