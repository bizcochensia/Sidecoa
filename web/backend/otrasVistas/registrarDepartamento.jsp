<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../layout/head.jsp" />
<div class="row">
    <div class="col-md-12">
        <h2>LLene el registro para dar de alta a un departamento</h2>
        <p class="derecha btn-cancelar">
            <a class="btn btn-danger" href="gestionDepartamentos.jsp" role="button"><span class="glyphicon glyphicon-user icon-out" aria-hidden="true"></span>Cancelar&raquo;</a>
        </p>
    </div>
</div>
<form>
    Nombre del departamento: <input type="text" class="text-input" name="departamento" placeholder="Nombre del Departamento" maxlength="30" autofocus required><br>
    <br>
    <input type="submit" value="Registrar">
</form>
<jsp:include page="../layout/foot.jsp" />