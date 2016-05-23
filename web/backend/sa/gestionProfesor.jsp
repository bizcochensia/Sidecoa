<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../layout/head.jsp" />
<%
    HttpSession sesion = request.getSession();
    if (sesion.getAttribute("email") == null) {
        response.sendRedirect(request.getContextPath());
    } else {

    }
%> 
<div class="row">
    <div class="col-md-6 col-md-offset-3  sin-margin-left">
        <div class="col-md-9 sin-margin-right">
            <div class="input-group">
                <div class="input-group-addon">
                    <span class="glyphicon glyphicon-search" aria-hidden="true"></span>
                </div>
                <input id="filtrar" type="text" class="search form-control"
                       placeholder="Buscar..."/>
            </div>
        </div>
        <div class="col-md-3 sin-margin-left">
            <button class="btn btn-success full-botton" id="nuevoUsuario">
                <i class="glyphicon glyphicon-plus"></i>
            </button>
        </div>
    </div>
</div>
<br>
<div class="row">
    <div class="col-md-8 col-md-offset-2">
        <div class="panel panel-default">
            <div class="alert alert-info"><c:out value="${mensaje}" /></div>
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th><b># ID</b></th>
                        <th><b>Área</b></th>
                        <th><b>Nombre(s)</b></th>
                        <th><b>Apellidos</b></th>
                        <th><b>Correo</b></th>
                        <th><b>Teléfono</b></th>
                        <th><b>Contraseña</b></th>
                        <th><b>Acciones</b></th>
                    </tr>
                </thead>
                <tbody id="tablaUsuarios">
                    <c:forEach items="${usuarios}" var="item">
                    <tr style="display:table-row">
                        <td><c:out value="${item.getIdUsuario()}" /></td>
                        <td><c:out value="${item.getTipo()}" /></td>
                        <td><c:out value="${item.getNombre()}" /></td>
                        <td><c:out value="${item.getApellidoP()} ${item.getApellidoM()}" /></td>
                        <td><c:out value="${item.getEmail()}" /></td>
                        <td><c:out value="${item.getCel()}" /></td>
                        <td><c:out value="${item.getPass()}" /></td>
                        <td>
                            <div class="btn-group btn-group-sm" role="group">
                                <a class="btn btn-info" href="<%= request.getContextPath() %>/opUsuarios?accion=edicion&id=<c:out value="${item.getIdUsuario()}" />" role="button" id="editarUsuario">
                                    <i class="glyphicon glyphicon-pencil"></i> Editar
                                </a>
                                <a class="btn btn-danger" href="<%= request.getContextPath() %>/opUsuarios?accion=eliminar&id=<c:out value="${item.getIdUsuario()}" />" role="button" onclick="return confirm('Esta seguro de eliminar el registro?');">
                                    <i class="glyphicon glyphicon-trash"></i> Eliminar
                                </a>
                            </div>
                        </td>
                    </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-10 col-md-offset-1">
        <p class="derecha"><a class="btn btn-primary btn-lg" href="administracion" role="button">Panel de Administración &raquo;</a>
    </div>
</div>
<SCRIPT type="text/javascript">
    $(document).ready(function () {
            $('#filtrar').keyup(function () {
                var rex = new RegExp($(this).val(), 'i');
                $('.searchable tr').hide();
                $('.searchable tr').filter(function () {
                    return rex.test($(this).text());
                }).show();
            });
        }(jQuery));
</SCRIPT>
<!--Modal Agregar Usuario-->
<div class="modal fade" id="modalAddUsuario" tabindex="-1" role="dialog" aria-labelledby="ModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Cerrar"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="ModalLabel"></h4>
            </div>
            <div class="modal-body">
                <form action="<%= request.getContextPath()%>/opUsuarios?accion=agregar" method="POST" id="formAddUsuario">
                    Aréa: 
                    <select class="form-control" name="tipo" autofocus required>
                        <option value="">Selecciona un Área</option>
                        <option value="1">Subdirección Academica</option>
                        <option value="2">Jefe de Departamento</option>
                    </select><br>
                    Nombre(s): <input type="text" class="form-control" name="nombre" placeholder="Nombre" maxlength="30" required><br>
                    Apellido Paterno: <input type="text" class="form-control" name="apellidoP" placeholder="Apellido Paterno" maxlength="40" required><br>
                    Apellido Paterno: <input type="text" class="form-control" name="apellidoM" placeholder="Apellido Materno" maxlength="40" required><br>
                    Celular: <input type="text" class="form-control" name="cel" placeholder="ej:1234567890" maxlength="10" required><br>
                    E-mail: <input type="email" class="form-control" name="email" placeholder="ej:algo@dominio.com" maxlength="40" required><br>
                    Contraseña: <input type="password" class="form-control" name="pass" placeholder="Contraseña" maxlength="40" required><br>
                    <input type="submit" value="Registrar">
                </form>
            </div>
        </div>
    </div>
</div>   
<jsp:include page="../layout/foot.jsp" />