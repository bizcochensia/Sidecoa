<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../layout/head.jsp" />
<div class="row">
    <div class="col-md-12">
        <h2>LLene el registro para dar de alta a una Academia</h2>
        <p class="derecha btn-cancelar">
            <a class="btn btn-danger" href="gestionAcademias.jsp" role="button"><span class="glyphicon glyphicon-user icon-out" aria-hidden="true"></span>Cancelar&raquo;</a>
        </p>
    </div>
</div>
<form>
    Nombre de la academia: <input type="text" class="text-input" name="nombreAcademia" placeholder=" nombre" maxlength="30" autofocus required><br>
    E-mail: <input type="email" class="text-input" name="email" placeholder=" ej:algo@dominio.com"  maxlength="40" autofocus required><br>
    <div class="boots">
        Materias pertenecientes:<input list="materias" class="text-input" name="materia" placeholder=" nombre de la materia" required>
        <datalist id="materias">
            <option value="AnÃ¡lisis Vectorial">
            <option value="Cálculo">
            <option value="Matemáticas Discretas">
            <option value="Algoritmia y ProgramaciÃ³n Estructurada">
            <option value="Física">
            <option value="Ingenería, Ãtica y Sociedad">
            <option value="Ecuaciones Diferenciales">
            <option value="Ãlgebra Lineal">
            <option value="CÃ¡lculo Aplicado">
            <option value="Estructura de Datos">
            <option value="ComunicaciÃ³n Oral y Escrita">
            <option value="AnÃ¡lisis Fundamental de Circuitos">
            <option value="MatemÃ¡ticas Avanzadas para la IngenerÃ­a">
            <option value="Fundamentos EconÃ³micos">
            <option value="Fundamentos de DiseÃ±o Digital">
            <option value="TeorÃ­a Computacional">
            <option value="Base de Datos">
            <option value="ProgramaciÃ³n Orientado a Objetos">
            <option value="ElectrÃ³nica AnalÃ³gica">
            <option value="Redes de Computadoras">
            <option value="DiseÃ±o de Sistemas Digitales">
            <option value="Probabilidad y Estadistica">
            <option value="Sistemas Operativos">
            <option value="AnÃ¡lisis y DiseÃ±o Orientado a Objetos">
            <option value="TecnologÃ­as para la Web">
            <option value="AdministraciÃ³n Financiera">
            <option value="Arquitectura de Computadoras">
            <option value="AnÃ¡lisis de Algoritmos">
            <option value="IngenerÃ­a de Software">
            <option value="AdministraciÃ³n de Proyectos">
            <option value="InstrumentaciÃ³n">
            <option value="Teoría de Comunicaciones y SeÃ±ales">
            <option value="Aplicaciones para Comunicaciones en Red">
            <option value="Metodos Cuantitativos para la Toma de Decisiones">
            <option value="Introducción a los Microcontroladores">
            <option value="Compiladores">
            <option value="Optativa">
            <option value="Desarrollo de Sistemas Distribuidos">
            <option value="AdministraciÃ³n de Servicios en Red">
            <option value="Gestión Empresarial">
            <option value="Liderazgo y Desarrollo Profesional">
        </datalist>    
    </div>
    <br><br><br>        
    <input type="submit" value="Registrar">
</form>
<jsp:include page="../layout/foot.jsp" />