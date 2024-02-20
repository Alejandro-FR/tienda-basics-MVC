<%@page import="modelo.LeeProducto.guardarProductos,control.recibeDatos,modelo.Producto,java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cesta | BasiCs</title>
        <link rel="stylesheet" href="style.css">
        <link rel="icon" href="imagenes/Logos/LogoPNG.png" type="image/x-icon"/>

        <script>                
            function comprarBotonClick(){
                alert("Pedido completado correctamente");
            }
        </script>
    </head>

    <body >
        <header class="arriba">    
            <hgroup class="medir">
                <form method="post" action="MuestraProductos"> <input type="submit"  class="logo" name="origen" value="BasiCs"/> </form>
                <input type="search" name="search" class="busqueda" placeholder="Buscar Productos...">             
                <section class="cesta">   
                    <form action="MuestraProductos">
                        <input value="Final" type="submit" class="cesta" name="origen"/>
                    </form>
                </section>
            </hgroup>
        </header>        
        <% HttpSession refsesion = request.getSession();%>
        <% //ArrayList<Producto>listaFinal = new ArrayList();
            ArrayList<guardarProductos> listaFinal = (ArrayList<guardarProductos>) refsesion.getAttribute("listaProductos");
           if(listaFinal != null && !listaFinal.isEmpty()){
        %>
        
        
    <center>
        <br/><br/>

        <table cellspacing="35">
            <tr><th></th><th></th><th>Producto</th><th>Unidades</th><th>Precio</th></tr>
                    <%  double total = 0;
                        String sesion="";
                        for (guardarProductos x : listaFinal) {
                            System.out.println(listaFinal);
                            total += x.getProducto().getPrecio() * x.getUnidades();
                            sesion = x.getSesionID();
                    %>  
            <tr>
                <td><form method="post" action="MuestraProductos"><input type="hidden" name="origen" value="eliminar" /> <input type="submit" name="delete" value="<%= x.getProducto().getCodigo()%>" class="borrar"/></form></td><td><img src="<%= x.getProducto().getRutaimg()%>.jpg" class="img-final"></td><td><%=x.getProducto().getNombre()%></td><td><%=x.getUnidades()%></td><td><%=x.getProducto().getPrecio() * x.getUnidades()%>€</td>
            </tr>
            <%}%>

        </table>
        <br></br>
        <hr width="50%"></hr>
        <p class="subtotal"><b>Subtotal</b></p>
        <p class="total"><b><%=total%> EUR</b></p>
        <hr width="50%"></hr></br>
        <p>Tax included. Shipping calculated at checkout. </p><br/>
        <form method="post" action="MuestraProductos">
            <input type="hidden" name="origen" value="Volver" />
            <input type="submit"  value="PASAR POR CAJA" class="boton-final" onclick="comprarBotonClick()"/>
            <input type="submit"  value="CANCELAR COMPRA" class="boton-final"/>

        </form><br/>
        <img class="metodoPago" src="imagenes/pago.png"><br/>
        <p class="sesion">ID SESION: <%=sesion%></p>
    </center>
    <%}else{%> <h1 class="cestaVacia">La cesta está vacia</h1><img src="imagenes/Logos/LogoPNG.png" class="imgVacia"/><form method="post" action="MuestraProductos"> <input type="submit"  class="boton-final imgVacia" name="origen" value="Empezar a comprar"/> </form>
<%}%>
       


    <footer>     
        <p class="footer_final">
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