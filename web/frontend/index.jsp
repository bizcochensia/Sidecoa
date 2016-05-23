<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="layout/head.jsp" />
<main class="cd-main">
    <header>
        <div style="width: 30%; float: left; margin-top: 30px;">
            <img src="frontend/assets/img/ipn.png" alt="IPN" width="150px" />
        </div>
        <div style="width: 40%; float: left;">
            <h1>ACOS-PA</h1>
            <h4>Sistema de Control de Acceso de Personal</h4>
        </div>
        <div style="width: 30%; float: left; margin-top: 50px;">
            <img src="frontend/assets/img/escom.png" alt="ESCOM" width="150px" />
        </div>
    </header>

    <ul class="cd-gallery">
        <li class="cd-item">
            <a href="frontend/item-1.jsp">
                <div>
                    <h2>¿Qué es ACOS-PA?</h2>
                    <p>Te contamos que es y cómo te puede ayudar</p>
                    <b>Ver Más</b>
                </div>
            </a>
        </li>

        <li class="cd-item">
            <a href="frontend/items-2.jsp">
                <div>
                    <h2>¿Ya sabes cómo funciona?</h2>
                    <p>Aqui te decimos que hacer y como hacerlo</p>
                    <b>Ver Más</b>
                </div>
            </a>
        </li>
 <!--
       <li class="cd-item">
            <a class="dark-text" href="items-3.jsp">
                <div>
                    <h2>¡Solicita un codigo de accesso!</h2>
                    <p>Recuerda tener tus INE a la Mano</p>
                    <b>Realizar Solicitud</b>
                </div>
            </a>
        </li>

        <li class="cd-item">
            <a href="frontend/items-4.jsp">
                <div>
                    <h2>Gestionar SIDECOA</h2>
                    <p>Para administradores</p>
                    <b>Iniciar Sesión</b>
                </div>
            </a>
        </li>-->
    </ul> <!-- .cd-gallery -->
</main> <!-- .cd-main -->

<div class="cd-folding-panel">

    <div class="fold-left"></div> <!-- this is the left fold -->

    <div class="fold-right"></div> <!-- this is the right fold -->

    <div class="cd-fold-content">
        <!-- content will be loaded using javascript -->
    </div>

    <a class="cd-close" href="#0"></a>
</div> <!-- .cd-folding-panel -->
<jsp:include page="layout/foot.jsp" />