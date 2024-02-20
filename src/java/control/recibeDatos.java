package control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelo.Producto;
import static modelo.LeeProducto.*;

@WebServlet(name = "recibeDatos", urlPatterns = {"/recibeDatos"})

public class recibeDatos extends HttpServlet {

 
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try (PrintWriter out = response.getWriter()) {
            //------------Sesion----------------------
            HttpSession session = request.getSession();
ArrayList<guardarProductos> listaProductos = null;

if (session != null && session.getAttribute("listaProductos") != null) {
    listaProductos = (ArrayList<guardarProductos>) session.getAttribute("listaProductos");
} else {
    listaProductos = new ArrayList<>();
}
            session.setMaxInactiveInterval(120);
            //------------Sesion----------------------
            
            String categoria = request.getParameter("enviar");
            String origen = request.getParameter("origen");
            String articulo = request.getParameter("producto");
           
            
            ArrayList<Producto> productos = new ArrayList<>();

//CREACION DE LAS 4 CAMISETAS PARA EL HOMBRE
            Producto camiseta01M = new Producto("q","Camiseta NFL negra", 15.00, "imagenes/Hombre/CamisetasM/camiseta01M", "Camiseta negra NFL manga corta boxy fit print", "camisetaM");
            productos.add(camiseta01M);
            Producto camiseta02M = new Producto("w","Camiseta manga corta azul", 20.00, "imagenes/Hombre/CamisetasM/camiseta02M", "Camiseta azul boxy fit efecto lavado print", "camisetaM");
            productos.add(camiseta02M);
            Producto camiseta03M = new Producto("e","Camiseta manga corta blanca", 15.00, "imagenes/Hombre/CamisetasM/camiseta03M", "Camiseta blanca lisa cropped felpa ", "camisetaM");
            productos.add(camiseta03M);
            Producto camiseta04M = new Producto("r","Camiseta VOLKSWAGEN GOLF", 20.00, "imagenes/Hombre/CamisetasM/camiseta04M", "Camiseta blanca manga corta boxy fit efecto lavado", "camisetaM");
            productos.add(camiseta04M);

            //CREACION DE LAS 4 CAMISETAS PARA LA MUJER
            Producto camiseta01F = new Producto("t","Camiseta blanca Gossip Girl ", 15.00, "imagenes/Mujer/CamisetasF/camiseta01F", "Camiseta blanca Gossip Girl manga corta print", "camisetaF");
            productos.add(camiseta01F);
            Producto camiseta02F = new Producto("y","Camiseta Trending Now negra y rosa", 20.00, "imagenes/Mujer/CamisetasF/camiseta02F", "Camiseta negra y rosa manga corta oversize print", "camisetaF");
            productos.add(camiseta02F);
            Producto camiseta03F = new Producto("u","Camiseta negra corte manga larga", 15.00, "imagenes/Mujer/CamisetasF/camiseta03F", "Camiseta negra con corte en el hombro bajo asimétrico gofrado", "camisetaF");
            productos.add(camiseta03F);
            Producto camiseta04F = new Producto("i","Camiseta blanca corte manga larga", 20.00, "imagenes/Mujer/CamisetasF/camiseta04F", "Camiseta blanca con corte en el hombro  bajo asimétrico gofrado", "camisetaF");
            productos.add(camiseta04F);

            //CREACION DE LAS 4 SUDADERAS PARA EL HOMBRE
            Producto sudadera01M = new Producto("o","Sudadera gris capucha", 40.00, "imagenes/Hombre/SudaderasM/sudadera01M", "Sudadera gris lisa boxy fit efecto lavado", "sudaderaM");
            productos.add(sudadera01M);
            Producto sudadera02M = new Producto("p","Sudadera rosa capucha", 42.50, "imagenes/Hombre/SudaderasM/sudadera02M", "Sudadera rosa lisa boxy fit efecto lavado", "sudaderaM");
            productos.add(sudadera02M);
            Producto sudadera03M = new Producto("a","Sudadera negra calavera", 54.50, "imagenes/Hombre/SudaderasM/sudadera03M", "Sudadera negra con calavera Vincent van Gogh  capucha print ", "sudaderaM");
            productos.add(sudadera03M);
            Producto sudadera04M = new Producto("s","Sudadera blanca con capucha", 32.00, "imagenes/Hombre/SudaderasM/sudadera04M", "Sudadera blanca coche oversize print", "sudaderaM");
            productos.add(sudadera04M);

            //CREACION DE LAS 4 SUDADERAS PARA LA MUJER
            Producto sudadera01F = new Producto("d","Sudadera negra con capucha", 40.00, "imagenes/Mujer/SudaderasF/sudadera01F", "Sudadera negra con fresas capucha print", "sudaderaF");
            productos.add(sudadera01F);
            Producto sudadera02F = new Producto("f","Sudadera blanca Tendring", 42.50, "imagenes/Mujer/SudaderasF/sudadera02F", "Sudadera blanca Trending Now capucha print", "sudaderaF");
            productos.add(sudadera02F);
            Producto sudadera03F = new Producto("g","Sudadera marron oso", 54.50, "imagenes/Mujer/SudaderasF/sudadera03F", "Sudadera blanca con ositos capucha oversize print", "sudaderaF");
            productos.add(sudadera03F);
            Producto sudadera04F = new Producto("h","Sudadera gris cezanne", 32.00, "imagenes/Mujer/SudaderasF/sudadera04F", "Sudadera gris  Paul Cézanne capucha efecto lavado print", "sudaderaF");
            productos.add(sudadera04F);

            //CREACION DE LOS 4 PANTALONES PARA EL HOMBRE
            Producto pantalon01M = new Producto("j","Pantalon blanco Jogger", 35.50, "imagenes/Hombre/PantalonesM/pantalones01M", "Pantalon blanco con cordon negro jogger cargo slim", "pantalonM");
            productos.add(pantalon01M);
            Producto pantalon02M = new Producto("k","Pantalon gris skater", 28.50, "imagenes/Hombre/PantalonesM/pantalones02M", "Pantalon gris skater cargo efecto lavado", "pantalonM");
            productos.add(pantalon02M);
            Producto pantalon03M = new Producto("l","Pantalon negro jogger", 32.50, "imagenes/Hombre/PantalonesM/pantalones03M", "Pantalon negro liso wide tailoring", "pantalonM");
            productos.add(pantalon03M);
            Producto pantalon04M = new Producto("z","Pantalon negro con gris baggy", 40.00, "imagenes/Hombre/PantalonesM/pantalones04M", "Pantalon negro con detalle gris pana detalle felpa denim", "pantalonM");
            productos.add(pantalon04M);

            //CREACION DE LOS 4 PANTALONES PARA LA MUJER
            Producto pantalon01F = new Producto("x","Pantalon blanco", 35.50, "imagenes/Mujer/PantalonesF/pantalones01F", "Pantalon blanco liso con corte a pico flare tailoring", "pantalonF");
            productos.add(pantalon01F);
            Producto pantalon02F = new Producto("c","Pantalon blanco  straight", 28.50, "imagenes/Mujer/PantalonesF/pantalones02F", "Pantalon blanclo liso straight con lino cintura goma", "pantalonF");
            productos.add(pantalon02F);
            Producto pantalon03F = new Producto("v","Pantalon rojo straight", 32.50, "imagenes/Mujer/PantalonesF/pantalones03F", "Pantalon rojo skinny vaquero straight con algodón aberturas", "pantalonF");
            productos.add(pantalon03F);
            Producto pantalon04F = new Producto("b","Pantalon negro skinny", 40.00, "imagenes/Mujer/PantalonesF/pantalones04F", "Pantalon negro skinny coating", "pantalonF");
            productos.add(pantalon04F);

            ArrayList<Producto> productor = new ArrayList<>();
            ArrayList<guardarProductos> listaCesta = new ArrayList<>();

            switch (origen) {
                case "categorias":
                    for (Producto x : productos) {
                        if (categoria.equals(x.getCategoria())) {
                            productor.add(x);
                            
                        } request.setAttribute("productos", productor);
                        
                    }   request.getRequestDispatcher("/categorias.jsp").forward(request, response);
                    break;
                    
                    
                    
                case "articulo":
                    for (Producto u : productos) {
                        
                        if (articulo.equals(u.getCodigo())) {
                            request.setAttribute("product", u);
                            break; 
                        }  
                    }          
                    request.getRequestDispatcher("/Articulo.jsp").forward(request, response);
                    break;
                    
                  case "Agregar a la cesta":
                   String productoCesta = request.getParameter("seleccionado");
                   int cantidad = Integer.parseInt(request.getParameter("cantidad"));
                   String sesion= session.toString();
                    for (Producto u : productos) {
                        if (productoCesta.equals(u.getCodigo())) {
                            listaProductos.add(new guardarProductos(sesion, u , cantidad));
                            break; 
                        }                                          

                    }System.out.println(listaCesta);          
                    session.setAttribute("listaProductos", listaProductos);

                    request.getRequestDispatcher("/index.jsp").forward(request, response);
                    break;   
                    
              
                case "BasiCs":
                    request.getRequestDispatcher("/index.jsp").forward(request, response);
                    break;
                    
                default:request.getRequestDispatcher("/index.jsp").forward(request, response);
                    break;
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
}
