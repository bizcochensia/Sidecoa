<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../backend/layout/head.jsp" />
<div class="container">
    <h2>REGISTRAR SOLICITUD DE CODIGO</h2>
    <em>Llena el siguiente formulario adecuadamente.</em>
    <br>
    <form action="<%= request.getContextPath()%>/solicitud" method="POST">
        <input type="hidden" name="tipo" value="3">
        Nombre(s): <input type="text" class="form-control" name="nombre" placeholder="Nombre" maxlength="30"  autofocus required><br>
        Apellido Paterno: <input type="text" class="form-control" name="apellidoP" placeholder="Apellido Paterno" maxlength="40" autofocus required><br>
        Apellido Materno: <input type="text" class="form-control" name="apellidoM" placeholder="Apellido Materno" maxlength="40" autofocus required><br>
        Telefono: <input type="text" class="form-control" name="tel" placeholder="Ej:1234567890" maxlength="10" autofocus required><br>
        Celular: <input type="text" class="form-control" name="cel" placeholder="Ej:1234567890" maxlength="10" autofocus required><br>
        Departamento a visitar: <select class="form-control" name="dpto" required>
            <option value="">Selecciona un departamento</option>
            <c:forEach items="${departamentos}" var="dpto">
                <option value="${dpto.getId()}">${dpto.getNombre()}</option>
            </c:forEach>      
        </select>
        <br>
        CURP: <input type="text" class="form-control" name="curp" placeholder="CURP" maxlength="40" autofocus required><br>
        INE: <input type="text" class="form-control" name="ine" placeholder="INE" maxlength="40" autofocus required><br>
        <br>
        <br>
        <input type="submit" value="Generar Codigo">
    </form>
</div>
<jsp:include page="../backend/layout/foot.jsp" />