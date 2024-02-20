<%@page import="java.util.ArrayList, control.recibeDatos, modelo.Producto" %>
<%@page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Categorias | BasiCs</title>
    <link rel="stylesheet" href="style.css">
    <link rel="icon" href="imagenes/Logos/LogoPNG.png" type="image/x-icon"/>
    
    <style>
        <% 
            ArrayList<Producto> productos = (ArrayList<Producto>) request.getAttribute("productos");

            for (Producto producto : productos) {
        %>
          .producto-container { /* Estilo para categorias de modo que pueda tener colocado foto y texto */
            display: flex;
            flex-direction: column;
            align-items: center;
            text-align: center;
            margin-bottom: 20px;
        }
        
        #<%=producto.getCodigo()%> {
            background-size: cover;
            color: transparent;
            background-position: 50%;
            background-image: url(<%= producto.getRutaimg()%>.jpg);
            background-size: 130%;
            width: 400px;
            height: 350px; /* Ajusta la altura según tus necesidades */
            transition: transform 0.3s; /* Agregamos transición para un efecto suave */
        }

        #<%=producto.getCodigo()%>:hover {
            transform: scale(1.1); /* Ajusta la escala según tus preferencias */
        }

        .nombreProducto_<%=producto.getCodigo()%> {
            font-size: 24px; /* Ajusta el tamaño según tus necesidades */
            font-weight: bold;
            margin-top: -10px;
            text-decoration: none; /* Quitamos el subrayado predeterminado */
            transition: text-decoration 0.3s; /* Agregamos transición para un efecto suave */
        }

        .precioProducto_<%=producto.getCodigo()%> {
            font-size: 18px; /* Ajusta el tamaño según tus necesidades */
            margin-top: 5px;
        }
        <%}%>
    </style>
</head>
<body id="arriba">
    <marquee><b> WORLDWIDE SHIPPING | &copy; 2024 BasiCs. All rights reserved </b></marquee>
        <header class="arriba">    
            <hgroup class="medir">
                <form action="recibeDatos"> <input type="submit"  class="logo" name="origen" value="BasiCs"/> </form>
                <input type="search" name="search" class="busqueda" placeholder="Buscar Productos...">             
                <section class="cesta">   <!-- Desde la cesta redirigimos usando el value Finalizar compra para comunicar con recibeDatos , y que este nos lleve a FinCompra.jsp para mostrar todos los productos-->
                    <form action="MuestraProductos">
                        <input value="Final" type="submit" class="cesta" name="origen"/>
                    </form>
                </section>
            </hgroup>
        </header>
     <form action="recibeDatos" method="post">
                 <input type="hidden" name="origen" value="articulo"/>

    <%
        for (Producto producto : productos) {
    %>
    <div class="cuerpo producto-container">
        <input type="submit" name="producto" value="<%= producto.getCodigo()%>" class="content" id="<%= producto.getCodigo()%>" "></input>      
        <p class="nombreProducto_<%=producto.getCodigo()%>"><%= producto.getNombre()%></p>
        <p class="precioProducto_<%=producto.getCodigo()%>">Precio: <%= producto.getPrecio()%> euros</p>
    </div>
    <%
        }
    %>
    
<button class="subirArriba botonCSS"><a href="#arriba"> Volver arriba </a></button>
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
