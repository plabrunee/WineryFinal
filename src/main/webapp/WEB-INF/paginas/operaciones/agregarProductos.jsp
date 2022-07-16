<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:setLocale value="es_AR"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"> -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        
        <title>Winery</title>
</head>
<body>
<!--<div class="modal fade" id="agregarProductoModal">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header bg-info text-white">
                <h5 class="modal-title">Agregar producto</h5>
            </div>
-->
        <div class="container mt-5">
            <div class="h-5 mt-5 mb-5">Complete los datos para el nuevo producto</div>
            <form action="${pageContext.request.contextPath}/ServletControlador?accion=insertar" method="POST" class="was-validated">
                <!--<div class="modal-body">-->
                    <div class="form-group">
                        <label for="marca">Marca</label>
                        <input type="text" class="form-control" name="marca" required="">
                    </div>
                    <div class="form-group">
                        <label for="tipo">Tipo</label>
<!--                        <input type="text" class="form-control" name="tipo">-->
                        <select name="tipo" id="selectTipos" class="form-control">
                            <option value="" selected>-</option>
                            <c:forEach var="tipo" items="${tipos}">
                                <option value="${tipo.descripcion}">${tipo.descripcion}</option>
                            </c:forEach>
                        </select>
<!--                        <select name="tipo" id="selectTipos">
                                <option value="VT">Vino Tinto</option>
                                <option value="VB">Vino Blanco</option>
                                <option value="VTF">Vino Tinto Fino</option>
                                <option value="VBF">Vino Blanco Fino</option>
                        </select>-->
                    </div>
                    <div class="form-group">
                        <label for="anio">Año</label>
                        <input type="number" class="form-control" name="anio" required="">
                    </div>
                    <div class="form-group">
                        <label for="stock">Stock</label>
                        <input type="number" class="form-control" name="stock" required="">
                    </div>
                    <div class="form-group">
                        <label for="precio">Precio</label>
                        <input type="currency" class="form-control" name="precio" required="">
                    </div>
                <!--</div>-->
                <!--<div class="modal-footer">-->
                    <button class="btn btn-primary mt-5" type="submit">
                        Guardar
                    </button>
                    <a href="${pageContext.request.contextPath}/ServletControlador" class="btn btn-secondary mt-5">
                        Cancelar
                    </a>
                <!--</div>-->
            </form>
        </div>
<!--        </div>
    </div>
</div>-->
</body>
</html>