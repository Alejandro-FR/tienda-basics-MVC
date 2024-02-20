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
import modelo.LeeProducto.*;


@WebServlet(name = "MuestraProductos", urlPatterns = {"/MuestraProductos"})
public class MuestraProductos extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
           response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            

            HttpSession session = request.getSession();
            ArrayList<guardarProductos> listaProductos = (ArrayList<guardarProductos>) session.getAttribute("listaProductos");

            String origen = request.getParameter("origen");

               switch (origen) {
                   case "Final":
                       request.getRequestDispatcher("/FinCompra.jsp").forward(request, response);
                       break;
                   case "Volver":
                       listaProductos.clear();
                       session.setAttribute("listaProductos", listaProductos);
                       request.getRequestDispatcher("/index.jsp").forward(request, response);
                       break;
                   case "eliminar":
                       String y = request.getParameter("delete");
                       for (guardarProductos u : listaProductos) {
                           if (y.equals(u.getProducto().getCodigo())) {
                               listaProductos.remove(u);
                               break; 
                           }
                           
                       }  session.setAttribute("listaProductos", listaProductos);
                       request.getRequestDispatcher("/FinCompra.jsp").forward(request, response);
                       break;
                   default:
                       request.getRequestDispatcher("/index.jsp").forward(request, response);
                       break;
               }
        } 
                    
        
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
}
