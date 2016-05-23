<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../layout/head.jsp" />
<%
    HttpSession sesion = request.getSession();
    if (sesion.getAttribute("email") == null) {
        response.sendRedirect(request.getContextPath());
    } else {

    }
%> 
<div class="cd-fold-content single-page">
    <h2>REGISTRAR SOLICITUD DE CODIGO</h2>
    <em>Llena el siguiente formulario adecuadamente.</em>
    <form action="<%= request.getContextPath()%>/solicitud" method="POST">
        <input type="hidden" name="tipo" value="3">
        Nombre(s): <input type="text" class="text-input" name="nombre" placeholder="Nombre" maxlength="30" pattern="[A-Za-z]" autofocus required><br>
        Apellido Paterno: <input type="text" class="text-input" name="apellidoP" placeholder="Apellido Paterno" maxlength="40" autofocus required><br>
        Apellido Materno: <input type="text" class="text-input" name="apellidoM" placeholder="Apellido Materno" maxlength="40" autofocus required><br>
        RFC: <input type="text" class="text-input" name="boleta" placeholder="RFC" maxlength="40" autofocus required><br>
        E-mail: <input type="email" class="text-input" name="email" placeholder="Ej:algo@dominio.com"  maxlength="40" autofocus required><br>
        Celular: <input type="text" class="text-input" name="cel" placeholder="Ej:1234567890" maxlength="10" autofocus required><br>
        Area a visitar: <select class="text-input" name="materia" required>
            <option value="">Selecciona una area</option>
            <c:forEach items="${materias}" var="mate">
                <option value="${mate.getIdMateria()}">${mate.getMateria()}</option>
            </c:forEach>      
        </select>
        <br>
        Motivos: <br> 
        <textarea rows="5" cols="50" name="motivos" size="140" placeholder="¿Cual es el motivo de tu visita?" autofocus></textarea>
        <br><br>
        <br><br>
        <input type="submit" value="Realizar Solicitud">
    </form>
    <br><br<hr>
</div>
<jsp:include page="../layout/foot.jsp" />