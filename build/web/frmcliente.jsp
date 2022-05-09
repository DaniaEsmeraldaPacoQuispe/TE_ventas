<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="es">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

        <title>Punto de venta</title>
    </head>
    <body>
        <div class="container">
            <h1>Formulario de clientes</h1>
            <jsp:include page="WEB-INF/menu.jsp">
                <jsp:param name ="opcion" value="clientes" />
            </jsp:include>
            <br> 
            <form action ="ClienteControlador" method="post">
                <input type="hidden" name="id" value="${cliente.id}">
                       <div class="form-group">
                    <label for="" class="form-label">Nombre</label>
                    <input type="text" class="form-control" nombre="nombre" value="${cliente.nombre}" placeholder="Escriba su nombre">
                </div>

                <div class="form-group">
                    <label for="" class="form-label">Correo electronico</label>
                    <input type="email" class="form-control" nombre="correo" value="${cliente.correo}" placeholder="Escriba su correo electronico">
                </div>

                <div class="form-group">
                    <label for="" class="form-label">Celular</label>
                    <input type="text" class="form-control" nombre="celular" value="${cliente.celular}" placeholder="Escriba su celular">
                </div>               
                <br><br>
                <button type="submit" class="btn btn-primary">Enviar</button>
            </form>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    </body>
</html>
    