<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../layout/head.jsp" />
<%
    HttpSession sesion = request.getSession();
    if (sesion.getAttribute("email") == null) {
        response.sendRedirect(request.getContextPath());
    } else {

    }
%> 
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="opcion derecha">
                <h2>Ver solicitudes de examenes</h2>
                <p>Podrás ver las solicitudes de examenes que tienes que atender.</p>
                <p><a class="btn btn-default" href="listaExamenesPendientes.jsp" role="button">Ver examenes &raquo;</a></p>
            </div>
        </div>
    </div>
</div>
<jsp:include page="../layout/foot.jsp" />