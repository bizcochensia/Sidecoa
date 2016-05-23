<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../layout/head.jsp" />
<div class="row">
    <div class="col-md-12">
        <h2>LLene el registro para dar de alta una Materia</h2>
        <p class="derecha btn-cancelar">
            <a class="btn btn-danger" href="gestionMaterias.jsp" role="button"><span class="glyphicon glyphicon-user icon-out" aria-hidden="true"></span>Cancelar&raquo;</a>
        </p>
    </div>
</div>
<form>
    Nombre de la materia: <input type="text" class="text-input" name="materia" placeholder="Nombre de la Materia" maxlength="30" autofocus required><br>
    Nivel de la materia: <input type="number" class="text-input" name="nivel" placeholder="Nivel" maxlength="30" max="5" min="0" autofocus required><br>
    <br>        
    <input type="submit" value="Registrar">
</form>
<jsp:include page="../layout/head.jsp" />