<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="layout/head.jsp" />
<div class="cd-fold-content single-page">
    <h2>¿Ya sabes cómo funciona?</h2>
    <em>Es muy sencillo, aqui te explicamos que pasos debes seguir para solicitar una codigo.</em>
    <p>1)Solicitala antes de presentarte </p>
    <p>2)Ve a la sección de 
    <div id="login">
   
                    <form action="<%= request.getContextPath()%>/examen" method="POST">
                        <input type="submit" value="Solicita Tu Codigo de Ingreso">
                     </form></p>
    <p>3)Llena el pequeño formulario que encontrarás ahí</p>
    <p>4)Descarga tu Codigo al Celular</p>
    <p>5)Asiste a tu cita</p>
    <h3>Listo!  ...  has terminado con el procceso.</h3>
    <br><br><br><hr>
    <spam>NOTA: en el caso de tener dudas llama al centro de atención</spam>
    <hr>
</div>
<jsp:include page="layout/foot.jsp" />