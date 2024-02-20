<%@page import="modelo.LeeProducto.guardarProductos"%>
<%@page import="java.util.ArrayList,control.recibeDatos, modelo.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% Producto x= (Producto) request.getAttribute("product"); %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title><%=x.getNombre()%> | BasiCs</title>
        <link rel="icon" href="imagenes/Logos/LogoPNG.png" type="image/x-icon"/>

        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <link rel="icon" href="imagenes/Logos/LogoPNG.png" type="image/x-icon"/>

    </head>
    <body>
        <marquee><b> WORLDWIDE SHIPPING | &copy; 2024 BasiCs. All rights reserved </b></marquee>
        <header class="arriba">    
            <hgroup class="medir">
                <form action="MuestraProductos"> <input type="submit"  class="logo" name="origen" value="BasiCs"/> </form>
                <input type="search" name="search" class="busqueda" placeholder="Buscar Productos...">             
                <section class="cesta">   <!-- Desde la cesta redirigimos usando el value Finalizar compra para comunicar con recibeDatos , y que este nos lleve a FinCompra.jsp para mostrar todos los productos-->
                    <form action="MuestraProductos">
                        <input value="Final" type="submit" class="cesta" name="origen"/>
                    </form>
                </section>
            </hgroup>
        </header>

      <main>
                          

            <div class="container" class="imagen">
                <div id="myCarousel" class="carousel slide" data-ride="carousel" style="max-width: 500px;">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                    </ol>

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner">
                        <div class="item active">
                            <img src="<%= x.getRutaimg()%>.jpg" class="imagen"  style="width:100%;">
                        </div>

                        <div class="item">
                            <img src="<%= x.getRutaimg()%>2.jpg" class="imagen" alt="Chicago" style="width:100%;">
                        </div>
                    </div>

                    <!-- Left and right controls -->
                    <a class="left carousel-control" href="#myCarousel" data-slide="prev" style="width:10%">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#myCarousel" data-slide="next" style="width:10%">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
            <div class="informacion">
            <div class="informacion-producto">
                <div class="titulo-encima-precio">
                    <span><%= x.getNombre()%></span>
                </div>

                <div class="precio">
                    <span><%= x.getPrecio()%> EUR</span>
                    <i class="fa-solid fa-angle-right"></i>
                </div>

                <div class="detalles-producto">
                    <div class="elecciones">
                        <label for="color">Color</label>
                        <select name="color" id="color">
                            <option>Escoge una opcion</option>
                            <option value="Negro">Amarillo</option>
                            <option value="Rojo">Rojo</option>
                            <option value="Blanco">Rosa</option>
                        </select>
                    </div>
                    <div class="elecciones">
                        <label for="Talla">Talla</label>
                        <select name="Talla" id="Talla">
                            <option>Escoge una opcion</option>
                            <option value="xs">XS</option>
                            <option value="s">S</option>
                            <option value="m">M</option>
                            <option value="l">L</option>
                            <option value="xl">XL</option>
                        </select>
                    </div>
                    
                </div>
            <form action="recibeDatos" method="post">

                    <input type="hidden" name="seleccionado" class="logo" value="<%=x.getCodigo()%>" />
                <div class="carrito-cantidad">
                    <div class="cantidad">
                        <input type="number" name="cantidad" placeholder="1" value="1" min="1" class="input-cantidad">
                        <div class=".sumar-restar-flechas">
                            <i class="fa-solid fa-chevron-up" id="increment"></i>
                            <i class="fa-solid fa-chevron-down" id="decrement"></i>
                        </div>
                    </div>

                        <input type="submit" name="origen" value="Agregar a la cesta" class="aniadir-carrito"/>
                        <input type="submit" name="origen" value="Volver" class="aniadir-carrito"/>

                </div>
</form>
                <div class="descripcion-producto">
                    <div class="descripcion-producto-titulo">
                        <h4>Descripcion</h4>
                        <i class="fa-solid fa-chevron-down"></i>
                    </div>
                    <div class="descripcion-producto-informacion">
                        <p>
                            <%= x.getDescripcion()%>
                        </p>
                    </div>
                </div>
                </div>
        </main>
        <footer>     
        <p class="footer_derecho">
            <a href="https://www.instagram.com" target="_blank"> <img class="icono" src="imagenes/RedesSociales/instagram.jpeg" width="25" height="25"/></a>
            <a href="https://www.youtube.com" target="_blank"> <img class="icono" src="imagenes/RedesSociales/youtube.jpeg" width="25" height="25"/></a>
            <a href="https://www.facebook.com" target="_blank"> <img class="icono" src="imagenes/RedesSociales/facebook.jpeg" width="25" height="25""/></a>
        <div class="grupo-2">
            <small>&copy; 2024 <b>BasiCs</b> <a href="https://policies.google.com/technologies/cookies?hl=es">Política de Privacidad y Cookies</a></small>
        </div> 
    </p>
</footer>
</body>
</html>