<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Basicos para ti | Inicio</title>
        <link rel="stylesheet" href="style.css">
        <link rel="icon" href="imagenes/Logos/LogoPNG.png" type="image/x-icon"/>

    </head>
    <body>
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


        <section class="cuerpo">

            <span><h1 class="title">Categorias Hombre</h1></span>
            <form action="recibeDatos" method="post">
                <input type="hidden" name="origen" value="categorias"/>
                <input type="submit" name="enviar" value="camisetaM" class="grande" id="camisetaPortadaMale"></input>
                <input type="submit" name="enviar" value="sudaderaM" class="grande margen" id="sudaderaPortadaMale"></input>
                <input type="submit" name="enviar" value="pantalonM"  class="grande" id="pantalonPortadaMale"></input>
            </form>
        </section>

        <section class="cuerpo">

            <span><h1 class="title">Categorias Mujer</h1></span>
            <form action="recibeDatos" method="post">
                <input type="hidden" name="origen" value="categorias"/>
                <input type="submit" name="enviar" value="camisetaF" class="grande" id="camisetaPortadaFemale"></input>
                <input type="submit" name="enviar" value="sudaderaF" class="grande margen" id="sudaderaPortadaFemale"></input>
                <input type="submit" name="enviar" value="pantalonF"  class="grande" id="pantalonPortadaFemale"></input>
            </form>


        </section>
    </section>

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

</body>
</html>
